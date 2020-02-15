package com.xsolla.android.sdk.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.widget.TextView;

import com.xsolla.android.sdk.util.iconhelper.IconMaker;


public class IconTextView extends TextView {

    public IconTextView(Context context) {
        super(context);
        init();
    }

    public IconTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init();
    }

    public IconTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init();
    }

    private void init() {
        if (!isInEditMode())
            IconMaker.addIcons(this);
        else
            this.setText(this.getText());
    }

    @Override
    public void setText(CharSequence text, BufferType type) {
        super.setText(IconMaker.compute(text), type);
    }

    @Override
    protected void onDraw(@NonNull Canvas canvas) {
        if (getHeight() > getWidth()) {
            int yOffset = (getHeight() - getWidth()) / 2;
            canvas.translate(0, yOffset);
        }
        super.onDraw(canvas);
    }
}
