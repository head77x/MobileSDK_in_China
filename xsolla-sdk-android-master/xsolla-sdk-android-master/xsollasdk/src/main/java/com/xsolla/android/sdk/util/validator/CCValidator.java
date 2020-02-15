package com.xsolla.android.sdk.util.validator;


public class CCValidator extends BaseValidator {

    public CCValidator() {
        errorMsg = "Please enter a valid credit card number";
    }

    public CCValidator(String errorMsg) {
        super(errorMsg);
    }

    @Override
    public boolean validate(String s) {
        s = s.replaceAll("\\s", "");
        return checkLuhn(strToIntArr(s));
    }

    public int[] strToIntArr(String intString) {
        String arr[] = intString.split("");
        int digits[] = new int[arr.length - 1];
        for (int i = 1; i < arr.length; i++) {
            digits[i - 1] = Integer.parseInt(arr[i]);
        }
        return digits;
    }

    public static boolean checkLuhn(int[] digits) {
        if (digits.length < 12)
            return false;

        int sum = 0;
        int length = digits.length;
        for (int i = 0; i < length; i++) {

            // get digits in reverse order
            int digit = digits[length - i - 1];

            // every 2nd number multiply with 2
            if (i % 2 == 1) {
                digit *= 2;
            }
            sum += digit > 9 ? digit - 9 : digit;
        }
        return sum % 10 == 0;
    }


}
