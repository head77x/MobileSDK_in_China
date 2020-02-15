package com.xsolla.android.sdk.view;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.XsollaWallet;
import com.xsolla.android.sdk.api.XsollaError;
import com.xsolla.android.sdk.api.XsollaParameters;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatus;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.api.payment.XsollaPayment;
import com.xsolla.android.sdk.api.payment.XsollaPaymentImpl;
import com.xsolla.android.sdk.util.iconhelper.IconDrawable;
import com.xsolla.android.sdk.util.iconhelper.IconMaker;

import java.util.HashMap;

/**
 * Activity class - completely handle user payment process
 */
public class XsollaActivity extends ActionBarActivity
        implements FormFragment.OnFragmentInteractionListener,
        StatusFragment.OnFragmentInteractionListener,
        ErrorFragment.OnFragmentInteractionListener {

    final String TAG = getClass().getSimpleName();

    long startTime = 0;

    public static final String REQUEST_ID = "request_id";
    public static final int REQUEST_CODE = 9875;
    public static final String EXTRA_OBJECT_ID = "payment_result";
    public static final String ARG_TOKEN = "arg_token";
    public static final String ARG_REQUEST_PARAMS = "arg_request_params";
    public static final String ARG_IS_MODE_SANDBOX = "arg_is_mode_sandbox";

    private long mRequestId;
    private XsollaParameters mParameters;
    private XsollaPaymentImpl mPayment;
    private boolean mIsModeSandbox;

    private Fragment mContent;
    private FrameLayout mContainer;
    private TextView mProgressBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.xsolla_activity);

        mContainer = (FrameLayout) findViewById(R.id.container);
        mProgressBar = (TextView) findViewById(R.id.progressBar);
        mProgressBar.startAnimation(AnimationUtils.loadAnimation(this, R.anim.xsolla_rotation));
        initActionBar();
        showProgress();
        if (savedInstanceState != null) {
            mRequestId = savedInstanceState.getLong(REQUEST_ID);
            HashMap paramsMap = (HashMap) savedInstanceState.getSerializable(ARG_REQUEST_PARAMS);
            mIsModeSandbox = savedInstanceState.getBoolean(ARG_IS_MODE_SANDBOX, false);
            if (paramsMap != null)
                mParameters = new XsollaParameters(paramsMap);
            //Restore the fragment's instance
            mContent = getSupportFragmentManager().getFragment(
                    savedInstanceState, "mContent");
            initPayment(this, mParameters, getListener(), mIsModeSandbox);
            if (mContent != null) {
                getSupportFragmentManager()
                        .beginTransaction()
                        .replace(R.id.container, mContent)
                        .commitAllowingStateLoss();
                hideProgress();
            } else {
                mPayment.startPayment();
            }
        } else {
            if (getIntent() != null)
                if (getIntent().getExtras() != null) {
                    mParameters = new XsollaParameters((HashMap) getIntent().getExtras().getSerializable(ARG_REQUEST_PARAMS));
                    mIsModeSandbox = getIntent().getExtras().getBoolean(ARG_IS_MODE_SANDBOX, false);
                    initPayment(this, mParameters, getListener(), mIsModeSandbox);
                    mPayment.startPayment();
                }
        }
    }

    void initPayment(Context context, XsollaParameters parameters, XsollaPayment.XsollaPaymentListener listener, boolean isModeSandbox){
        XsollaPayment.Params params = new XsollaPayment.Params(XsollaWallet.Factory.createSimpleWallet(parameters.get("access_token").toString()));
        mPayment = new XsollaPaymentImpl(
                context,
                params,
                listener);
        mPayment.setModeSandbox(isModeSandbox);
        mPayment.setTranslationsRequired(true);
    }

    void initActionBar() {
        if(getSupportActionBar() == null) {
            Toolbar toolbar = (Toolbar) findViewById(R.id.my_awesome_toolbar);
            if (toolbar != null) {
                toolbar.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        onBackPressed();
                    }
                });
                toolbar.setVisibility(View.VISIBLE);
                setSupportActionBar(toolbar);
            }
        } else {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }

        getSupportActionBar().setLogo(new IconDrawable(this, IconMaker.IconValue.ic_arrowback)
                .colorRes(R.color.xsolla_text_main)
                .actionBarSize());

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(getResources().getColor(R.color.xsolla_darkpurple));
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                // do something useful
                onBackPressed();
                return(true);
        }

        return(super.onOptionsItemSelected(item));
    }

    @Override
    public void onClickPay(HashMap<String, Object> xpsMap) {
        showProgress();
        mPayment.nextStep(xpsMap);
    }

    @Override
    public void onClickComplete(long objectId) {
        finishWithResult(true, objectId);
    }


    @Override
    public void onClickClose(String errorMsg) {
        finishWithResult(false, new XsollaError(0, errorMsg).registerObject());
    }

    @Override
    public void onBackPressed() {
        //super.onBackPressed();
        finishWithResult(false, XsollaError.getCancelError().registerObject());
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        //Save the fragment's instance
        cancelPayment();
        outState.putLong(REQUEST_ID, mRequestId);
        outState.putSerializable(ARG_REQUEST_PARAMS, mParameters);
        outState.putBoolean(ARG_IS_MODE_SANDBOX, mIsModeSandbox);
        if (mContent != null) {
            getSupportFragmentManager().putFragment(outState, "mContent", mContent);
        }
    }

    private XsollaPayment.XsollaPaymentListener getListener() {
        return new XsollaPayment.XsollaPaymentListener() {

            private XsollaTranslations mTranslations;

            @Override
            public void onTranslationsReceived(XsollaTranslations translations) {
                mTranslations = translations;
            }

            @Override
            public void onFormReceived(XsollaForm form) {
                renderForm(form, mTranslations);
            }

            @Override
            public void onStatusReceived(XsollaStatus status) {
                renderStatusForm(status);
            }

            @Override
            public void onErrorReceived(XsollaError error) {
                endWithError(error);
            }
        };
    }

    void renderForm(XsollaForm form, XsollaTranslations translations) {
        if (form.isValidPaymentSystem()
                && form.getCurrentCommand() != XsollaForm.CurrentCommand.UNKNOWN) {
            getSupportActionBar().setTitle(translations.get(XsollaTranslations.PAYMENT_PAGE_TITLE));
            mContent = FormFragment.newInstance(form, translations);
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, mContent)
                    .commitAllowingStateLoss();
        } else {
            getSupportActionBar().setTitle(translations.get(XsollaTranslations.APP_ERROR_TITLE));
            String errorMsg = form.getXsollaError() == null ? null : form.getXsollaError().getErrorMessage();
            if(errorMsg == null || "".equals(errorMsg))
                errorMsg = translations.get(XsollaTranslations.API_ERROR_MESSAGE);
            mContent = ErrorFragment.newInstance(errorMsg);
            getSupportFragmentManager()
                    .beginTransaction()
                    .replace(R.id.container, mContent)
                    .commitAllowingStateLoss();
        }
        hideProgress();
    }

    void renderStatusForm(XsollaStatus xsollaStatus) {
        mContent = StatusFragment.newInstance(xsollaStatus);
        getSupportFragmentManager()
                .beginTransaction()
                .replace(R.id.container, mContent)
                .setCustomAnimations(android.R.animator.fade_in, android.R.animator.fade_out)
                .commitAllowingStateLoss();
        hideProgress();
    }

    private void showProgress() {
        mProgressBar.startAnimation(AnimationUtils.loadAnimation(this, R.anim.xsolla_rotation));
        mProgressBar.setVisibility(View.VISIBLE);
        mContainer.setVisibility(View.GONE);
    }

    void hideProgress() {
        mProgressBar.clearAnimation();
        mProgressBar.setVisibility(View.GONE);
        mContainer.setVisibility(View.VISIBLE);
    }

    private void endWithError(XsollaError error) {
        hideProgress();
        finishWithResult(false, error.registerObject());
    }

    private void finishWithResult(boolean isOk, long registeredObjectId) {
        cancelPayment();
        Bundle data = new Bundle();
        data.putLong(EXTRA_OBJECT_ID, registeredObjectId);
        Intent intent = new Intent();
        intent.putExtras(data);
        if (isOk)
            setResult(RESULT_OK, intent);
        else
            setResult(RESULT_CANCELED, intent);
        finish();
    }

    private void cancelPayment(){
        if(mPayment != null)
            mPayment.cancel();
    }
}
