package com.testgame;

import billingSDK.billingDemo.SmsPayFactory;
import billingSDK.billingDemo.SmsPayFactory.SmsExitGameListener;
import billingSDK.billingDemo.SmsPayFactory.SmsPurchaseListener;

import com.wjhe.absolutefire.R;

import android.view.KeyEvent;
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
		
		// 1. 初始化SDK
		SmsPayFactory.init(MainActivity.this);
		
		setContentView(R.layout.activity_main);
		
		/*
		 * 2. 支付调用演示
		 */
		Button payButton = (Button)findViewById(R.id.Button01);
		payButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				SmsPayFactory.getInstance().pay(MainActivity.this, 0, new SmsPurchaseListener() {
					
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
		
		/*
		 * 3. 调用更多游戏
		 */
		Button moreGamesButton = (Button)findViewById(R.id.Button02);
		moreGamesButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				SmsPayFactory.getInstance().viewMoreGames(MainActivity.this);
			}
		});
	}
	
	/* 
	 * 4. 调用退出游戏
	 */
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
			SmsPayFactory.getInstance().exitGame(MainActivity.this, new SmsExitGameListener() {
				
				@Override
				public void onExitGameConfirmExit() {
					MainActivity.this.finish();
				}
				
				@Override
				public void onExitGameCancelExit() {
					
				}
			});
		}
		return false;
	}
}