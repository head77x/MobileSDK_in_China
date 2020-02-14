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

	// 计费信息
	// 计费信息 (现网环境)
	private static final String APPID = "300002675623";
	private static final String APPKEY = "661C7C1CCFE032D9";
	// 计费点信息
	private static final String LEASE_PAYCODE = "30000267562301";

//	private static final String APPID = "300004924109";
//	private static final String APPKEY = "0703125EEC06D559";
//	// 计费点信息
//	private static final String LEASE_PAYCODE = "30000492410901";

	
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
		mProgressDialog.setMessage("请稍候...");
		context = Demo.this;
		IAPHandler iapHandler = new IAPHandler(this);
		mPaycode = readPaycode();
		/**
		 * IAP组件初始化.包括下面3步。
		 */
		/**
		 * step1.实例化PurchaseListener。实例化传入的参数与您实现PurchaseListener接口的对象有关。
		 * 例如，此Demo代码中使用IAPListener继承PurchaseListener，其构造函数需要Context实例。
		 */
		mListener = new IAPListener(this, iapHandler);
		/**
		 * step2.获取Purchase实例。
		 */
		purchase = SMSPurchase.getInstance();
		/**
		 * step3.向Purhase传入应用信息。APPID，APPKEY。 需要传入参数APPID，APPKEY。 APPID，见开发者文档
		 * APPKEY，见开发者文档
		 */
		try {
			purchase.setAppInfo(APPID, APPKEY);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		/**
		 * step4. IAP组件初始化开始， 参数PurchaseListener，初始化函数需传入step1时实例化的
		 * PurchaseListener。
		 */
		 try {
		 purchase.smsInit(context, mListener);
		 } catch (Exception e) {
		 e.printStackTrace();
		 }
		billButton = (Button) findViewById(R.id.billing);
		billButton.setOnClickListener(this);
		// order(this, mListener);
	}

	@Override
	public void onClick(View v) {
		int id = v.getId();
		switch (id) {
		case R.id.billing:
			/**
			 * 商品购买接口。
			 */
			order(this, mListener);
			break;
		default:
			break;
		}

	}

	public void order(Context context, OnSMSPurchaseListener listener) {
		try {
			// purchase.smsOrder(context, mPaycode, listener);
			purchase.smsOrder(context, mPaycode, mListener, "test");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void showProgressDialog() {
		if (mProgressDialog == null) {
			mProgressDialog = new ProgressDialog(Demo.this);
			mProgressDialog.setIndeterminate(true);
			mProgressDialog.setMessage("请稍候.....");
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
		menu.add(0, ITEM0, 0, "修改商品信息");
		menu.add(1, ITEM1, 1, "皮肤一");
		menu.add(1, ITEM2, 2, "皮肤二");
		menu.add(1, ITEM3, 3, "皮肤三");
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
			new AlertDialog.Builder(this).setTitle("商品ID").setView(layout)
					.setPositiveButton("确定", mOkListener)
					.setNegativeButton("取消", null).show();
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