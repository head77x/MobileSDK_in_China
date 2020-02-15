package billingSDK.billingDemo;

import java.util.HashMap;

import mm.sms.purchasesdk.OnSMSPurchaseListener;
import mm.sms.purchasesdk.PurchaseCode;
import mm.sms.purchasesdk.SMSPurchase;

import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

import cn.cmgame.billing.api.BillingResult;
import cn.cmgame.billing.api.GameInterface.GameExitCallback;
import cn.cmgame.billing.api.GameInterface.IPayCallback;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;

public class SmsPayFactory
{
	public interface SmsPurchaseListener {
		public void onPurchaseSucceed();
		public void onPurchaseCanceld();
		public void onPurchaseFailed(String msg);
		public void onPurchaseInfo(String msg);
	};
	
	public interface SmsExitGameListener {
		public void onExitGameCancelExit();
		public void onExitGameConfirmExit();
	};
	
	public enum SmsMobileOperator {
		kMOBILE_OPERATOR_UNKNOWN,
		kMOBILE_OPERATOR_CMCC_GC,
		kMOBILE_OPERATOR_CMCC_MM,
		kMOBILE_OPERATOR_UNICOM,
		kMOBILE_OPERATOR_TELECOM_CTE,
		kMOBILE_OPERATOR_OTHER,
	};
	
	private static boolean _bIniting = false;
	private static boolean _bInited = false;
	private static Activity _context;
	
	private SmsPayBase _smsPayer;
	
	private static SmsPayFactory _singleton;
	
	private SmsPayFactory() {

		// 判断SIM卡所属运营商
		switch (getMobileOperator()) {
		case kMOBILE_OPERATOR_OTHER:
		case kMOBILE_OPERATOR_UNKNOWN:
			_smsPayer = null;
			break;
		case kMOBILE_OPERATOR_CMCC_MM:
			_smsPayer = SmsPayCMCC_MM.initSingleton(_context, new SmsPayListener(this, null));
			break;
		case kMOBILE_OPERATOR_CMCC_GC:
			_smsPayer = SmsPayCMCC_GC.initSingleton(_context, new SmsPayListener(this, null));
			_bInited = true;
			break;
		case kMOBILE_OPERATOR_UNICOM:
			_smsPayer = SmsPayUnicom.initSingleton(_context, new SmsPayListener(this, null));
			_bInited = true;
			break;
		case kMOBILE_OPERATOR_TELECOM_CTE:
			_smsPayer = SmsPayTelecom_CTE.initSingleton(_context);
			_bInited = true;
			break;
		default:
			_smsPayer = null;
			break;
		}
	}
	
	public static void init(Activity context) {
		if (!_bIniting && !_bInited) {
			_bIniting = true;
			_context = context;
			getInstance();
			_bIniting = false;
		}
	}
	
	public Activity getContext() {
		return _context;
	}
	
	public synchronized static SmsPayFactory getInstance() {
		if (_singleton == null) {
		_singleton = new SmsPayFactory();
		}
		return _singleton;
	}
	
	protected void initFinished() {
		_bInited = true;
	}
	
