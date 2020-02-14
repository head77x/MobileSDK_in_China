package cn.play.egamesmsoffline;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;

public class MainActivity extends Activity {
	Activity thisActivity;
	Button payButton1, payButton2;
	String payAlias = "";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		thisActivity = this;
		payButton1 = (Button) findViewById(R.id.button1);
		payButton1.setOnClickListener(button1_OnClickListener);
		payButton2 = (Button) findViewById(R.id.button2);
		payButton2.setOnClickListener(button2_OnClickListener);
		
	}
	
	private OnClickListener button1_OnClickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			payAlias="126694";
			EgamePay.pay(thisActivity, payAlias, new EgamePayListener() {
				@Override
				public void paySuccess(String alias) {
					Toast.makeText(thisActivity, "道具(" + alias + ")支付成功。",
							Toast.LENGTH_LONG).show();
				}

				@Override
				public void payFailed(String alias, int errorInt) {
					Toast.makeText(thisActivity, "道具(" + alias + ")支付失败：" + errorInt,
							Toast.LENGTH_LONG).show();
				}

				@Override
				public void payCancel(String alias) {
					Toast.makeText(thisActivity, "道具(" + alias + ")支付操作被取消。",
							Toast.LENGTH_LONG).show();
				}
			});
		}
	};

	private OnClickListener button2_OnClickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			payAlias="126695";
			EgamePay.pay(thisActivity, payAlias, new EgamePayListener() {
				@Override
				public void paySuccess(String alias) {
					Toast.makeText(thisActivity, "道具(" + alias + ")支付成功。",
							Toast.LENGTH_LONG).show();
				}

				@Override
				public void payFailed(String alias, int errorInt) {
					Toast.makeText(thisActivity, "道具(" + alias + ")支付失败：" + errorInt,
							Toast.LENGTH_LONG).show();
				}

				@Override
				public void payCancel(String alias) {
					Toast.makeText(thisActivity, "道具(" + alias + ")支付操作被取消。",
							Toast.LENGTH_LONG).show();
				}
			});
		}
	};

}
