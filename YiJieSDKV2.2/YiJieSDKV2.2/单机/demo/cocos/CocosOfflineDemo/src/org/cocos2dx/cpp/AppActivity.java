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

import com.snowfish.cn.ganga.offline.basic.SFActionCallback;
import com.snowfish.cn.ganga.offline.basic.SFNativeAdapter;
import com.snowfish.cn.ganga.offline.helper.SFCommonSDKInterface;


import android.os.Bundle;

public class AppActivity extends Cocos2dxActivity {
    static {
        System.loadLibrary("sfunityoffline");
   }
    

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//初始化无回调调用方法
		SFCommonSDKInterface.onInit(this);		
		SFNativeAdapter.init(this, new SFActionCallback() {
			
			@Override
			public void callback(Runnable run) {
				runOnGLThread(run);
			}
		});
		//初始化带回调的调用方法
//		SFNativeAdapter.init_listener(this, new SFActionCallback() {
//			
//			@Override
//			public void callback(Runnable run) {
//				runOnGLThread(run);
//			}
//		});
		
	}
	@Override
	public void onStop() {
		super.onStop();
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		SFCommonSDKInterface.onDestroy(this);
	}

	@Override
	public void onResume() {
		super.onResume();
		SFCommonSDKInterface.onResume(this);
	}

	@Override
	public void onPause() {
		super.onPause();
		SFCommonSDKInterface.onPause(this);
	}

	@Override
	public void onRestart() {
		super.onRestart();
	}

}
