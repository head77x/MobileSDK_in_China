package com.xsolla.android.sdk.view.adapter;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.api.model.XsollaStatusText.StatusTextElement;

import java.util.ArrayList;

public class StatusElementAdapter extends BaseAdapter {

    private Context mContext;
    private ArrayList<StatusTextElement> mElements;
    int currentapiVersion = android.os.Build.VERSION.SDK_INT;

    public StatusElementAdapter(Context context, ArrayList<StatusTextElement> elements) {
        this.mContext = context;
        this.mElements = elements;
    }

    @Override
    public int getCount() {
        return mElements.size();
    }

    @Override
    public StatusTextElement getItem(int position) {
        return mElements.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        return renderSimple(position);
    }

    private View renderSimple(int position) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View convertView = inflater.inflate(R.layout.xsolla_status_element, null);

        StatusTextElement statusTextElement = getItem(position);

        TextView tvTitle = (TextView) convertView.findViewById(R.id.tvTitle);
        TextView tvValue = (TextView) convertView.findViewById(R.id.tvValue);
        tvTitle.setText(statusTextElement.getPref());
        tvValue.setText(statusTextElement.getValue());
        tvValue.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        tvValue.setSingleLine(true);
        tvValue.setMarqueeRepeatLimit(5);
        tvValue.setSelected(true);
        if (getCount() - position > 1)
            ((ViewGroup) convertView).addView(getSeparator());
        return convertView;
    }

    private View getSeparator() {
        View separator = new View(mContext);
        separator.setLayoutParams(new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 1, Gravity.BOTTOM));
        if (currentapiVersion >= Build.VERSION_CODES.JELLY_BEAN) {
            // Do something for froyo and above versions
            separator.setBackground(mContext.getResources().getDrawable(R.drawable.xsolla_dotted));
        } else {
            // do something for phones running an SDK before froyo
            separator.setBackgroundDrawable(mContext.getResources().getDrawable(R.drawable.xsolla_dotted));
        }
        return separator;
    }
}
