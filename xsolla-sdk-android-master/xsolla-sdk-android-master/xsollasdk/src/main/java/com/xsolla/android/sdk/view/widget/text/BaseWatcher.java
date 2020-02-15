package com.xsolla.android.sdk.view.widget.text;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;

import com.xsolla.android.sdk.util.validator.BaseValidator;

public class BaseWatcher implements TextWatcher, View.OnFocusChangeListener {

    protected EditText mEditText;
    protected BaseValidator mValidator;
    protected boolean isFocusLoosed = false;

    public BaseWatcher(EditText editText, BaseValidator validator) {
        this.mEditText = editText;
        this.mValidator = validator;
        mEditText.setOnFocusChangeListener(this);
    }

    @Override
    public void beforeTextChanged(CharSequence s, int start, int count, int after) {

    }

    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {

    }

    @Override
    public void afterTextChanged(Editable s) {
        if (isFocusLoosed) {
//            boolean isCardValid = mValidator.validate(s.toString());
//            if (!isCardValid)
//                mEditText.setError(mValidator.getErrorMsg());
//            else
//                mEditText.setError(null);
            validate();
        }
    }

    @Override
    public void onFocusChange(View v, boolean hasFocus) {
        if (!isFocusLoosed && !hasFocus) {//!isFocusLoosed &&
            isFocusLoosed = true;
            validate();
        }
    }

    public String getErrorMessage() {
        return mValidator.getErrorMsg();
    }

    public boolean validate() {
        return mValidator.validate(mEditText);
    }

}
