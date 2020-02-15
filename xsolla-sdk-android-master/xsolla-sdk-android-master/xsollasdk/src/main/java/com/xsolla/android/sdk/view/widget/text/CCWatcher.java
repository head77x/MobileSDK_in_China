package com.xsolla.android.sdk.view.widget.text;

import android.text.Editable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;

import com.xsolla.android.sdk.util.validator.BaseValidator;

public class CCWatcher extends BaseWatcher {

    final String TAG = "CCWatcher";

    String a;
    int keyDel;

    public CCWatcher(EditText editText, BaseValidator validator) {
        super(editText, validator);
    }


    @Override
    public void afterTextChanged(Editable s) {
        super.afterTextChanged(s);
        if (isFocusLoosed) {
            mValidator.validate(mEditText);
//            boolean isCardValid = mValidator.validate(mEditText.getText().toString().replaceAll("\\s", ""));
//            if (!isCardValid)
//                mEditText.setError(mValidator.getErrorMsg());
//            else
//                mEditText.setError(null);
        }
    }

    private void splitFour() {
        if (mEditText != null) {
            boolean flag = true;
            String eachBlock[] = mEditText.getText().toString().split(" ");
            for (int i = 0; i < eachBlock.length; i++) {
                if (eachBlock[i].length() > 4) {
                    flag = false;
                }
            }
            if (flag) {

                mEditText.setOnKeyListener(new View.OnKeyListener() {

                    @Override
                    public boolean onKey(View v, int keyCode, KeyEvent event) {

                        if (keyCode == KeyEvent.KEYCODE_DEL)
                            keyDel = 1;
                        return false;
                    }
                });

                if (keyDel == 0) {

                    if (((mEditText.getText().length() + 1) % 5) == 0) {
                        if (mEditText.getText().toString().split(" ").length <= 3) {
                            mEditText.setText(mEditText.getText() + " ");
                            mEditText.setSelection(mEditText.getText().length());
                        }
                    }
                    a = mEditText.getText().toString();
                } else {
                    a = mEditText.getText().toString();
                    keyDel = 0;
                }

            } else {
                mEditText.setText(a);
            }
        }
    }

}
