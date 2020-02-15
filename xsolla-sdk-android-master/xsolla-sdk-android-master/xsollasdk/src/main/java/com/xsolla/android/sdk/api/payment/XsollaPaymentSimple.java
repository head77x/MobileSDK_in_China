package com.xsolla.android.sdk.api.payment;

import android.content.Context;

import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaForm.XsollaSimpleForm;
import com.xsolla.android.sdk.api.model.XsollaStatus;
import com.xsolla.android.sdk.api.model.XsollaStatus.XsollaSimpleStatus;
import com.xsolla.android.sdk.api.model.XsollaStatusText;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.util.DeviceInfo;

import org.json.JSONException;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;


/**
 * Simplified realization of XsollaPaymentImpl.class
 *
 * @see XsollaPaymentImpl
 */
public class XsollaPaymentSimple extends XsollaPaymentImpl {

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PRIVATE FIELDS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private SimplePaymentListener simpleListener;
    private XsollaForm xsollaForm;

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * INTERFACES
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public interface SimplePaymentListener {
        public abstract void onFormReceived(XsollaSimpleForm form);

        public abstract void onStatusReceived(XsollaStatusText status);

        public abstract void onErrorReceived(XsollaError error);
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * CONSTRUCTORS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    protected XsollaPaymentSimple(Context context, XsollaPayment.Params params) {
        super(context, params);
        this.setListener(fullListener);
    }

    protected XsollaPaymentSimple(Context context, XsollaPayment.Params params, boolean isSandboxModeEnabled) {
        super(context, params, isSandboxModeEnabled);
        this.setListener(fullListener);
    }

    /**
     * @param context               activity context
     * @param params                minimum required payment params
     * @param simplePaymentListener listener used to handle results
     */
    public XsollaPaymentSimple(Context context, XsollaPayment.Params params, SimplePaymentListener simplePaymentListener) {
        this(context, params);
        this.simpleListener = simplePaymentListener;
    }

    public XsollaPaymentSimple(Context context, XsollaPayment.Params params, SimplePaymentListener simplePaymentListener, boolean isSandboxModeEnabled) {
        this(context, params, isSandboxModeEnabled);
        this.simpleListener = simplePaymentListener;
    }


    private final XsollaPaymentListener fullListener = new XsollaPaymentListener() {
        @Override
        public void onTranslationsReceived(XsollaTranslations translations) {

        }

        @Override
        public void onFormReceived(XsollaForm form) {
            xsollaForm = form;
            simpleListener.onFormReceived(form.getSimple());
        }

        @Override
        public void onStatusReceived(XsollaStatus status) {
            simpleListener.onStatusReceived(status.getXsollaStatusText());
        }

        @Override
        public void onErrorReceived(XsollaError error) {
            simpleListener.onErrorReceived(error);
        }
    };

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * OVERRIDE METHODS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */

    /**
     * Method used to continue payment process
     *
     * @param updatedFields mast contain value with key received from XsollaSimpleForm.XsollaSimpleFormElement.getName
     * @see com.xsolla.android.sdk.api.model.XsollaFormElement.XsollaSimpleFormElement
     */
    @Override
    public void nextStep(HashMap<String, Object> updatedFields) {
        Set<Map.Entry<String, Object>> entries = updatedFields.entrySet();
        try {
            xsollaForm.updateElement(XsollaApiConst.RF_DFP, DeviceInfo.getEncoded(getContext()));
        } catch (UnsupportedEncodingException | JSONException e) {
            e.printStackTrace();
        }
        for (Map.Entry entry : entries) {
            xsollaForm.updateElement(entry.getKey().toString(), entry.getValue().toString());
        }
        super.nextStep(xsollaForm.getXpsMap());
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PROTECTED METHOD'S
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    protected XsollaForm getForm() {
        return xsollaForm;
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PUBLIC METHOD'S
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    protected void setSimpleListener(SimplePaymentListener simpleListener) {
        this.simpleListener = simpleListener;
    }

}
