package com.xsolla.android.sdk.view;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.util.DeviceInfo;
import com.xsolla.android.sdk.view.generator.CCFormGeneratorImpl;
import com.xsolla.android.sdk.view.generator.FormGenerator;
import com.xsolla.android.sdk.view.generator.SimpleFormGeneratorImpl;

import org.json.JSONException;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.HashMap;

import rx.Observable;
import rx.Subscriber;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;

public class FormFragment extends Fragment implements View.OnClickListener {
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_XSOLLA_FORM = "xsolla_form";
    private static final String ARG_XSOLLA_TRANSLATIONS = "xsolla_translations";


    /* * * * * * * * * * * * * * * * * * * * * * * * *
    *  DATA
    * * * * * * * * * * * * * * * * * * * * * * * * * */
    private XsollaTranslations mTranslations;
    private XsollaForm mXsollaForm;
    private FormGenerator mFormGenerator;

    /* * * * * * * * * * * * * * * * * * * * * * * * *
    *  VIEW
    * * * * * * * * * * * * * * * * * * * * * * * * * */
    private ScrollView scrollView;
    private FrameLayout formContainer;
    private ImageView ivPaymentSystem;
    private LinearLayout llError;
    private TextView tvPaymentSystem, tvTotal, tvEula, mTvError,
    /*SUPPORT TV*/ tvSupportPhone, tvNeedHelp, tvContactUs, tvSupportEmail, tvCustomerSupport;
    private Button button;


    private OnFragmentInteractionListener mListener;


    public static FormFragment newInstance(XsollaForm xsollaForm, XsollaTranslations translations) {
        FormFragment fragment = new FormFragment();
        fragment.mXsollaForm = xsollaForm;
        fragment.mTranslations = translations;
        return fragment;
    }

    public FormFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // retain this fragment
        setRetainInstance(true);
        if (getArguments() != null) {
//            xsollaForm = getArguments().getString(ARG_PARAM1);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.xsolla_payment_form, null);
        findView(rootView);
        return rootView;
    }

    private void findView(View rootView) {
        scrollView = (ScrollView) rootView.findViewById(R.id.scrollView);

        llError = (LinearLayout) rootView.findViewById(R.id.llError);
        mTvError = (TextView) rootView.findViewById(R.id.tvError);
        formContainer = (FrameLayout) rootView.findViewById(R.id.formContainer);
        ivPaymentSystem = (ImageView) rootView.findViewById(R.id.ivPaymentSystem);
        tvPaymentSystem = (TextView) rootView.findViewById(R.id.tvPaymentSystem);
        tvTotal = (TextView) rootView.findViewById(R.id.tvTotal);
        tvEula = (TextView) rootView.findViewById(R.id.tvEula);
        button = (Button) rootView.findViewById(R.id.btnPay);

        tvSupportPhone = (TextView) rootView.findViewById(R.id.tvSupportPhone);
        tvNeedHelp = (TextView) rootView.findViewById(R.id.tvNeedHelp);
        tvContactUs = (TextView) rootView.findViewById(R.id.tvContactUs);
        tvSupportEmail = (TextView) rootView.findViewById(R.id.tvSupportEmail);
        tvCustomerSupport = (TextView) rootView.findViewById(R.id.tvCustomerSupport);
    }

