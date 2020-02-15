package com.xsolla.android.sdk.view.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.EditText;

public class XsollaEditText extends EditText {

    public XsollaEditText(Context context) {
        super(context);
    }

    public XsollaEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public XsollaEditText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override
    public void setError(CharSequence error, Drawable icon) {
        super.setError(error, icon);
    }
}
