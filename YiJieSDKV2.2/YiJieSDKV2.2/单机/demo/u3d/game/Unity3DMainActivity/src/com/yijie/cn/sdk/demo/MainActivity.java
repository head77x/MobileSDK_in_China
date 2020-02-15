package com.yijie.cn.sdk.demo;
import android.os.Bundle;
import android.os.Handler;

import com.snowfish.cn.ganga.offline.helper.SFCommonSDKInterface;
import com.unity3d.player.UnityPlayerActivity;
public class MainActivity extends UnityPlayerActivity {
public static Handler hd = new Handler();
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		SFCommonSDKInterface.onInit(this);
		/* 初始化完成后可以通过以下方法向U3D中发送消息
		 * UnityPlayer.UnitySendMessage() 参数1表示发送游戏对象的名称，参数2表示对象绑定的脚本接收该消息的方法（在u3d中定义的函数名称），参数3表示本条消息发送的字符串信息
		 * 例如：UnityPlayer.UnitySendMessage("Main Camera","messgae",str);
		 * */
//		SFCommonSDKInterface.onInit(this,new SFOfflineInitListener() {
//            
//            @Override
//            public void onResponse(String tag, String value) {
//                    Log.w("sfwarning"," init response tag = "+tag+" value = "+value);
//                    if(tag.equalsIgnoreCase("success")){
//                        Log.w("sfwarning", "初始化回调成功（易接）");
//                    }else if(tag.equalsIgnoreCase("fail")){
//                        Log.w("sfwarning", "初始化回调失败（易接）");
//                    }
//                    
//                }
//                
//        });
		
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		SFCommonSDKInterface.onDestroy(this);
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		hd.postDelayed(new Runnable() {
			public void run() {
			    SFCommonSDKInterface.onResume(MainActivity.this);
			}
		}, 1000);
	}
	
	
	@Override
	protected void onPause() { 
		super.onPause();
		SFCommonSDKInterface.onPause(this);
	}
	

}
