package com.xsolla.android.sdk.view.generator;

import android.content.Context;
import android.view.View;

import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaTranslations;

public interface FormGenerator {
    public abstract View generate(Context context, XsollaForm form, XsollaTranslations translations);

    public abstract String validate();
}
