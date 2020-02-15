package com.xsolla.android.sdk.api.payment;

import com.xsolla.android.sdk.XsollaWallet;
import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatus;
import com.xsolla.android.sdk.api.model.XsollaTranslations;

import java.util.HashMap;

/**
 * Basic interface for full xsolla payment operation
 */
public interface XsollaPayment {

    /**
     * Init payment process
     */
    public abstract void startPayment();

    /**
     * Method used to continue payment process when onFormReceived
     *
     * @see com.xsolla.android.sdk.api.payment.XsollaPayment.XsollaPaymentListener
     */
    public abstract void nextStep(HashMap<String, Object> fields);

    /**
     * Method to check payment status by invoice
     */
    public void status(String token, String invoice);

    public void setModeSandbox(boolean isSandbox);

    /**
     * Basic payment listener
     */
    public interface XsollaPaymentListener {
        public abstract void onTranslationsReceived(XsollaTranslations translations);

        public abstract void onFormReceived(XsollaForm form);

        public abstract void onStatusReceived(XsollaStatus status);

        public abstract void onErrorReceived(XsollaError error);
    }

    /*
    * Basic payment params minimum required buy api
    * */
    public static class Params {

        protected XsollaWallet purchase;

        public Params(XsollaWallet purchase) {
            this.purchase = purchase;
        }

        public Params(String authKey) {
            purchase = XsollaWallet.Factory.createSimpleWallet(authKey);
        }

        public XsollaWallet getWallet() {
            return purchase;
        }
    }
}
