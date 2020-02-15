# Xsolla Android SDK

## Overview

Xsolla created Android Client SDK for accepting credit card payments from your application.

Before start, please choose one of the modules listed [here](https://developers.xsolla.com/#getting-started), implement the IPN handling, create an [access token](https://developers.xsolla.com/api.html#token).

## System Requirements

1. Minimum required Android OS version: 4.0
2. Internet Connection is essential for the Xsolla Android SDK

## Installing

You can add our Xsolla Android SDK in Android Studio. Please follow this steps:

1. import module - File > Import Module > xsollasdk

2. add dependency - File > Project Structure > Your App Module > Dependency > + > Module Dependency > xsollasdk

3. add to your build gradlew in android section the following:
```javascript
    packagingOptions {
       exclude 'META-INF/LICENSE'
       exclude 'META-INF/NOTICE'
    }
```

## Make a Payment

For the proper work of the SDK, please make sure that you have an access token. More information about getting token is available [here](https://developers.xsolla.com/api.html#token). In the JSON for access token should be passed "payment_method": 26 and "purchase" object.

There are two ways of using SDK. First one - you may use our credit card UI, second - you can use your own credit card UI.

##### Xsolla Credit Card UI

Let's take as an example the simple application that has a payment button, when clicked our Credit Card UI is opened.

```java
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.xsolla.android.sdk.XsollaSDK;
import com.xsolla.android.sdk.XsollaWallet;
import com.xsolla.xsollasdksampleapp.R;

public class MainActivity extends ActionBarActivity implements View.OnClickListener {

    Button paymentButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
       super.onCreate(savedInstanceState);
       setContentView(R.layout.activity_main);
       paymentButton = (Button)findViewById(R.id.btnInitPayment);
       paymentButton.setOnClickListener(this);
   }


   @Override
   public void onClick(View v) {
      switch (v.getId()){
         case R.id.btnInitPayment:
            initPayment("Y1YJzDOKOX0SxiLNbgRZbfOVBQqO4Cid"); //access token
         break;
         default:
         }
   }
   public void initPayment(String token){
      XsollaSDK.createPaymentForm(this,
      XsollaWallet.Factory.createSimpleWallet("token"));
   }
```

Once the payment has been processed, your application can get a result in OnActivityResult. Also we will send you an IPN, even if the application has been closed.

```
@Override
protected void onActivityResult(int requestCode, int resultCode, Intent data) {
   switch (requestCode){
     case XsollaActivity.REQUEST_CODE:
     // in extras you receive XsollaActivity.EXTRA_OBJECT_ID
     // which you can use to access result objects
     long objectId = data.getExtras().getLong(XsollaActivity.EXTRA_OBJECT_ID);
     if(resultCode == RESULT_OK) {
     // ok result object receiving
      XsollaStatusData statusData = (XsollaStatusData)XsollaObject.getRegisteredObject(objectId);
      // handle here you app behavior on payment success
     } else {
      // error result object receiving
      XsollaError error = XsollaError.getRegisteredError(objectId);
      // handle here you app behavior on payment fail or canceled
      }
   }
}
```


##### Game Credit Card UI

You can use your own credit card entry UI. Collect the data from your UI and send it to Xsolla Android SDK with the help of XsollaCCPayment method.

```java
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;

import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatusText;
import com.xsolla.android.sdk.api.payment.XsollaCCPayment;

public class MainActivity extends ActionBarActivity
                implements XsollaCCPayment.CCPaymentListener {

   @Override
   protected void onCreate(Bundle savedInstanceState) {
       super.onCreate(savedInstanceState);
       setContentView(R.layout.activity_main);

       XsollaCCPayment.CCParams params
               = new XsollaCCPayment.CCParams(
               "Y1YJzDOKOX0SxiLNbgRZbfOVBQqO4Cid", // access token
               "4111111111111111", // credit card number
               "12", "20", // expiration date
               "123", // CVV
               "1234", // zip code
               "John Smith"); // cardholder name


       XsollaCCPayment simplepayment = new XsollaCCPayment(this, params, this);
       XsollaSDK.directPayment(simplepayment);
   }

   @Override
   public void onStatusReceived(XsollaStatusText simpleStatus) {
       // handle here payment success
       // render status form to user if you want
   }

   @Override
   public void onErrorReceived(XsollaError error) {
       // handle here payment error
   }

}
```

## Objects to work with 
Below you can find useful method's

###XsollaStatusText
Contains detailed text info about payment

```
    public ArrayList<StatusTextElement> getTextElements();
```

###StatusTextElement
Contains info like Item, Transaction Number, Details, Date, Merchant, Order Total

```
   public String getPref();//name of field
   public String getValue();
```

###XsollaStatusData
Contains info about payment status

```
    public String getEmail();//"main@example.com",
    public long getInvoice();// invoice id 140381877,
    public Status getStatus();// enum can be INVOICE, DONE, CANCELED
    public String getUserId();//userId "user_1",
    public StringgetCurrencyAmount();//virtualCurrencyAmount: 100
```

###XsollaError
Contains error info

```
    public Source getReason();// enum can be XSOLLA_API, APP_API, HTTP, NETWORK, CANCEL, UNEXPECTED
    public int getErrorCode();// 
    public String getErrorMessage();//
```