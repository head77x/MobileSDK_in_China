/****************************************************************************
Copyright (c) 2008-2010 Ricardo Quesada
Copyright (c) 2010-2012 cocos2d-x.org
Copyright (c) 2011      Zynga Inc.
Copyright (c) 2013-2014 Chukong Technologies Inc.
 
http://www.cocos2d-x.org

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
****************************************************************************/
package org.cocos2dx.cpp;

import org.cocos2dx.lib.Cocos2dxActivity;

import com.snowfish.cn.ganga.base.SFActionCallback;
import com.snowfish.cn.ganga.base.SFNativeAdapter;
import com.snowfish.cn.ganga.helper.SFOnlineHelper;

import android.os.Bundle;
import android.util.Log;

public class AppActivity extends Cocos2dxActivity {
	//加载c++代码库，如果需要加载其他的库文件，请将gangaOnlineUnityHelper放最前面.
    static {
        System.loadLibrary("gangaOnlineUnityHelper");
   }
    

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		Log.e("AppActivity", "onCreate");
		
		//在游戏activity中调用，防止线程不统一问题。
		//cocos 2.0版本没有函数runOnGLThread，需要自行添加类似方法
		//初始化不带回调接口
		//onCreate方法用于需要在游戏主Activity中的onCreate中调用，只需调用一次
	    SFOnlineHelper.onCreate(this);
        SFNativeAdapter.init(AppActivity.this, new SFActionCallback() {
            @Override
            public void callback(Runnable run) {
                runOnGLThread(run);
            }
        });
        
      //初始化带回调的接口
      /*SFNativeAdapter.init_listener(AppActivity.this, new SFActionCallback() {
          @Override
          public void callback(Runnable run) {
              runOnGLThread(run);
          }
      });*/
		
	}
	@Override
	public void onStop() {
		super.onStop();
		Log.e("AppActivity", "onStop");
		//在游戏Activity中的onStop中调用
		SFOnlineHelper.onStop(this);
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		Log.e("AppActivity", "onDestroy");
		//在游戏Activity中的onDestroy中调用
		SFOnlineHelper.onDestroy(this);
	}

	@Override
	public void onResume() {
		super.onResume();
		//在游戏Activity中的onResume中调用
		SFOnlineHelper.onResume(this);
	}

	@Override
	public void onPause() {
		super.onPause();
		Log.e("AppActivity", "onPause");
		//在游戏Activity中的onPause中调用
		SFOnlineHelper.onPause(this);
	}

	@Override
	public void onRestart() {
		super.onRestart();
		Log.e("AppActivity", "onRestart");
		//在游戏Activity中的onRestart中调用
		SFOnlineHelper.onRestart(this);
	}

}
