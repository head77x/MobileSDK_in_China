package com.xsolla.android.sdk.util.validator;

public class MonthValidator extends BaseValidator {

    public MonthValidator() {
        errorMsg = "Invalid month";
    }

    public MonthValidator(String errorMsg) {
        super(errorMsg);
    }

    @Override
    public boolean validate(String s) {
        if (IntValidator.isInteger(s)) {
            int month = Integer.parseInt(s);
            return month <= 12 && month > 0;
        } else {
            return false;
        }
    }
}
