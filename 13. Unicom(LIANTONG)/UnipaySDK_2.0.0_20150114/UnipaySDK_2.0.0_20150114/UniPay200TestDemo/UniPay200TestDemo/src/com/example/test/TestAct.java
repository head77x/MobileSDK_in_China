package com.example.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Toast;

import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;
import com.unipay.account.AccountAPI.BusyException;
import com.unipay.account.AccountAPI.OnInitResultListener;
import com.unipay.account.AccountAPI.OnLoginResultListener;
import com.unipay.account.UnipayAccountPlatform;

public class TestAct extends ListActivity {

	String test[] = new String[] { "联网道具0.1元","联网道具30元"
			,"联网道具40元","联网道具500元","联网道具600元","按次代缴订购","按次代缴退订","单机道具0.1元","单机道具30元","单机道具40元"
			,"联运联网支付0.1元","联运联网支付30元","联运联网支付40元","登陆"};

	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		getListView().setAdapter(
				new ArrayAdapter<String>(this,
						android.R.layout.simple_list_item_1, test));

		getListView().setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				switch (position) {
				case 0:
					Utils.getInstances().payOnline(TestAct.this, "001", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 1:
					Utils.getInstances().payOnline(TestAct.this, "020", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 2:
					Utils.getInstances().payOnline(TestAct.this, "021", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 3:
					Utils.getInstances().payOnline(TestAct.this, "022", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 4:
					Utils.getInstances().payOnline(TestAct.this, "023", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 5:
					Utils.getInstances().payOnline(TestAct.this, "041", "1",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 6:
					Utils.getInstances().payOnline(TestAct.this, "041", "2",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 7:
					Utils.getInstances().pay(TestAct.this, "001",new paylistener());
					break;
					
				case 8:
					Utils.getInstances().pay(TestAct.this, "020", "123456789012345678901234",new paylistener());
					break;
					
				case 9:
					Utils.getInstances().pay(TestAct.this, "021" , new paylistener());
					break;
					
				case 10:
					Utils.getInstances().payOnlineWithWostre(TestAct.this, "001", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 11:
					Utils.getInstances().payOnlineWithWostre(TestAct.this, "020", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;

				case 12:
					Utils.getInstances().payOnlineWithWostre(TestAct.this, "021", "0",
							dateFormat.format(new Date()) + "2222222222",
							new paylistener());
					break;
					
				case 13:
					try {
						UnipayAccountPlatform.init(TestAct.this, "904952979620130228124832651500",
								"b8b028c81f119571", new OnInitResultListener() {

									@Override
									public void onResult(int arg0, String arg1) {
										try {
											UnipayAccountPlatform.getInstance().login(
													TestAct.this,
													new OnLoginResultListener() {

														@Override
														public void onLoginResult(int arg0) {
															System.out.println(">>>>>>"
																	+ arg0);
														}
													});
										} catch (BusyException e) {
											e.printStackTrace();
										}
									}
								});
					} catch (BusyException e) {
						e.printStackTrace();
					}
					break;
					
				default:
					break;
				}
			}
		});

	}
	
	@Override
	protected void onResume() {
		super.onResume();
		Utils.getInstances().onResume(this);
	}

	@Override
	protected void onPause() {
		super.onPause();
		Utils.getInstances().onPause(this);
	}

	private class paylistener implements UnipayPayResultListener{

		@Override
		public void PayResult(String arg0, int arg1, int arg2, String arg3) {
			Toast.makeText(TestAct.this, "arg0:"+arg0+";arg1:"+arg1+"arg2:"+arg3, Toast.LENGTH_SHORT).show();
		}
		
	}

}
