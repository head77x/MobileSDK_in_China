package billingSDK.billingDemo;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import billingSDK.billingDemo.SmsPayFactory.SmsPurchaseListener;

import com.estore.lsms.tools.ApiParameter;

/*
 * Activity for Telecom_CTE
 */
public class Telecom_CTE_Activity extends Activity {
	
	public static SmsPayItems _smsPayItem;
	public static boolean _isRepeated;
	public static SmsPayBase _smsPayer;
	public static SmsPayFactory _factory;
	public static SmsPurchaseListener _listener;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		_smsPayer.pay(this, _smsPayItem, null, _isRepeated);
	}

	/**
	 * Telecom Listener
	 */
	@Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Bundle bdl = data.getExtras();
        int payResultCode = bdl.getInt(ApiParameter.RESULTCODE);

        if (ApiParameter.CTESTORE_SENDSUCCESS == payResultCode) {
        	// 支付短信发送成功
        	Log.e("======电信天翼空间 SDK=======", "支付短信发送成功");
            _listener.onPurchaseSucceed();
            finish();
        } else if (ApiParameter.CTESTORE_SENDFAILED == payResultCode) {
        	// 短信发送失败
        	if (_listener != null) {
				_listener.onPurchaseFailed("短信发送失败");
			}
        	Log.e("======电信天翼空间 SDK=======", "短信发送失败");
        	finish();
        } else if (ApiParameter.CTESTORE_USERCANCEL == payResultCode) {
        	// 用户主动取消
        	if (_listener != null) {
				_listener.onPurchaseCanceld();
			}
        	Log.e("======电信天翼空间 SDK=======", "用户主动取消");
        	finish();
        } else {
        	// 初始化失败
        	if (_listener != null) {
				_listener.onPurchaseFailed("初始化失败");
			}
        	Log.e("======电信天翼空间 SDK=======", "初始化失败");
        	finish();
        }
    }
}