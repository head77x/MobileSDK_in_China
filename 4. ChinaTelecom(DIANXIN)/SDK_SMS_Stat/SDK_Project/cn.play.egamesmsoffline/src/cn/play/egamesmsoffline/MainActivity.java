package cn.play.egamesmsoffline;

import java.util.HashMap;
import java.util.Map;


import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;
import cn.egame.terminal.sdk.log.EgameAgent;
import cn.play.dserv.CheckTool;
import cn.play.dserv.ExitCallBack;
import cn.play.egamesmsoffline.R;

public class MainActivity extends Activity {
	Activity thisActivity;
	Button button1,button2,button3,button4;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		thisActivity=this;
		EgamePay.init(this);
		
		button1=(Button) findViewById(R.id.button1);
		button2=(Button) findViewById(R.id.button2);
		button3=(Button) findViewById(R.id.button3);
		button4=(Button) findViewById(R.id.button4);
		
		button1.setOnClickListener(button1_onClickListener);
		button2.setOnClickListener(button2_onClickListener);
		button3.setOnClickListener(button3_onClickListener);
		button4.setOnClickListener(button4_onClickListener);
	}
	
	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		EgameAgent.onPause(this);
	}



	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
		EgameAgent.onResume(this);
	}

	  private OnClickListener button3_onClickListener=new OnClickListener(){
	    	public void onClick(View arg0) {  
	    		CheckTool.more(thisActivity);	  
	        }  
	    };
	    
	    private OnClickListener button4_onClickListener=new OnClickListener(){
	    	public void onClick(View arg0) {  
	    		CheckTool.exit(thisActivity, new ExitCallBack() { //Main.this为主Activity

	    			@Override
	    			public void exit() {
	    				finish();
	    				//退出游戏操作
	    				//Main.this.finish();
	    			}

	    			@Override
	    			public void cancel() {
	    				//取消退出，返回游戏
	    				
	    			}
	    		});	  
	        }  
	    };
	
	private OnClickListener button1_onClickListener=new OnClickListener() {
		@Override
		public void onClick(View arg0) {
			HashMap<String, String> payParams=new HashMap<String, String>();
			payParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, "108462");
			payParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_DESC, "激活");
			
			Pay(payParams);
		}
	};
	
	private OnClickListener button2_onClickListener=new OnClickListener() {
		@Override
		public void onClick(View arg0) {
			HashMap<String, String> payParams=new HashMap<String, String>();
			payParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, "108463");
			payParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_DESC, "复活");
			
			Pay(payParams);
			
		}
	};
	
	private void Pay(HashMap<String, String> payParams){
		final Builder dialog=new Builder(thisActivity);
		dialog.setTitle("支付SDK测试");
		
		EgamePay.pay(thisActivity, payParams,new EgamePayListener() {
			@Override
			public void paySuccess(Map<String, String> params) {
				dialog.setMessage("道具"+params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_DESC)+"支付成功");
				dialog.show();
			}
			
			@Override
			public void payFailed(Map<String, String> params, int errorInt) {
				dialog.setMessage("道具"+params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_DESC)+"支付失败：错误代码："+errorInt);
				dialog.show();
			}
			
			@Override
			public void payCancel(Map<String, String> params) {
				dialog.setMessage("道具"+params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_DESC)+"支付已取消");
				dialog.show();
			}
		});
	}

}
