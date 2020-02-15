package com.xsolla.android.sdk.view;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;

import com.xsolla.android.sdk.api.XsollaParameters;

public class XsollaUIHelper {

    public static void startXsollaActivity(Activity activity, XsollaParameters parameters, boolean isModeSandbox) {
        Intent intent = new Intent(activity, XsollaActivity.class);
        intent.putExtra(XsollaActivity.ARG_REQUEST_PARAMS, parameters);
        intent.putExtra(XsollaActivity.ARG_IS_MODE_SANDBOX, isModeSandbox);
        activity.startActivityForResult(intent, XsollaActivity.REQUEST_CODE);
    }

    public static void replaceSingleView(ViewGroup container, View newContent) {
        container.removeAllViews();
        container.addView(newContent);
    }
}
