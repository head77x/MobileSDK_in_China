package com.xsolla.android.sdk.api.payment;

import android.content.Context;

import com.xsolla.android.sdk.XsollaWallet;
import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatusText;

/**
 * Class used to make card payment process easy
 * if everything is ok return Status
 * else Error or next step Form
 *
 * @see XsollaPaymentSimple
 */
public class XsollaCCPayment extends XsollaPaymentSimple {

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PRIVATE FIELDS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private CCPaymentListener paymentListener;

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * INTERFACES
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public interface CCPaymentListener {
        public abstract void onSecondStepRequired(XsollaForm.XsollaSimpleForm simpleForm);

        public abstract void onStatusReceived(XsollaStatusText simpleStatus);

        public abstract void onErrorReceived(XsollaError error);
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * CONSTRUCTORS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public XsollaCCPayment(Context context, CCParams params, CCPaymentListener ccPaymentListener) {
        super(context, params);
        this.setSimpleListener(fullListener);
        this.paymentListener = ccPaymentListener;
    }

    public XsollaCCPayment(Context context, CCParams params, CCPaymentListener ccPaymentListener, boolean isSandboxModeEnabled) {
        super(context, params, isSandboxModeEnabled);
        this.setSimpleListener(fullListener);
        this.paymentListener = ccPaymentListener;
    }

    private final SimplePaymentListener fullListener = new SimplePaymentListener() {
        @Override
        public void onFormReceived(XsollaForm.XsollaSimpleForm form) {
            XsollaForm.CurrentCommand command = getForm().getCurrentCommand();
            if (command == XsollaForm.CurrentCommand.FORM) {
                XsollaError error = getForm().getXsollaError();
                if(!getForm().isValidPaymentSystem()){
                    paymentListener.onErrorReceived(XsollaError.getUnsuportedError());
                } else if (error == null) {
                    getForm().updateElement(XsollaApiConst.CARD_NUMBER, getParams().getCardNumber());
                    getForm().updateElement(XsollaApiConst.CARD_EXP_YEAR, getParams().getCardExpYear());
                    getForm().updateElement(XsollaApiConst.CARD_EXP_MONTH, getParams().getCardExpMonth());
                    getForm().updateElement(XsollaApiConst.CARD_CVV, getParams().getCardCvv());
                    getForm().updateElement(XsollaApiConst.CARD_ZIP, getParams().getCardZip());
                    getForm().updateElement(XsollaApiConst.CARD_HOLDER, getParams().getCardHolder());
                    next(getForm().getXpsMap());
                } else {
                    paymentListener.onErrorReceived(error);
                }
            } else if (command == XsollaForm.CurrentCommand.CHECK) {
                if(getForm().getItem(XsollaApiConst.CARD_ZIP) != null) {
                    getForm().updateElement(XsollaApiConst.CARD_ZIP, getParams().getCardZip());
                    next(getForm().getXpsMap());
                } else {
                    paymentListener.onSecondStepRequired(form);
                }
            }
        }

        @Override
        public void onStatusReceived(XsollaStatusText status) {
            paymentListener.onStatusReceived(status);
        }

        @Override
        public void onErrorReceived(XsollaError error) {
            paymentListener.onErrorReceived(error);
        }
    };

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * OVERRIDE METHODS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    @Override
    public CCParams getParams() {
        return (CCParams) super.getParams();
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * INNER CLASS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */

    /**
     * Class contains all required params for Card Payment Process
     * except Brazil witch return second step form
     */
    public static class CCParams extends Params {

        private String cardNumber;
        private String cardExpMonth;
        private String cardExpYear;
        private String cardCvv;
        private String cardZip;
        private String cardHolder;

        public CCParams(XsollaWallet purchase, String cardNumber, String cardExpMonth,
                        String cardExpYear, String cardCvv, String cardZip, String cardHolder) {
            super(purchase);
            this.cardNumber = cardNumber;
            this.cardExpMonth = cardExpMonth;
            this.cardExpYear = cardExpYear;
            this.cardCvv = cardCvv;
            this.cardZip = cardZip;
            this.cardHolder = cardHolder;
        }

        public CCParams(String accessToken, String cardNumber, String cardExpMonth, String cardExpYear,
                        String cardCvv, String cardZip, String cardHolder) {
            super(accessToken);
            this.cardNumber = cardNumber;
            this.cardExpMonth = cardExpMonth;
            this.cardExpYear = cardExpYear;
            this.cardCvv = cardCvv;
            this.cardZip = cardZip;
            this.cardHolder = cardHolder;
        }


        public String getCardNumber() {
            return cardNumber;
        }

        public String getCardExpMonth() {
            return cardExpMonth;
        }

        public String getCardExpYear() {
            return cardExpYear;
        }

        public String getCardCvv() {
            return cardCvv;
        }

        public String getCardZip() {
            return cardZip;
        }

        public String getCardHolder() {
            return cardHolder;
        }
    }

}
