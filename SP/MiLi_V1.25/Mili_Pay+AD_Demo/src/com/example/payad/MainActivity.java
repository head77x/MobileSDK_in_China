package com.example.payad;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RadioGroup;
import android.widget.Toast;

import com.yuelan.codelib.utils.LogUtil;
import com.yuelan.codelib.utils.TimeUtil;
import com.yuelan.dreampay.date.PayMode;
import com.yuelan.dreampay.date.Result;
import com.yuelan.dreampay.listen.ExitListener;
import com.yuelan.dreampay.listen.PayCallback;
import com.yuelan.dreampay.pay.MiLiSmsPay;
import com.yuelan.dreampay.pay.MiLiSmsPaySDK;

/**
 * @author Jessie
 * 
 */
public class MainActivity extends Activity {
	private Button pay1;
	private String payId = "51329942";// 计费项ID，联系商务
	private RadioGroup rg1, rg2;

	// 注意在每个activity的onResume方法里面调用
	// MiLiSmsPaySDK.showWindow(this);在onPause方法里面调用
	// MiLiSmsPaySDK.closeWindow(this);
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		pay1 = (Button) this.findViewById(R.id.button_pay1);
		pay1.setOnClickListener(new PayOnclick());
		rg1 = (RadioGroup) this.findViewById(R.id.radioGroup1);
		rg2 = (RadioGroup) this.findViewById(R.id.radioGroup2);
		// 初始化方法，放在程序启动的时候
		MiLiSmsPaySDK.init(this);
		// 增加了支付模式选择，让开发者可以选择不同的支付模式。
		// SYNC为同步支付，支付流程整个完成以后才可操作。（老版本模式）
		// ASYN,为异步操作,点击我们提示界面上的支付按钮后整个支付流程都在后台执行。
		// NOVIEW模式为请求pay接口后所有操作都在后台执行。NOVIEW只适合没有2次确定的APP使用。
		// 开发者根据自己的产品自己考虑使用支付模式。尽量不要让用户感觉在暗扣。
		// ++++++++++++++++++++++++++
		// ASYN模式和NOVIEW模式下开发者可以将加金币或者道具的代码写在点击你们的支付按钮或者我们提供的payStart回调方法中。
		// 以上可能造成的支付失败也加金币的情况。
		// 以上可能用户利用BUG进行刷金币，点击支付后立马关闭网络或者使用欠费的卡等等。
		// 所以开发者慎用，建议单机游戏使用，建议快节奏游戏使用。
		// ++++++++++++++++++++++++++
		MiLiSmsPaySDK.setPayMode(PayMode.SYNC);
		rg1.setOnCheckedChangeListener(new android.widget.RadioGroup.OnCheckedChangeListener() {
			@Override
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				if (checkedId == R.id.radio4) {
					MiLiSmsPaySDK.setPayMode(PayMode.SYNC);
				} else if (checkedId == R.id.radio5) {
					MiLiSmsPaySDK.setPayMode(PayMode.ASYN);
				} else if (checkedId == R.id.radio6) {
					MiLiSmsPaySDK.setPayMode(PayMode.NOVIEW);
				}
			}
		});
		rg2.setOnCheckedChangeListener(new android.widget.RadioGroup.OnCheckedChangeListener() {
			@Override
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				if (checkedId == R.id.radio1) {
					payId = "51329942";
				} else if (checkedId == R.id.radio2) {
					payId = "51330941";
				}
			}
		});
	}

	class PayOnclick implements OnClickListener {

		@Override
		public void onClick(View v) {
			dopay();
		}
	}

	private void dopay() {
		MiLiSmsPay dreamPay = new MiLiSmsPay(MainActivity.this);
		// orderNum为订单号，为了保证唯一性，各位开发者最好在后台生成唯一性的订单号。不要在前端生成。实在不想用这个功能，可以把orderNum设置为null
		String orderNum = "Only_" + TimeUtil.getNowTimeNum();
		// 支付监听 第3个参数为是否显示支付结果提示框。
		dreamPay.Pay(new PayCallback() {
			@Override
			public void payEnd(int payResult) {
				LogUtil.v(payResult + "payResult");
				if (payResult == 9000) {
					// 成功
					Toast.makeText(MainActivity.this, "支付成功", Toast.LENGTH_LONG)
							.show();
				} else {
					// 支付失败种类很多。请谨参考开发文档payResult
					// 这个提示是给你们看的。不是给用户看的，上线的时候嗯据自己的需求去掉或者修改
					Toast.makeText(MainActivity.this,
							Result.getPayErrorLog(payResult), Toast.LENGTH_LONG)
							.show();
					// 可以参数这样提示，或者你们自己做弹出框。让用户重新尝试。
					// Toast.makeText(MainActivity.this, "支付异常，请重新尝试！",
					// Toast.LENGTH_LONG).show();
				}
				// 这里开发者可以自己进行统计，把订单号带上。方便查询。
			}

			@Override
			public void payStart() {
				// 这个提示是给你们看的。不是给用户看的，上线的时候嗯据自己的需求去掉或者修改
				Toast.makeText(MainActivity.this, "点击支付", Toast.LENGTH_LONG)
						.show();
				// 点击了支付按钮
				// 部分支付业务比较长，可能耗时1分钟左右，开发者可以根据业务是否在这里提示用户支付成功或者加金币。
			}

		}, payId, orderNum);
	}

	protected void onPause() {
		// 在界面不显示的时候关闭钱袋
		MiLiSmsPaySDK.closeWindow(this);
		super.onPause();
	};

	@Override
	protected void onResume() {
		// 在界面展示的时候显示钱袋
		MiLiSmsPaySDK.showWindow(this);
		super.onResume();
	}

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		// 按下键盘上返回按钮
		if (keyCode == KeyEvent.KEYCODE_BACK) {
			MiLiSmsPaySDK.showExitDialog(this, new ExitListener() {
				@Override
				public void download() {
					// 在游戏或者应用退出的位置，关闭钱袋
					MiLiSmsPaySDK.closeWindow(MainActivity.this);
					System.exit(0);
				}

				@Override
				public void exit() {
					// 在游戏或者应用退出的位置，关闭钱袋
					MiLiSmsPaySDK.closeWindow(MainActivity.this);
					android.os.Process.killProcess(android.os.Process.myPid());
				}

				@Override
				public void cancel() {
					// TODO Auto-generated method stub

				}
			}, true);
			return true;
		} else if (keyCode == KeyEvent.KEYCODE_MENU) {
			MiLiSmsPaySDK.showstopDialog(MainActivity.this, true);
			return true;
		} else {
			return super.onKeyDown(keyCode, event);
		}
	}
}
