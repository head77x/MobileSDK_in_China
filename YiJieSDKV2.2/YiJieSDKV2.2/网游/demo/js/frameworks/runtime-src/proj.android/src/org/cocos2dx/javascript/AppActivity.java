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
package org.cocos2dx.javascript;

import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;
import android.os.Bundle;
import com.snowfish.cn.ganga.base.SFActionCallback;
import com.snowfish.cn.ganga.base.SFNativeAdapter;
import com.snowfish.cn.ganga.helper.SFOnlineHelper;
public class AppActivity extends Cocos2dxActivity {
	
    @Override
    public Cocos2dxGLSurfaceView onCreateView() {
        Cocos2dxGLSurfaceView glSurfaceView = new Cocos2dxGLSurfaceView(this);
        // TestCpp should create stencil buffer
        glSurfaceView.setEGLConfigChooser(5, 6, 5, 0, 16, 8);

        return glSurfaceView;
    }
    
    @Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		/*
		 * 易接初始化
		 * */
		/*SFOnlineHelper.onCreate(this);
		
		SFNativeAdapter.init(this, new SFActionCallback() {
			
			@Override
			public void callback(Runnable arg0) {
				runOnGLThread(arg0);	
			}
		});*/
		
		SFNativeAdapter.init_listener(this, new SFActionCallback() {
			
			@Override
			public void callback(Runnable arg0) {
				runOnGLThread(arg0);	
			}
		});
	}
    
    @Override  
    protected void onResume() {  
        super.onResume();  
        
		/*
		 * 易接 onResume
		 * */
        SFOnlineHelper.onResume(this);
    }  
    
    @Override  
    protected void onPause() {  
        super.onPause(); 
        
        /*
		 * 易接 onPause
		 * */
        SFOnlineHelper.onPause(this);
    }
    
    @Override  
    protected void onDestroy() {  
        super.onDestroy();
        
        /*
		 * 易接 onDestroy
		 * */
        SFOnlineHelper.onDestroy(this);  
    } 
    
    @Override
    protected void onStop() {
    	super.onStop();
    	 /*
		 * 易接 onStop
		 * */
    	SFOnlineHelper.onStop(this);  
	}
    
    @Override
    protected void onRestart() {
    	super.onRestart();
    	 /*
		 * 易接 onRestart
		 * */
    	SFOnlineHelper.onRestart(this);  ;
	}
}
