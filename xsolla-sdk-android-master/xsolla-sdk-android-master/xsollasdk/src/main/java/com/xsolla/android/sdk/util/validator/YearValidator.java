package com.xsolla.android.sdk.util.validator;

import java.util.Calendar;

public class YearValidator extends BaseValidator {

    public YearValidator() {
        errorMsg = "Invalid year";
    }

    public YearValidator(String errorMsg) {
        super(errorMsg);
    }

    @Override
    public boolean validate(String s) {
        if (IntValidator.isInteger(s)) {
            int year = Integer.parseInt(s);
            year = year < 1000 ? 2000 + year : year;
            Calendar calendar = Calendar.getInstance();
            int currentYear = calendar.get(Calendar.YEAR);
            int validYear = currentYear + 15;
            return year >= currentYear && year <= validYear;
        } else {
            return false;
        }
    }
}
