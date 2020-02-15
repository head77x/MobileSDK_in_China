package org.cocos2dx.javascript;
import android.content.Intent;
import android.graphics.Color;
import com.snowfish.cn.ganga.helper.SFOnlineSplashActivity;

/*
 * 易接 闪屏Activity。
 * */
public class SplashActivity extends SFOnlineSplashActivity {

	public int getBackgroundColor() {
		
		/*闪屏背景颜色*/
		return Color.WHITE;
	}

	@Override
	public void onSplashStop() {
		this.finish();
		
		/*跳转到cocos js Activity*/
		Intent intent = new Intent(this, AppActivity.class);
		startActivity(intent);
	}
}
