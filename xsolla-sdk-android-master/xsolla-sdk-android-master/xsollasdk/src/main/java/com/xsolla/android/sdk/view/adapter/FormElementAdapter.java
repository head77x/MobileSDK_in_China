package com.xsolla.android.sdk.view.adapter;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;

import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaFormElement;

import java.util.ArrayList;

public class FormElementAdapter extends BaseAdapter {

    final String TAG = getClass().getSimpleName();

    private Context mContext;
    private XsollaForm mXsollaForm;
    ArrayList<XsollaFormElement> arrayList;

    public FormElementAdapter(Context context, XsollaForm xsollaForm) {
        this.mContext = context;
        this.mXsollaForm = xsollaForm;
        arrayList = xsollaForm.getVisible();
    }

    @Override
    public int getCount() {
        return mXsollaForm.getVisible().size();
    }

    @Override
    public XsollaFormElement getItem(int position) {
        return arrayList.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public int getItemViewType(int position) {
        return getItem(position).getType();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        return showView(position);
    }

    private View showView(int position) {
        switch (getItemViewType(position)) {
            case XsollaFormElement.TYPE_HIDDEN:
                return renderSimple(position);
            case XsollaFormElement.TYPE_TEXT:
                return renderText(position);
            case XsollaFormElement.TYPE_SELECT:
                return renderSelect(position);
            case XsollaFormElement.TYPE_VISIBLE:
                return renderSimple(position);
            case XsollaFormElement.TYPE_TABLE:
                return renderSimple(position);
            case XsollaFormElement.TYPE_CHECK:
                return renderCheckbox(position);
            case XsollaFormElement.TYPE_LABEL:
                return renderLabel(position);
            default:
                return renderSimple(position);
        }
    }

    private View renderSimple(int position) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View convertView = inflater.inflate(R.layout.xsolla_form_element_simple, null);

        XsollaFormElement xsollaFormElement = getItem(position);

        TextView tvTitle = (TextView) convertView.findViewById(R.id.text1);
        TextView tvValue = (TextView) convertView.findViewById(R.id.text2);
        tvTitle.setText(xsollaFormElement.getName() + " " + xsollaFormElement.getTitle());
        tvValue.setText(xsollaFormElement.getType() + " " + xsollaFormElement.getValue());
        return convertView;
    }

    private View renderText(int position) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View convertView = inflater.inflate(R.layout.xsolla_form_element_text, null);

        TextView tvTitle = (TextView) convertView.findViewById(R.id.text1);
        final EditText editText = (EditText) convertView.findViewById(R.id.editText);
        XsollaFormElement xsollaFormElement = getItem(position);
        tvTitle.setText(xsollaFormElement.getTitle());
        editText.setTag(xsollaFormElement.getName());
        editText.setHint(xsollaFormElement.getExample());
        if (!"".equals(xsollaFormElement.getValue()))
            editText.setText(xsollaFormElement.getValue());
        TextWatcher watcher = null;
        editText.addTextChangedListener(new MyTextWatcher(editText));
        if (watcher != null) {
            editText.addTextChangedListener(watcher);
        }
        return convertView;
    }

    class MyTextWatcher implements TextWatcher {

        private EditText mEditText;

        public MyTextWatcher(EditText editText) {
            mEditText = editText;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int start, int count, int after) {

        }

        @Override
        public void onTextChanged(CharSequence s, int start, int before, int count) {

        }

        @Override
        public void afterTextChanged(Editable s) {
            mXsollaForm.updateElement(mEditText.getTag().toString(), s.toString());
        }
    }

    private View renderCheckbox(int position) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View convertView = inflater.inflate(R.layout.xsolla_form_element_check, null);

        CheckBox checkBox = (CheckBox) convertView.findViewById(R.id.checkBox);
        XsollaFormElement xsollaFormElement = getItem(position);

        checkBox.setTag(xsollaFormElement.getName());
        checkBox.setText(xsollaFormElement.getTitle());
        checkBox.setChecked(false);
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                mXsollaForm.updateElement(buttonView.getTag().toString(), isChecked ? "1" : "0");
            }
        });
        return convertView;
    }

    private View renderLabel(int position) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View convertView = inflater.inflate(R.layout.xsolla_form_element_label, null);

        TextView textView = (TextView) convertView.findViewById(R.id.text1);
        XsollaFormElement xsollaFormElement = getItem(position);

        textView.setText(xsollaFormElement.getTitle());
        return convertView;
    }

    private View renderSelect(int position) {
        LayoutInflater inflater = (LayoutInflater) mContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View convertView = inflater.inflate(R.layout.xsolla_form_element_select, null);

        TextView textView = (TextView) convertView.findViewById(R.id.text1);
        Spinner spinner = (Spinner) convertView.findViewById(R.id.spinner);
        final XsollaFormElement xsollaFormElement = getItem(position);

        textView.setText(xsollaFormElement.getTitle());
        spinner.setTag(xsollaFormElement.getName());
        ArrayAdapter<XsollaFormElement.Option> spinnerArrayAdapter
                = new ArrayAdapter<>(mContext, android.R.layout.simple_spinner_item, xsollaFormElement.getOptions()); //selected item will look like a spinner set from XML
        spinnerArrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        spinner.setAdapter(spinnerArrayAdapter);
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                                              @Override
                                              public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                                                  mXsollaForm.updateElement(parent.getTag().toString(), xsollaFormElement.getOptions().get(position).getValue());
                                              }

                                              @Override
                                              public void onNothingSelected(AdapterView<?> parent) {

                                              }
                                          }
        );
        mXsollaForm.updateElement(xsollaFormElement.getName(), xsollaFormElement.getOptions().get(0).getValue());
        return convertView;
    }
}
