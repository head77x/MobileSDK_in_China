package com.xsolla.android.sdk.api.payment;

import android.content.Context;

import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.XsollaParameters;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatus;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.api.XsollaRestAdapter;

import java.util.HashMap;

import retrofit.RetrofitError;
import rx.Observable;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Func2;
import rx.schedulers.Schedulers;

/**
 * Basic realization XsollaPayment interface
 *
 * @see com.xsolla.android.sdk.api.payment.XsollaPayment
 */
public class XsollaPaymentImpl implements XsollaPayment {

    private Context mContext;
    private XsollaPaymentListener mXsollaPaymentListener;
    private XsollaPayment.Params mParams;
    private Subscriber subscriberToCancel;
    private boolean isTranslationsRequired = false;
    private boolean isSandbox = false;

    protected XsollaPaymentImpl(Context context, XsollaPayment.Params params) {
        this.mContext = context;
        this.mParams = params;
    }

    protected XsollaPaymentImpl(Context context, XsollaPayment.Params params, boolean isSandboxModeEnabled) {
        this(context, params);
        this.isSandbox = isSandboxModeEnabled;
    }

    public XsollaPaymentImpl(Context context, XsollaPayment.Params params, XsollaPaymentListener xsollaPaymentListener) {
        this(context, params);
        this.mXsollaPaymentListener = xsollaPaymentListener;
    }

    public XsollaPaymentImpl(Context context, XsollaPayment.Params params, XsollaPaymentListener xsollaPaymentListener, boolean isSandboxModeEnabled) {
        this(context, params, isSandboxModeEnabled);
        this.mXsollaPaymentListener = xsollaPaymentListener;
    }



    @Override
    public void startPayment() {
        if(mParams.getWallet().isModeSandbox())
            setModeSandbox(true);
        init(new XsollaParameters(mParams.getWallet().get()));
    }

    @Override
    public void nextStep(HashMap<String, Object> fields) {
        next(fields);
    }

    @Override
    public void status(String token, String invoice) {

    }

    @Override
    public void setModeSandbox(boolean isSandbox) {
        this.isSandbox = isSandbox;
    }

    protected void setListener(XsollaPaymentListener listener) {
        mXsollaPaymentListener = listener;
    }

    protected void init(XsollaParameters parameters) {
        XsollaRestAdapter.setSandbox(isSandbox);
        if(isTranslationsRequired) {
            subscriberToCancel = getTransFormSubscriber();
            Observable.combineLatest(
                    XsollaRestAdapter.getXsollaTranslationsObserver(parameters.get(XsollaApiConst.ACCESS_TOKEN).toString()),
                    XsollaRestAdapter.getXsollaFormObserver(parameters),
                    new Func2<XsollaTranslations, XsollaForm, Object>() {
                        @Override
                        public Object call(XsollaTranslations xsollaTranslations, XsollaForm xsollaForm) {
                            return new Object[]{xsollaTranslations, xsollaForm};
                        }
                    })
                    .subscribeOn(Schedulers.newThread())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe(subscriberToCancel);
        } else {
            next(parameters);
        }
    }

    protected void next(HashMap<String, Object> xpsMap) {
        XsollaParameters parameters = new XsollaParameters(mParams.getWallet().get());
        parameters.putAll(xpsMap);
        subscriberToCancel = getNextSubscriber();
        XsollaRestAdapter.getXsollaFormObserver(parameters)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(subscriberToCancel);
    }

    Subscriber<Object> getTransFormSubscriber() {
        return new Subscriber<Object>() {
            @Override
            public void onCompleted() {
            }

            @Override
            public void onError(Throwable e) {
                mXsollaPaymentListener.onErrorReceived(new XsollaError((RetrofitError) e));
            }

            @Override
            public void onNext(Object o) {
                Object[] in = (Object[]) o;
                mXsollaPaymentListener.onTranslationsReceived((XsollaTranslations) in[0]);
                mXsollaPaymentListener.onFormReceived((XsollaForm) in[1]);
            }
        };
    }

    Subscriber<XsollaForm> getNextSubscriber() {
        return new Subscriber<XsollaForm>() {
            @Override
            public void onCompleted() {
            }

            @Override
            public void onError(Throwable e) {
                mXsollaPaymentListener.onErrorReceived(new XsollaError((RetrofitError) e));
            }

            @Override
            public void onNext(XsollaForm xsollaForm) {
                subscriberToCancel = getStatusSubscriber();
                XsollaForm.CurrentCommand command = xsollaForm.getCurrentCommand();
                switch (command) {
                    case STATUS:
                        XsollaParameters parameters = new XsollaParameters(mParams.getWallet().get());
                        parameters.putAll(xsollaForm.getXpsMap());
                        XsollaRestAdapter.getXsollaStatusObserver(parameters)
                                .subscribeOn(Schedulers.newThread())
                                .observeOn(AndroidSchedulers.mainThread())
                                .subscribe(subscriberToCancel);
                        break;
                    case CHECK:
                    case FORM:
                        mXsollaPaymentListener.onFormReceived(xsollaForm);
                        break;
                    case UNKNOWN:
                        mXsollaPaymentListener.onErrorReceived(xsollaForm.getXsollaError());
                        break;
                    default:
                }
            }
        };
    }

    Subscriber<XsollaStatus> getStatusSubscriber() {
        return new Subscriber<XsollaStatus>() {
            @Override
            public void onCompleted() {

            }

            @Override
            public void onError(Throwable e) {
                mXsollaPaymentListener.onErrorReceived(new XsollaError((RetrofitError) e));
            }

            @Override
            public void onNext(XsollaStatus xsollaStatus) {
                mXsollaPaymentListener.onStatusReceived(xsollaStatus);
            }
        };
    }

    public void cancel() {
        if(subscriberToCancel != null)
            subscriberToCancel.unsubscribe();
    }

    public void setTranslationsRequired(boolean isTranslationsRequired) {
        this.isTranslationsRequired = isTranslationsRequired;
    }

    public Params getParams() {
        return mParams;
    }

    public Context getContext() {
        return mContext;
    }
}
