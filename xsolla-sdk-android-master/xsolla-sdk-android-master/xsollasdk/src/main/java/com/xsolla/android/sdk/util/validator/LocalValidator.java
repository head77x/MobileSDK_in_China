package com.xsolla.android.sdk.util.validator;


import android.widget.EditText;

public interface LocalValidator {

    public boolean validate(String s);

    public boolean validate(EditText editText);

}
