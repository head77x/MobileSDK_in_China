package com.xsolla.android.sdk.util.validator;


import android.widget.EditText;

public abstract class BaseValidator implements LocalValidator {

    protected String errorMsg;

    protected BaseValidator() {
        errorMsg = "Error";
    }

    protected BaseValidator(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    @Override
    public boolean validate(EditText editText) {
        String text = editText.getText().toString();
        boolean isValid = validate(text);
        if (!isValid)
            editText.setError(errorMsg);
        else
            editText.setError(null);
        return isValid;
    }
}
