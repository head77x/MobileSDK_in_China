package com.example.localdemo;

import com.estore.lsms.tools.ApiParameter;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;
public class LocalDemoMainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        init();
    }
    private void init (){
        LinearLayout container = new LinearLayout(this);
        container.setOrientation(LinearLayout.VERTICAL);

        this.setContentView(container);

        Button submit = new Button(this);
        submit.setText("����0.01Ԫ");
        container.addView(submit);
        submit.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                intent.setClass(LocalDemoMainActivity.this, com.estore.ui.CTEStoreSDKActivity.class);

                Bundle bundle = new Bundle();
                //ʾ������ֵ	            
                bundle.putString(ApiParameter.APPCHARGEID, "ED29976AD670CD98E040007F01007A4F");
                bundle.putString(ApiParameter.CHANNELID, "123");
                bundle.putBoolean(ApiParameter.SCREENHORIZONTAL, false);//��������XML"
                
                bundle.putString(ApiParameter.CHARGENAME, "������");//�Ʒѵ�����
                bundle.putInt(ApiParameter.PRICETYPE, 0);//�Ʒ����ͣ�0���μƷѣ�1���¼Ʒ�
                bundle.putString(ApiParameter.PRICE, "0.01");//�۸�             
                bundle.putString(ApiParameter.REQUESTID, "9999999999999999");

                intent.putExtras(bundle);
                startActivityForResult(intent, 0);
            }
        });
       }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Bundle bdl = data.getExtras();
        int payResultCode = bdl.getInt(ApiParameter.RESULTCODE);

        if (ApiParameter.CTESTORE_SENDSUCCESS == payResultCode){
            		            //֧�����ŷ��ͳɹ�       	
        	
        }else if (ApiParameter.CTESTORE_USERCANCEL == payResultCode){
        	//�û�����ȡ��
        }else{
        	//ʧ��
        }
    }
    

}
