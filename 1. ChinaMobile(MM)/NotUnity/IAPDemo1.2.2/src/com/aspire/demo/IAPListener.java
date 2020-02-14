package com.aspire.demo;

import java.util.HashMap;

import mm.sms.purchasesdk.OnSMSPurchaseListener;
import mm.sms.purchasesdk.PurchaseCode;
import mm.sms.purchasesdk.SMSPurchase;
import android.content.Context;
import android.os.Message;
import android.util.Log;

public class IAPListener implements OnSMSPurchaseListener {
	private final String TAG = "IAPListener";
	private Demo context;
	private IAPHandler iapHandler;

	public IAPListener(Context context, IAPHandler iapHandler) {
		this.context = (Demo) context;
		this.iapHandler = iapHandler;
	}

	@Override
	public void onInitFinish(int code) {
		Log.d(TAG, "Init finish, status code = " + code);
		Message message = iapHandler.obtainMessage(IAPHandler.INIT_FINISH);
		String result = "초기화 결과 :" + SMSPurchase.getReason(code);
		message.obj = result;
		message.sendToTarget();
	}

	@Override
	public void onBillingFinish(int code, HashMap arg1) {
		Log.d(TAG, "billing finish, status code = " + code);
		String result = "구입:처리성공";
		Message message = iapHandler.obtainMessage(IAPHandler.BILL_FINISH);
		String paycode = null;
		String tradeID = null;
		
		if (code == PurchaseCode.ORDER_OK
				|| code == PurchaseCode.ORDER_OK_TIMEOUT) {
			if (arg1 != null) {
				paycode = (String) arg1.get(OnSMSPurchaseListener.PAYCODE);
				if (paycode != null && paycode.trim().length() != 0) {
					result = result + ",Paycode:" + paycode;
				}
				tradeID = (String) arg1.get(OnSMSPurchaseListener.TRADEID);
				if (tradeID != null && tradeID.trim().length() != 0) {
					result = result + ",tradeid:" + tradeID;
				}
			}
		} else {
			result = "실패이유:" + SMSPurchase.getReason(code);
		}
		context.dismissProgressDialog();
		System.out.println(result);

	}

}
