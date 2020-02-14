package com.aspire.demo;

import mm.sms.purchasesdk.OnSMSPurchaseListener;
import mm.sms.purchasesdk.PurchaseSkin;
import mm.sms.purchasesdk.SMSPurchase;
import mm.sms.purchasesdk.fingerprint.IdentifyApp;
//import mm.sms.purchasesdk.utils.Global;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;

public class Demo extends Activity implements OnClickListener {
	/** Called when the activity is first created. */
	public static final int ITEM0 = Menu.FIRST;// 系统值
	public static final int ITEM1 = 2;
	public static final int ITEM2 = 3;
	public static final int ITEM3 = 4;
	private final String TAG = "Demo";

	public SMSPurchase purchase;
	private Context context;

	private Button billButton;
	private ProgressDialog mProgressDialog;

	private EditText mPaycodeView;
	private IAPListener mListener;

	private static final String APPID = "300002675623";	// 제공될 APPID
	private static final String APPKEY = "661C7C1CCFE032D9";	// 제공될 APPKEY
	private static final String LEASE_PAYCODE = "30000267562301";	// 신청된 결제 아이템 코드

	
	private static final int PRODUCT_NUM = 1;

	private String mPaycode;
	private int mProductNum;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);

		setTitle(getResources().getString(R.string.app_name) + "(APPID:"
				+ APPID + ")");
		mProgressDialog = new ProgressDialog(Demo.this);
		mProgressDialog.setIndeterminate(true);
		mProgressDialog.setMessage("대기중...");
		context = Demo.this;
		IAPHandler iapHandler = new IAPHandler(this);
		mPaycode = readPaycode();
		
		// 1. 결제 결과를 받을 Listener 생성
		mListener = new IAPListener(this, iapHandler);
		
		// 2. SDK 초기화
		purchase = SMSPurchase.getInstance();
		try 
		{
			purchase.setAppInfo(APPID, APPKEY);
		} 
		catch (Exception e1) 
		{
			e1.printStackTrace();
		}
		try 
		{
		 purchase.smsInit(context, mListener);
		} 
		catch (Exception e) 
		{
		 e.printStackTrace();
		}
		
		billButton = (Button) findViewById(R.id.billing);
		billButton.setOnClickListener(this);
	}

	@Override
	public void onClick(View v) 
	{
		int id = v.getId();
		switch (id) 
		{
		case R.id.billing:
			// 아이템 구매 테스트 
			order(this, mListener);
			break;
		default:
			break;
		}

	}

	// 아이템 구매 진행
	public void order(Context context, OnSMSPurchaseListener listener) 
	{
		try 
		{
			purchase.smsOrder(context, mPaycode, mListener, "Netmego");	// 마지막 인자는 셈플과 똑같이 사용할것
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}


	private void showProgressDialog() 
	{
		if (mProgressDialog == null) {
			mProgressDialog = new ProgressDialog(Demo.this);
			mProgressDialog.setIndeterminate(true);
			mProgressDialog.setMessage("Waiting.....");
		}
		if (!mProgressDialog.isShowing()) {
			mProgressDialog.show();
		}
	}

	public void dismissProgressDialog() {
		if (mProgressDialog != null && mProgressDialog.isShowing()) {
			mProgressDialog.dismiss();
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		super.onCreateOptionsMenu(menu);
		menu.add(0, ITEM0, 0, "구입 상품");
		menu.add(1, ITEM1, 1, "1번");
		menu.add(1, ITEM2, 2, "2번");
		menu.add(1, ITEM3, 3, "3번");
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {

		switch (item.getItemId()) {
		case ITEM0:
			LayoutInflater inflater = getLayoutInflater();
			View layout = inflater.inflate(R.layout.dialog,
					(ViewGroup) findViewById(R.id.dialog));
			mPaycodeView = (EditText) layout.findViewById(R.id.paycode);
			mPaycodeView.setText(readPaycode());
			new AlertDialog.Builder(this).setTitle("상품ID").setView(layout)
					.setPositiveButton("결정", mOkListener)
					.setNegativeButton("취소", null).show();
			break;
		case ITEM1:
			try {
				purchase.setAppInfo(APPID, APPKEY, PurchaseSkin.SKIN_SYSTEM_ONE);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			break;
		case ITEM2:
			try {
				purchase.setAppInfo(APPID, APPKEY, PurchaseSkin.SKIN_SYSTEM_TWO);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		case ITEM3:
			try {
				purchase.setAppInfo(APPID, APPKEY, PurchaseSkin.SKIN_SYSTEM_THREE);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		default:

			break;
		}
		return super.onOptionsItemSelected(item);
	}

	private final static String PAYCODE = "Paycode";
	private final static String PRODUCTNUM = "ProductNUM";

	private void savePaycode(String paycode) {
		Editor sharedata = getSharedPreferences("data", 0).edit();
		sharedata.putString(PAYCODE, paycode);
		sharedata.commit();
	}

	private String readPaycode() {
		SharedPreferences sharedPreferences = getSharedPreferences("data", 0);
		String paycode = sharedPreferences.getString(PAYCODE, LEASE_PAYCODE);
		return paycode;
	}

	private DialogInterface.OnClickListener mOkListener = new DialogInterface.OnClickListener() {

		@Override
		public void onClick(DialogInterface dialog, int which) {

			if (mPaycodeView != null) {
				String paycode = mPaycodeView.getText().toString().trim();
				savePaycode(paycode);
				mPaycode = paycode;
			}
		}
	};

	public void showDialog(String title, String msg) {
		AlertDialog.Builder builder = new AlertDialog.Builder(context);
		builder.setTitle(title);
		builder.setIcon(context.getResources().getDrawable(R.drawable.icon));
		builder.setMessage((msg == null) ? "Undefined error" : msg);
		builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int whichButton) {
				dialog.dismiss();
			}
		});
		builder.create().show();
	}
}