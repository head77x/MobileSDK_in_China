package com.testgame;

import billingSDK.billingDemo.SmsPayFactory;
import billingSDK.billingDemo.SmsPayFactory.SmsPurchaseListener;
import billingSDK.billingDemo.SmsPayItems;

import com.demo.smspay.R;
import android.view.View.OnClickListener;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import android.app.Activity;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		// 初始化SDK
		SmsPayFactory.init(MainActivity.this);
		
		setContentView(R.layout.activity_main);
		
		Button payButton = (Button)findViewById(R.id.Button01);
		payButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				SmsPayFactory.getInstance().pay(MainActivity.this, SmsPayItems.Coin_1200000, new SmsPurchaseListener() {
					
					@Override
					public void onPurchaseSucceed() {
						Toast.makeText(MainActivity.this, "Pay succeed.", Toast.LENGTH_LONG).show();
					}
					
					@Override
					public void onPurchaseInfo(String msg) {
						Toast.makeText(MainActivity.this, "Pay info: " + msg, Toast.LENGTH_LONG).show();
					}
					
					@Override
					public void onPurchaseFailed(String msg) {
						Toast.makeText(MainActivity.this, "Pay failed. " + msg, Toast.LENGTH_LONG).show();
					}
					
					@Override
					public void onPurchaseCanceld() {
						Toast.makeText(MainActivity.this, "Pay cancled.", Toast.LENGTH_LONG).show();
					}
				}, false);
			}
		});
	}
}