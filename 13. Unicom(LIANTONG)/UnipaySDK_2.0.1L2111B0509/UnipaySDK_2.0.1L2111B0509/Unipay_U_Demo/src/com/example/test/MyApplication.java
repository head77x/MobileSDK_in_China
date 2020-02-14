package com.example.test;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.util.Log;

import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

public class MyApplication extends Application {

	@Override
	public void onCreate() {
		super.onCreate();
		
		CrashHandler.getInstance().init(getApplicationContext());
		
		
		Utils.getInstances().initSDK(this, new UnipayPayResultListener() {
			
			@Override
			public void PayResult(String arg0, int arg1, int arg2, String arg3) {
				
			}
		});
	}
	
	
}