    private void initView(XsollaForm xsollaForm, XsollaTranslations translations) {
        button.setOnClickListener(this);

        loadImage(ivPaymentSystem, "https:" + xsollaForm.getIconUrl());

        if (xsollaForm.getXsollaError() != null)
            showError(xsollaForm.getXsollaError().getErrorMessage());

        tvPaymentSystem.setText(xsollaForm.getTitle());
        tvTotal.setText(translations.get(XsollaTranslations.TOTAL) + " " + xsollaForm.getSumTotal());
        //switch (xsollaForm.)
        String eula = "";
        boolean isCcRender = xsollaForm.getCurrentCommand() == XsollaForm.CurrentCommand.FORM && xsollaForm.isValidPaymentSystem();
        if (isCcRender) {
            mFormGenerator = new CCFormGeneratorImpl();
            XsollaUIHelper.replaceSingleView(formContainer,
                    mFormGenerator.generate(getActivity(), xsollaForm, translations));
            eula = translations.get(XsollaTranslations.FORM_CC_EULA);
        } else {
            mFormGenerator = new SimpleFormGeneratorImpl();
            XsollaUIHelper.replaceSingleView(formContainer,
                    mFormGenerator.generate(getActivity(), xsollaForm, translations));
            eula = xsollaForm.getInstruction();
        }

        tvEula.setVisibility(View.VISIBLE);
        tvEula.setText(Html.fromHtml(eula));
        tvEula.setMovementMethod(LinkMovementMethod.getInstance());
        button.setText(translations.get(XsollaTranslations.FORM_CONTINUE));

        tvSupportPhone.setText(translations.get(XsollaTranslations.SUPPORT_PHONE));
        tvNeedHelp.setText(translations.get(XsollaTranslations.SUPPORT_NEED_HELP));
        String contactUs = "<a href=\"http://help.xsolla.com/\" data-translate=\"support_contact_us\" class=\"ng-scope\">" + translations.get(XsollaTranslations.SUPPORT_CONTACT_US) + "</a>";
        tvContactUs.setText(Html.fromHtml(contactUs));
        tvSupportEmail.setText("support@xsolla.com");
        tvCustomerSupport.setText(translations.get(XsollaTranslations.SUPPORT_CUSTOMER_SUPPORT));

        tvSupportPhone.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onClickPhone(((TextView) v).getText().toString());
            }
        });
        tvSupportEmail.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onClickEmail(((TextView) v).getText().toString());
            }
        });
    }

    void loadImage(final ImageView imageView, final String imageUrl) {

        Observable<Bitmap> bitmapObservable = Observable.create(new Observable.OnSubscribe<Bitmap>() {
            @Override
            public void call(Subscriber<? super Bitmap> subscriber) {
                subscriber.onStart();
                try {
                    URL url = new URL(imageUrl);
                    final Bitmap bmp = BitmapFactory.decodeStream(url.openConnection().getInputStream());
                    subscriber.onNext(bmp);
                    subscriber.onCompleted();
                } catch (IOException e) {
                    subscriber.onError(e);
                }
            }
        });

        bitmapObservable
                .subscribeOn(Schedulers.newThread())
                .cache()
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Subscriber<Bitmap>() {

                    @Override
                    public void onCompleted() {

                    }

                    @Override
                    public void onError(Throwable e) {
                        e.printStackTrace();
                    }

                    @Override
                    public void onNext(Bitmap bitmap) {
                        imageView.setImageBitmap(bitmap);
                    }


                });

    }

    public void onButtonPressed(HashMap<String, Object> xpsMap) {
        if (mListener != null) {
            String errorMsg = mFormGenerator.validate();
            if(errorMsg == null)
                mListener.onClickPay(xpsMap);
            else
                Toast.makeText(getActivity(), errorMsg, Toast.LENGTH_SHORT).show();
        }
    }

    public void onClickPhone(String telPhone) {
        if (getActivity() != null) {
            Intent intent = new Intent(Intent.ACTION_DIAL, Uri.parse("tel:" + telPhone));
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(intent);
        }
    }

    public void onClickEmail(String email) {
        if (getActivity() != null) {
            Intent emailIntent = new Intent(Intent.ACTION_SENDTO, Uri.fromParts(
                    "mailto", email, null));
            emailIntent.putExtra(Intent.EXTRA_SUBJECT, "Need help");
            startActivity(Intent.createChooser(emailIntent, "Send email..."));
        }
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            mListener = (OnFragmentInteractionListener) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(activity.toString()
                    + " must implement OnFragmentInteractionListener");
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mListener = null;
    }

    @Override
    public void onClick(View v) {
        try {
            mXsollaForm.updateElement(XsollaApiConst.RF_DFP, DeviceInfo.getEncoded(getActivity()));
        } catch (UnsupportedEncodingException | JSONException e) {
            e.printStackTrace();
        }
        onButtonPressed(mXsollaForm.getXpsMap());
    }

    @Override
    public void onActivityCreated(final @Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (savedInstanceState != null) {
            try {
                mTranslations = new XsollaTranslations(savedInstanceState.getByteArray(ARG_XSOLLA_TRANSLATIONS));
                mXsollaForm = new XsollaForm(savedInstanceState.getByteArray(ARG_XSOLLA_FORM));
                initView(mXsollaForm, mTranslations);
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            initView(mXsollaForm, mTranslations);
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        try {
            outState.putByteArray(ARG_XSOLLA_TRANSLATIONS, mTranslations.getByte());
            outState.putSerializable(ARG_XSOLLA_FORM, mXsollaForm.getByte());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void showError(String errMsg) {
        scrollView.scrollTo(0, 0);
        mTvError.setText(errMsg);
        llError.setVisibility(View.VISIBLE);
    }

    public void renderForm(XsollaForm xsollaForm, XsollaTranslations translations) {
        mXsollaForm = xsollaForm;
        scrollView.scrollTo(0, 0);
        tvEula.setVisibility(View.GONE);
        mFormGenerator = new SimpleFormGeneratorImpl();
        XsollaUIHelper.replaceSingleView(formContainer,
                mFormGenerator.generate(getActivity(), xsollaForm, translations));
    }

    public interface OnFragmentInteractionListener {
        public void onClickPay(HashMap<String, Object> xpsMap);
    }

}
