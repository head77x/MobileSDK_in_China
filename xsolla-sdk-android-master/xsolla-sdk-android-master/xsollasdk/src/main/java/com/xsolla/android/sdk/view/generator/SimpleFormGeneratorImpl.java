package com.xsolla.android.sdk.view.generator;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;

import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.view.adapter.FormElementAdapter;

public class SimpleFormGeneratorImpl implements FormGenerator {

    @Override
    public View generate(Context context, XsollaForm xsollaForm, XsollaTranslations translations) {
        FormElementAdapter adapter = new FormElementAdapter(context, xsollaForm);
        return initLinearLayout(context, adapter);
    }

    private static View initListView(Context context, FormElementAdapter adapter) {
        ListView listView = new ListView(context);
        listView.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        listView.setAdapter(adapter);
        return listView;
    }

    private static View initLinearLayout(Context context, FormElementAdapter adapter) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(LinearLayout.VERTICAL);
        int padding = (int) context.getResources().getDimension(R.dimen.xsolla_base_16);
        linearLayout.setPadding(0, padding, 0, padding);
        for (int i = 0; i < adapter.getCount(); i++) {
            linearLayout.addView(adapter.getView(i, null, null));
        }
        return linearLayout;
    }

    @Override
    public String validate() {
        return null;
    }
}
