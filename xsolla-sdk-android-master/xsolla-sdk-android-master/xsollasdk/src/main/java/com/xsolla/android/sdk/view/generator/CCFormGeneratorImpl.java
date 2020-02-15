package com.xsolla.android.sdk.view.generator;

import android.content.Context;
import android.text.Editable;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaFormElement;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.util.validator.BaseValidator;
import com.xsolla.android.sdk.util.validator.CCValidator;
import com.xsolla.android.sdk.util.validator.CvvValidator;
import com.xsolla.android.sdk.util.validator.MonthValidator;
import com.xsolla.android.sdk.util.validator.SimpleValidator;
import com.xsolla.android.sdk.util.validator.YearValidator;
import com.xsolla.android.sdk.util.validator.ZipValidator;
import com.xsolla.android.sdk.view.widget.maskededittext.CCEditText;
import com.xsolla.android.sdk.view.widget.text.BaseWatcher;

import java.util.ArrayList;

public class CCFormGeneratorImpl implements FormGenerator {


    ArrayList<BaseWatcher> watchers;
    XsollaForm xsollaForm;

    public CCFormGeneratorImpl() {
        watchers = new ArrayList<>(4);
    }

    @Override
    public View generate(Context context, final XsollaForm xsollaForm, XsollaTranslations translations) {
        int widthPixels = context.getResources().getDisplayMetrics().widthPixels;
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View rootView = inflater.inflate(R.layout.xsolla_form_cc, null);
        rootView.setLayoutParams(new FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT, Gravity.CENTER_HORIZONTAL));

        this.xsollaForm = xsollaForm;

        XsollaFormElement description = xsollaForm.getItem(XsollaApiConst.DESCRIPTION);
        TextView tvDescription = (TextView) rootView.findViewById(R.id.tvDescription);
        if (description == null) {
            tvDescription.setVisibility(View.GONE);
        } else {
            tvDescription.setText(description.getTitle());
        }


        XsollaFormElement cardNumber = xsollaForm.getItem(XsollaApiConst.CARD_NUMBER);
        cardNumber.setExample("");
        CCEditText edCardNumber = (CCEditText) rootView.findViewById(R.id.edCardNumber);
        TextView tvCardNumber = (TextView) rootView.findViewById(R.id.tvCardNumber);
        tvCardNumber.setText(translations.get(XsollaTranslations.FORM_CC_CARD_NUMBER));
        initField(cardNumber,
                edCardNumber,
                tvCardNumber,
                new CCValidator(),
                translations.get(XsollaTranslations.VALIDATION_MESSAGE_CARDNUMBER));


        TextView tvExpirationDate = (TextView) rootView.findViewById(R.id.tvExpirationDate);
        tvExpirationDate.setText(translations.get(XsollaTranslations.FORM_CC_EXP_DATE));

        XsollaFormElement cardMonth = xsollaForm.getItem(XsollaApiConst.CARD_EXP_MONTH);
        EditText edMonth = (EditText) rootView.findViewById(R.id.edMonth);
        initField(cardMonth,
                edMonth,
                null,
                new MonthValidator(),
                translations.get(XsollaTranslations.VALIDATION_MESSAGE_CARD_MONTH));

        XsollaFormElement cardYear = xsollaForm.getItem(XsollaApiConst.CARD_EXP_YEAR);
        EditText edYear = (EditText) rootView.findViewById(R.id.edYear);
        initField(cardYear,
                edYear,
                null,
                new YearValidator(),
                translations.get(XsollaTranslations.VALIDATION_MESSAGE_CARD_YEAR));

        XsollaFormElement cardCvv = xsollaForm.getItem(XsollaApiConst.CARD_CVV);
        EditText edCvv = (EditText) rootView.findViewById(R.id.edCvv);
        TextView tvCvv = (TextView) rootView.findViewById(R.id.tvCvv);
        initField(cardCvv,
                edCvv,
                tvCvv,
                new CvvValidator(edCardNumber, cardNumber.isMandatory()),
                translations.get(XsollaTranslations.VALIDATION_MESSAGE_CVV));

        XsollaFormElement cardZipCode = xsollaForm.getItem(XsollaApiConst.CARD_ZIP);
        EditText edZipCode = (EditText) rootView.findViewById(R.id.edZipCode);
        TextView tvZipCode = (TextView) rootView.findViewById(R.id.tvZipCode);
        initField(cardZipCode,
                edZipCode,
                tvZipCode,
                new ZipValidator(),
                "Zip is " + translations.get(XsollaTranslations.VALIDATION_MESSAGE_REQUIRED).toLowerCase());

        XsollaFormElement cardHolder = xsollaForm.getItem(XsollaApiConst.CARD_HOLDER);
        EditText edCardHolder = (EditText) rootView.findViewById(R.id.edCardHolder);
        TextView tvCardHolder = (TextView) rootView.findViewById(R.id.tvCardHolder);
        initField(cardHolder,
                edCardHolder,
                tvCardHolder,
                new SimpleValidator(),
                "Name is " + translations.get(XsollaTranslations.VALIDATION_MESSAGE_REQUIRED).toLowerCase());


        XsollaFormElement allowSubscription = xsollaForm.getItem(XsollaApiConst.ALLOW_SUBSCRIPTION);
        if(allowSubscription != null) {
            CheckBox checkBox = (CheckBox) rootView.findViewById(R.id.checkBox);
            checkBox.setTag(allowSubscription.getName());
            checkBox.setText(allowSubscription.getTitle());
            checkBox.setChecked(false);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                @Override
                public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                    xsollaForm.updateElement(buttonView.getTag().toString(), isChecked ? "1" : "0");
                }
            });
        }
        return rootView;
    }

    private void initField(XsollaFormElement element, EditText editText, TextView textView, BaseValidator validator, String errorMsg) {
        if (element != null) {
            ((View) editText.getParent()).setVisibility(View.VISIBLE);
            if (textView != null)
                textView.setText(element.getTitle());
            editText.setTag(element.getName());
            if (!"".equals(element.getExample()))
                editText.setHint(element.getExample());
            editText.invalidate();
            validator.setErrorMsg(errorMsg);
            addWatcher(xsollaForm, editText, validator);
        }
    }

    private BaseWatcher addWatcher(final XsollaForm xsollaForm, EditText editText, BaseValidator validator) {
        BaseWatcher watcher = new BaseWatcher(editText, validator) {
            @Override
            public void afterTextChanged(Editable s) {
                super.afterTextChanged(s);
                xsollaForm.updateElement(mEditText.getTag().toString(), s.toString());
            }
        };
        editText.addTextChangedListener(watcher);
        watchers.add(watcher);
        return watcher;
    }

    @Override
    public String validate() {
        for (BaseWatcher bw : watchers) {
            if (!bw.validate())
                return bw.getErrorMessage();
        }
        return null;
    }

}
