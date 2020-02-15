package com.xsolla.android.sdkexampleapp;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.xsolla.android.sdk.XsollaObject;
import com.xsolla.android.sdk.XsollaSDK;
import com.xsolla.android.sdk.XsollaWallet;
import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.XsollaTokenHelper;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatusData;
import com.xsolla.android.sdk.api.model.XsollaStatusText;
import com.xsolla.android.sdk.api.payment.XsollaCCPayment;
import com.xsolla.android.sdk.view.XsollaActivity;

import java.util.HashMap;


public class MainActivity extends ActionBarActivity implements View.OnClickListener {

    final String TAG = getClass().getSimpleName();

    TextView tvResult;
    EditText edToken;
    CheckBox checkBox;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edToken = (EditText) findViewById(R.id.edToken);
        tvResult = (TextView) findViewById(R.id.tvResult);
        checkBox = (CheckBox) findViewById(R.id.checkBox);

        findViewById(R.id.button).setOnClickListener(this);
        findViewById(R.id.button2).setOnClickListener(this);
        findViewById(R.id.button3).setOnClickListener(this);

    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.button:
                final ProgressDialog progressDialog = new ProgressDialog(this);
                progressDialog.setMessage("Идёт оплата . . .");
                HashMap<String, String> map = new HashMap<String, String>();
//                map.put("12", "1");
                final XsollaCCPayment simplepayment = new XsollaCCPayment(this,
                        new XsollaCCPayment.CCParams(getToken(),
                                "4111111111111111", "12", "20", "123",
                                "1234",
                                "Ivan"),
                        new XsollaCCPayment.CCPaymentListener() {
                            @Override
                            public void onSecondStepRequired(XsollaForm.XsollaSimpleForm simpleForm) {

                            }

                            @Override
                            public void onStatusReceived(XsollaStatusText status) {
                                Log.d(TAG, "onStatusReceived " + status);
                                progressDialog.dismiss();
                                Toast.makeText(MainActivity.this, status.getState(), Toast.LENGTH_LONG).show();
                                showGoodResult();
                            }
                            @Override
                            public void onErrorReceived(XsollaError error) {
                                Log.d(TAG, "onErrorReceived " + error);
                                progressDialog.dismiss();
                                Toast.makeText(MainActivity.this, error.toString(), Toast.LENGTH_LONG).show();
                                showBadResult();
                            }
                        });
                XsollaSDK.directPayment(simplepayment, true);
                progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
                    @Override
                    public void onDismiss(DialogInterface dialog) {
                        simplepayment.cancel();
                    }
                });
                progressDialog.show();
                break;
            case R.id.button2:
                XsollaSDK.createPaymentForm(this,
                        XsollaWallet.Factory.createSimpleWallet(getToken()), checkBox.isChecked());//edToken.getText().toString()
                break;
            case R.id.button3:
                XsollaSDK.createPaymentForm(this,
                        XsollaWallet.Factory.createSimpleWallet("0cSe0k7t2AD477BcOKvLKDXkdQcqcU0G"));
                break;
        }

    }

    void showGoodResult(){
        tvResult.setText("1");
        tvResult.setTextColor(Color.GREEN);
        tvResult.setVisibility(View.VISIBLE);
    }

    void showBadResult(){
        tvResult.setText("0");
        tvResult.setTextColor(Color.RED);
        tvResult.setVisibility(View.VISIBLE);
    }


    String getToken(){
        if(edToken.getText().length() > 0)
            return edToken.getText().toString();
        else
            return "w0Rn9qvx9rzHVfO2qyAc85ISm2znHD4i";
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Log.d(TAG, "requestCode " + requestCode + " resultCode " + resultCode + " data " + data);
        switch (requestCode){
            case XsollaActivity.REQUEST_CODE:
                long objectId = data.getExtras().getLong(XsollaActivity.EXTRA_OBJECT_ID);
                if(resultCode == RESULT_OK) {
                    XsollaStatusData statusData = (XsollaStatusData)XsollaObject.getRegisteredObject(objectId);
                    Toast.makeText(this, statusData.getStatus().name(), Toast.LENGTH_LONG).show();
                    showGoodResult();
                } else {
                    XsollaError error = XsollaError.getRegisteredError(objectId);
                    Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show();
                    showBadResult();
                }
        }
    }


}
