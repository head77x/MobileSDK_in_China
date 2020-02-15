package billingSDK.billingDemo;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import com.estore.lsms.tools.ApiParameter;

import com.demo.smspay.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import billingSDK.billingDemo.SmsPayFactory.SmsExitListener;
import billingSDK.billingDemo.SmsPayFactory.SmsPayListener;

public class SmsPayTelecom_CTE extends SmsPayBase
{
	private static Activity _context;
	
	private String[] _props;
	private String[] _moneys;
	private String[] _requestIDs;
	private String _channelID;
	
	private SmsPayTelecom_CTE() {
		
		_payCodes = SmsPayCodes.getInstance(_context).getTELECOM_CTE_PayCodes();
		_props = new String[] { "复活1", "复活2", "复活3", "复活4", "复活5" };
		_moneys = new String[] { "10", "5", "2", "2", "0.1" };
		_requestIDs = new String[] { "9999999999999999", "9999999999999999", "9999999999999999", "9999999999999999", "9999999999999999" };
		
		try {
			InputStreamReader inputReader = new InputStreamReader(_context.getResources().getAssets().open("ctestore/telCTEchannel.txt") );
			BufferedReader bufReader = new BufferedReader(inputReader);
			String line="";
			String result="";
			while((line = bufReader.readLine()) != null)
				result += line;
			_channelID = result;
			Log.e("=====result========", _channelID);
		} catch (Exception e) {
           e.printStackTrace();
        }
	}
	
	private static SmsPayTelecom_CTE _singletonSmsPayTelecom;
	public static SmsPayTelecom_CTE getInstance() {
		return _singletonSmsPayTelecom;
	}
	
	public static SmsPayTelecom_CTE initSingleton(Activity context) {
		_context = context;
		if (_singletonSmsPayTelecom == null) {
			_singletonSmsPayTelecom = new SmsPayTelecom_CTE();
		}
		return _singletonSmsPayTelecom;
	}
	
	private String getProps(SmsPayItems smsPayItem) {
		return _props[smsPayItem.value()];
	}
	
	private String getMoney(SmsPayItems smsPayItem) {
		return _moneys[smsPayItem.value()];
	}
	
	private String getRequestID(SmsPayItems smsPayItem) {
		return _requestIDs[smsPayItem.value()];
	}

	@Override
	public void pay(Context context, SmsPayItems smsPayItem, SmsPayListener listener, boolean isRepeated) {
		
		Intent intent = new Intent();
		intent.setClass(context, com.estore.ui.CTEStoreSDKActivity.class);
		
		Bundle bundle = new Bundle();
		bundle.putString(ApiParameter.APPCHARGEID, getPayCode(smsPayItem));
		bundle.putString(ApiParameter.CHANNELID, _channelID);
		bundle.putBoolean(ApiParameter.SCREENHORIZONTAL, true);
		bundle.putString(ApiParameter.CHARGENAME, getProps(smsPayItem));
		bundle.putInt(ApiParameter.PRICETYPE, (isRepeated ? 0 : 1));
		bundle.putString(ApiParameter.PRICE, getMoney(smsPayItem));
		bundle.putString(ApiParameter.REQUESTID, getRequestID(smsPayItem));
		intent.putExtras(bundle);
		((Activity) context).startActivityForResult(intent, 0);
	}

	@Override
	public void exitGame(Context context, SmsExitListener listener) {
		listener.forceExitingGame();
	}

	@Override
	public void viewMoreGames(Context context) {
		// Do nothing...
	}

	@Override
	public boolean isMusicEnabled() {
		return true;
	}
}
