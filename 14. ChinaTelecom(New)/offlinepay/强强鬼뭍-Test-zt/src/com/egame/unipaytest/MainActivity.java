package com.egame.unipaytest;

import java.util.HashMap;
import java.util.Map;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import cn.egame.terminal.paysdk.EgameExitListener;
import cn.egame.terminal.paysdk.EgamePay;
import cn.egame.terminal.paysdk.EgamePayListener;




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
	
	

	  private OnClickListener button3_onClickListener=new OnClickListener(){
	    	public void onClick(View arg0) {  
	    		
	        EgamePay.moreGame(thisActivity);//������Ϸ�ӿ�
	        
	        }  
	    };
	    
	    private OnClickListener button4_onClickListener=new OnClickListener(){
	    	public void onClick(View arg0) {  
	    		EgamePay.exit(thisActivity, new EgameExitListener() { //Main.thisΪ��Activity

	    			public void exit() {
	    				finish();
	   
	    				//�˳���Ϸ����
	    				
	    			}

	    			public void cancel() {
	    				//ȡ���˳���������Ϸ
	    				
	    			}
	    		});	  
	        }  
	    };
	
	private OnClickListener button1_onClickListener=new OnClickListener() {
		@Override
		public void onClick(View arg0) {
			HashMap<String, String> payParams=new HashMap<String, String>();
			payParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, "5245217");
			payParams.put(EgamePay.PAY_PARAMS_KEY_PRIORITY, "sms");
			Pay(payParams);
		}
	};
	
	private OnClickListener button2_onClickListener=new OnClickListener() {
		@Override
		public void onClick(View arg0) {
			HashMap<String, String> payParams=new HashMap<String, String>();
			payParams.put(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS, "5245218");
		    payParams.put(EgamePay.PAY_PARAMS_KEY_PRIORITY, "sms");
			Pay(payParams);
		}
	};
	

	private void Pay(HashMap<String, String> payParams){
		final Builder dialog=new Builder(thisActivity);
		dialog.setTitle("֧��SDK����");
		
		EgamePay.pay(thisActivity, payParams,new EgamePayListener() {
			@Override
			public void paySuccess(Map<String, String> params) {
				dialog.setMessage("����"+params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS)+"֧���ɹ�");
				dialog.show();
			}
			
			@Override
			public void payFailed(Map<String, String> params, int errorInt) {
				dialog.setMessage("����"+params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS)+"֧��ʧ�ܣ�������룺"+errorInt);
				dialog.show();
			}
			
			@Override
			public void payCancel(Map<String, String> params) {
				dialog.setMessage("����"+params.get(EgamePay.PAY_PARAMS_KEY_TOOLS_ALIAS)+"֧����ȡ��");
				dialog.show();
			}
		});
	}

}
