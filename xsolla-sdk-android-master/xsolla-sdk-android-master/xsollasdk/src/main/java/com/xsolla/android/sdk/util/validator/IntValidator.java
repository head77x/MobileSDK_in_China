package com.xsolla.android.sdk.util.validator;

public class IntValidator {
    public static boolean isInteger(String s) {
        try {
            Integer.parseInt(s);
        } catch (NumberFormatException e) {
            return false;
        }
        // only got here if we didn't return false
        return true;
    }
}
