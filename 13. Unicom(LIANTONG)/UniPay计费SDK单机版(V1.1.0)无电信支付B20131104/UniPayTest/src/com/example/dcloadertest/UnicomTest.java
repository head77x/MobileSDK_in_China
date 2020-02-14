package com.example.dcloadertest;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.unicom.dcLoader.Utils;
import com.unicom.dcLoader.Utils.UnipayPayResultListener;

public class UnicomTest extends Activity {

	private Button btn_buy;
	private Button btn_other;
	private Button btn_other2;
	
	Format format = new SimpleDateFormat("yyyyMMddHHmmss");
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_unicom_test);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
//		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
		
		Utils.getInstances().init(UnicomTest.this,"90234616120120921431100",
				"902346161", "86000504","科技科技","400 600 999","游戏游戏",new PayResultListener());
		
		btn_buy = (Button) findViewById(R.id.btn_buy);
		btn_buy.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.getInstances().setBaseInfo(UnicomTest.this, true, true, "http://uniview.wostore.cn/log-app/test");
				Utils.getInstances().pay(UnicomTest.this,"130201102727",
						"90234616120120921431100001","金币40", "10",format.format(new Date()));
			}
		});
		
		btn_other = (Button) findViewById(R.id.btn_other);
		btn_other.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.getInstances().setBaseInfo(UnicomTest.this, true, false, "http://uniview.wostore.cn/log-app/test");
				Utils.getInstances().pay(UnicomTest.this,"130201102727",
						"90234616120120921431100001","金币40", "10",format.format(new Date()));
			}
		});
		
		btn_other2 = (Button) findViewById(R.id.btn_other2);
		btn_other2.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Utils.getInstances().setBaseInfo(UnicomTest.this, false, true, "http://uniview.wostore.cn/log-app/test");
				Utils.getInstances().pay(UnicomTest.this,"130201102727",
						"90234616120120921431100001","金币40", "10",format.format(new Date()));
			}
		});
	}
	
	
	public class PayResultListener implements UnipayPayResultListener
	{

		@Override
		public void PayResult(String paycode, int flag, String error) {
			Toast.makeText(UnicomTest.this, "flag="+flag+"code="+paycode+"error="+error, Toast.LENGTH_LONG).show();
		}
		
	}
	


}
