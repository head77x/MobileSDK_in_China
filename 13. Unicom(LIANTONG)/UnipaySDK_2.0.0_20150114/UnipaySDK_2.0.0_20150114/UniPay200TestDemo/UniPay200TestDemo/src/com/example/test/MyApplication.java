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
		
		String processName = getCurProcessName(this);
		if(processName.equals(this.getPackageName())){
			//do application init
			Log.i("xyf", "[unipay] Do application init");
			
			System.loadLibrary("megjb");
		}
		
		Utils.getInstances().initSDK(this, new UnipayPayResultListener() {
			
			@Override
			public void PayResult(String arg0, int arg1, int arg2, String arg3) {
				
			}
		});
	}
	
	String getCurProcessName(Context context) {
		int pid = android.os.Process.myPid();
		ActivityManager mActivityManager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		for (ActivityManager.RunningAppProcessInfo appProcess : mActivityManager.getRunningAppProcesses()) {
			if (appProcess.pid == pid) {
				return appProcess.processName;
			}
		}
		return "";
	}
	
}
