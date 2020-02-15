package billingSDK.billingDemo;

import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

import android.R.bool;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import billingSDK.billingDemo.SmsPayFactory.SmsExitListener;
import billingSDK.billingDemo.SmsPayFactory.SmsPayListener;

public class SmsPayUnicom extends SmsPayBase
{
	private static Activity _context;
	
	private String _appid;
	private String _cpId;
	private String _cpCode;
	private String _key;
	private String _companyName;
	private String _telephone;
	private String _appName;
	private String[] _3RDPayCodes;
	private String[] _props;
	private String[] _moneys;
	
	private SmsPayUnicom(UnipayPayResultListener listener) {
		
		_payCodes = SmsPayCodes.getInstance(_context).getUNICOM_PayCodes();
		_3RDPayCodes = new String[] { "905885744920130605153305684600002", "905885744920130605153305684600002", "905885744920130605153305684600002", "905885744920130605153305684600002" };
		_props = new String[] { "复活1", "复活2", "复活3", "复活4" };
		_moneys = new String[] { "10", "5", "2", "2" };
		_appid = "90234616120120921431100";
		_cpCode = "902346161";
		_cpId = "86000504";
		_companyName = "XXX公司";
		_telephone = "13812312312";
		_appName = "游戏名称";
		_key = "f82a944b799eac194ea3";
		
		try {
			Utils.getInstances().init(_context, _appid, _cpCode, _cpId, _companyName, _telephone, _appName, "uid", listener);
		} catch (Exception e) {
		}
	}
	
	private static SmsPayUnicom _singletonSmsPayUnicom;
	public static SmsPayUnicom getInstance() {
		return _singletonSmsPayUnicom;
	}
	
	public static SmsPayUnicom initSingleton(Activity context, UnipayPayResultListener listener) {
		_context = context;
		if (_singletonSmsPayUnicom == null) {
			_singletonSmsPayUnicom = new SmsPayUnicom(listener);
		}
		return _singletonSmsPayUnicom;
	}
	
	@Override
	public void pay(Context context, SmsPayItems smsPayItem, SmsPayListener listener, boolean isRepeated) {
		Utils.getInstances().setBaseInfo(context, true, true, "http://uniview.wostore.cn/log-app/test");
		Utils.getInstances().pay(context, getPayCode(smsPayItem), get3RDPayCode(smsPayItem), this.getProps(smsPayItem), this.getMoney(smsPayItem), "123456789012345678901233", listener);
	}
	
	private String getProps(SmsPayItems smsPayItem) {
		return _props[smsPayItem.value()];
	}
	
	private String getMoney(SmsPayItems smsPayItem) {
		return _moneys[smsPayItem.value()];
	}
	
	private String get3RDPayCode(SmsPayItems smsPayItem) {
		return _3RDPayCodes[smsPayItem.value()];
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