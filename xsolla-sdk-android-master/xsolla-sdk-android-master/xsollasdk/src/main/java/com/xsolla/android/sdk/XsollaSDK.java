package com.xsolla.android.sdk;

import android.app.Activity;
import android.content.Context;
import android.util.Log;

import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.XsollaParameters;
import com.xsolla.android.sdk.api.payment.XsollaCCPayment;
import com.xsolla.android.sdk.api.payment.XsollaPaymentSimple;
import com.xsolla.android.sdk.view.XsollaUIHelper;


/**
 * Class for working with xsolla SDK
 * <p>use method <b>createPaymentForm(Context context, XsollaWallet wallet)</b> - to create our payment form</p>
 * <p>use method <b>directPayment(XsollaPaymentSimple payment)</b> - to provide own form</p>
 */
public class XsollaSDK {

    public static final boolean DEBUG = true;
    public static final String SDK_TAG = "XSOLLA SDK";

    /**
     * Method for creation basic xsolla payment form, paystation like
     * result will be returned in onActivityResult, request code
     *
     * @param context context to start payment form Activity;
     * @param wallet  contains accessToken params for payment request
     *                example: <br>(virtual currency count) <b>out:id</b>,
     *                <br>(items id and count, multiply possible) <b>sku[id]:count</b>,
     *                <br>(virtual plan id) <b>id_pakage:id</b>,
     *                <br>(payment system id) <b>pid:id</b>
     * @see com.xsolla.android.sdk.view.XsollaActivity
     */
    public static void createPaymentForm(Context context, XsollaWallet wallet) {
        XsollaParameters parameters = new XsollaParameters();
        parameters.put(XsollaApiConst.RETURN_URL, "transaction end");
        parameters.put(XsollaApiConst.PAYMENT_WITH_SAVED_METHOD, 0);
        parameters.putAll(wallet.get());
        XsollaUIHelper.startXsollaActivity((Activity) context, parameters, false);
    }

    public static void createPaymentForm(Context context, XsollaWallet wallet, boolean isSandboxModeEnabled) {
        XsollaParameters parameters = new XsollaParameters();
        parameters.put(XsollaApiConst.RETURN_URL, "transaction end");
        parameters.put(XsollaApiConst.PAYMENT_WITH_SAVED_METHOD, 0);
        parameters.putAll(wallet.get());
        XsollaUIHelper.startXsollaActivity((Activity) context, parameters, isSandboxModeEnabled);
    }


    /**
     * Method for creation basic xsolla payment form, paystation like
     *
     * @param ccPayment object contains all necessary params for payment and listener;
     */
    public static void directPayment(XsollaPaymentSimple ccPayment) {
        ccPayment.startPayment();
    }

    public static void directPayment(XsollaPaymentSimple ccPayment, boolean isSandboxModeEnabled) {
        ccPayment.setModeSandbox(isSandboxModeEnabled);
        ccPayment.startPayment();
    }

}
