package com.xsolla.android.sdk.util.validator;

public class SimpleValidator extends BaseValidator {

    public SimpleValidator() {
        errorMsg = "Invalid";
    }

    public SimpleValidator(String errorMsg) {
        super(errorMsg);
    }

    @Override
    public boolean validate(String s) {
        return s.length() > 0;
    }
}