	private final static int opMISMATCHES	= 0x00000000;
	private final static int opCMCC_GC 		= 0x00000001;
	private final static int opUNICOM 		= 0x00000010;
	private final static int opTELECOM 		= 0x00000100;
	private final static int opCMCC_MM 		= 0x00001000;
	static public SmsMobileOperator getMobileOperator() {
        TelephonyManager telManager = (TelephonyManager)_context.getSystemService(Context.TELEPHONY_SERVICE); 
        String operator = telManager.getSimOperator();
        
        // 读取配置文件中允许使用的运营商SDK
        Bundle metaData = null;
		try {
			metaData = _context.getPackageManager().getApplicationInfo(_context.getPackageName(), PackageManager.GET_META_DATA).metaData;
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
		int nSOValue = Integer.valueOf(metaData.getString("SOValue"));
		Log.e("SOValue: ", nSOValue + "");
		
		/* 若指定了某SDK，则强制使用该SDK（与手机SIM卡运营商无关） */
		if (nSOValue == opCMCC_GC) {
			return SmsMobileOperator.kMOBILE_OPERATOR_CMCC_GC;
		} else if (nSOValue == opUNICOM) {
			return SmsMobileOperator.kMOBILE_OPERATOR_UNICOM;
		} else if (nSOValue == opTELECOM) {
			return SmsMobileOperator.kMOBILE_OPERATOR_TELECOM_CTE;
		} else if (nSOValue == opCMCC_MM) {
			return SmsMobileOperator.kMOBILE_OPERATOR_CMCC_MM;
		}
		
		/* 若指定了多个SDK，则根据检测到SIM卡所属运营商来使用SDK */
        if (operator != null) {
            if ((operator.equals("46000") || operator.equals("46002"))) {
                // 中国移动
            	if ((nSOValue & opCMCC_MM) != opMISMATCHES) {
            		return SmsMobileOperator.kMOBILE_OPERATOR_CMCC_MM;		// 移动MM
				} else if ((nSOValue & opCMCC_GC) != opMISMATCHES) {
					return SmsMobileOperator.kMOBILE_OPERATOR_CMCC_GC;		// 移动基地
				}
            } else if (operator.equals("46001") && (nSOValue & opUNICOM) != opMISMATCHES) {
            	// 中国联通
            	return SmsMobileOperator.kMOBILE_OPERATOR_UNICOM;
            } else if (operator.equals("46003") && (nSOValue & opTELECOM) != opMISMATCHES) {
            	// 中国电信
            	return SmsMobileOperator.kMOBILE_OPERATOR_TELECOM_CTE;
            }
        }
		return SmsMobileOperator.kMOBILE_OPERATOR_CMCC_GC;
    }
	
	// 支付
	public void pay(Context context, SmsPayItems smsPayItem, SmsPayFactory.SmsPurchaseListener listener, boolean isRepeated) {
		if (_smsPayer == null) {
			Toast.makeText(_context, "检测不到SIM卡，请插入SIM卡并重启游戏后再试！", Toast.LENGTH_LONG).show();
			listener.onPurchaseFailed("未检测到SIM卡");
		}
		if (!_bInited) {
			Toast.makeText(_context, "支付模块尚未准备好，请稍后再试", Toast.LENGTH_LONG).show();
		}
		if (_smsPayer != null && _bInited) {
			if (getMobileOperator() != SmsMobileOperator.kMOBILE_OPERATOR_TELECOM_CTE) {
				_smsPayer.pay(context, smsPayItem, new SmsPayListener(this, listener), isRepeated);
			} else {
				Intent intent = new Intent(context, Telecom_CTE_Activity.class);
				Telecom_CTE_Activity._smsPayItem = smsPayItem;
				Telecom_CTE_Activity._isRepeated = isRepeated;
				Telecom_CTE_Activity._smsPayer = _smsPayer;
				Telecom_CTE_Activity._factory = this;
				Telecom_CTE_Activity._listener = listener;
				context.startActivity(intent);
			}
		}
	}
	
	// 退出游戏（暂时针对移动游戏基地）
	public void exitGame(Context context, SmsExitGameListener listener) {
		if (_smsPayer != null) {
			_smsPayer.exitGame(context, new SmsExitListener(listener));
		} else {
			listener.onExitGameConfirmExit();
		}
	}
	
	// 查看更多游戏（暂时针对移动游戏基地）
	public void viewMoreGames(Context context) {
		if (_smsPayer != null) {
			_smsPayer.viewMoreGames(context);
		}
	}
	
	// 是否开启音效
	public boolean isMusicEnabled() {
		if (_smsPayer == null) {
			return true;
		}
		return _smsPayer.isMusicEnabled();
	}
	
	public class SmsPayListener implements 	IPayCallback, 				/* CMCC_GC callback */
											UnipayPayResultListener,	/* Unicom callback */
											OnSMSPurchaseListener		/* CMCC_MM callback */
											{

		private SmsPayFactory _factory;
		private SmsPurchaseListener _listener;
		
		SmsPayListener(SmsPayFactory factory, SmsPurchaseListener listener) {
			_factory = factory;
			_listener= listener;
		}

		public void setSmsPurchaseListener(SmsPurchaseListener listener) {
			_listener = listener;
		}

		/**
		* CMCC_GC Listener
		*/
		@Override
		public void onResult(int resultCode, String billingIndex, Object arg) {
			String result = "";
	        switch (resultCode) {
	          case BillingResult.SUCCESS:
	            result = "购买道具：[" + billingIndex + "] 成功！";
	            _listener.onPurchaseSucceed();
	            break;
	          case BillingResult.FAILED:
	            result = "购买道具：[" + billingIndex + "] 失败！";
	            _listener.onPurchaseFailed(result);
	            break;
	          default:
	            result = "购买道具：[" + billingIndex + "] 取消！";
	            _listener.onPurchaseCanceld();
	            break;
	        }
	        Log.e("======移动GC SDK=======", result);
		}
		
		/**
		* CMCC_MM Listener
		*/
		@Override
		public void onInitFinish(int code) {
			Log.e("======移动MM SDK=======", "Init finish, status code = " + code);
			Log.e("======移动MM SDK=======", "初始化结果：" + SMSPurchase.getReason(code));
			_factory.initFinished();
		}
		@Override
		public void onBillingFinish(int code, HashMap arg1) {
			String result = "订购结果:订购成功";
			// 商品信息
			String paycode = null;
			// 商品的交易 ID,用户可以根据这个交易ID,查询商品是否已经交易
			String tradeID = null;
			if (code == PurchaseCode.ORDER_OK) {
				// || code == PurchaseCode.ORDER_OK_TIMEOUT) {
			// 商品购买成功或者已经购买。 此时会返回商品的paycode,tradeID
				if (arg1 != null) {
					paycode = (String)arg1.get(OnSMSPurchaseListener.PAYCODE); 
					if (paycode != null && paycode.trim().length() != 0) {
						result = result + ",Paycode:" + paycode;
					}
					tradeID = (String)arg1.get(OnSMSPurchaseListener.TRADEID); 
					if (tradeID != null && tradeID.trim().length() != 0) {
			            result = result + ",tradeid:" + tradeID;
					}
					if (_listener != null) {
						_listener.onPurchaseSucceed();
						_listener.onPurchaseInfo(result);
					}
				}
			} else { 
				// 表示订购失败
				result = "订购结果:" + SMSPurchase.getReason(code);
				if (_listener != null) {
					_listener.onPurchaseFailed(result);
				}
			}
			Log.e("======移动MM SDK=======", "pay end:  "+result);
		}

		/**
		 * SmsPayUnicom Listener
		 */
		@Override
		public void PayResult(String paycode, int flag, String desc) {
			// 如果是短信发送成功或者延时超过指定时间，SDK都返回成功，开发者可以在desc中可以看到成功结果的描述
			Toast.makeText(_factory.getContext(), desc, Toast.LENGTH_LONG).show();
			// 短代支付成功
			if(flag == Utils.SUCCESS_SMS ){
				if (_listener != null) {
					Log.e("======联通 SDK=======", "SUCCESS_SMS: " + desc);
					_listener.onPurchaseSucceed();
				}
			}
			
			// SDK使用第三方支付返回成功
			if(flag == Utils.SUCCESS_3RDPAY ) {
				if (_listener != null) {
					Log.e("======联通 SDK=======", "SUCCESS_3RDPAY: " + desc);
					_listener.onPurchaseSucceed();
				}
			}

			// 支付失败
			if (flag == Utils.FAILED) {
				if (_listener != null) {
					Log.e("======联通 SDK=======", "FAILED: " + desc);
					_listener.onPurchaseFailed(desc);
				}
			}
			
			// 支付取消
			if (flag == Utils.CANCEL) {
				if (_listener != null) {
					Log.e("======联通 SDK=======", "CANCEL: " + desc);
					_listener.onPurchaseCanceld();
				}
			}

			// 非联通第三方支付
			if (flag == Utils.OTHERPAY) {
				if (_listener != null) {
					Log.e("======联通 SDK=======", "OTHERPAY: " + desc);
				}
			}
		}
	}
	
	public class SmsExitListener implements GameExitCallback {
		
		private SmsExitGameListener _listener;
		SmsExitListener(SmsExitGameListener listener) {
			_listener= listener;
		}
		
		// 强制退出
		public void forceExitingGame() {
			_listener.onExitGameConfirmExit();
		}
		
		@Override
		public void onCancelExit() {
			_listener.onExitGameCancelExit();
			Log.e("======移动GC SDK=======", "取消退出游戏");
		}

		@Override
		public void onConfirmExit() {
			_listener.onExitGameConfirmExit();
			Log.e("======移动GC SDK=======", "确认退出游戏");
		}
	}
}

