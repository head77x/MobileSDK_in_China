package com.xsolla.android.sdk.view;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBarActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.xsolla.android.sdk.R;
import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.model.XsollaStatus;
import com.xsolla.android.sdk.view.adapter.StatusElementAdapter;

import java.io.IOException;

public class StatusFragment extends Fragment implements View.OnClickListener {

    public final static String XSOLLA_STATUS = "xsolla_status";

    private XsollaStatus xsollaStatus;

    private TextView tvCompleteText, tvProductName;
    private LinearLayout llStatus;
    private Button btnComplete;

    private OnFragmentInteractionListener mListener;

    public static StatusFragment newInstance(XsollaStatus xsollaStatus) {
        StatusFragment fragment = new StatusFragment();
        fragment.xsollaStatus = xsollaStatus;
        return fragment;
    }

    public StatusFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // retain this fragment
        setRetainInstance(true);
        if (getArguments() != null) {
//            xsollaForm = getArguments().getString(ARG_PARAM1);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ((ActionBarActivity) getActivity()).getSupportActionBar().hide();
        View rootView = inflater.inflate(R.layout.xsolla_status_form, null);
        findView(rootView);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getActivity().getWindow();
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(getResources().getColor(R.color.xsolla_green_d));
        }
        return rootView;
    }

    private void findView(View rootView) {
        tvCompleteText = (TextView) rootView.findViewById(R.id.tvCompleteText);
        tvProductName = (TextView) rootView.findViewById(R.id.tvProductName);
        llStatus = (LinearLayout) rootView.findViewById(R.id.llStatus);
        btnComplete = (Button) rootView.findViewById(R.id.btnComplete);
    }

    private void initView(XsollaStatus xsollaStatus) {
        tvCompleteText.setText(xsollaStatus.getXsollaStatusText().getState());
        tvProductName.setText(xsollaStatus.getXsollaStatusText().getElementStringByKey(XsollaApiConst.R_PROJECT));//.setVisibility(View.GONE);
        btnComplete.setOnClickListener(this);

        StatusElementAdapter adapter = new StatusElementAdapter(getActivity(), xsollaStatus.getXsollaStatusText().getTextElements());
        for (int i = 0; i < adapter.getCount(); i++) {
            llStatus.addView(adapter.getView(i, null, null));
        }
    }

    public void onButtonPressed(long objectId) {
        if (mListener != null) {
            mListener.onClickComplete(objectId);
        }
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            mListener = (OnFragmentInteractionListener) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(activity.toString()
                    + " must implement OnFragmentInteractionListener");
        }
    }

    @Override
    public void onActivityCreated(@Nullable Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        if (savedInstanceState != null) {
            try {
                xsollaStatus = new XsollaStatus(savedInstanceState.getByteArray(XSOLLA_STATUS));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        initView(xsollaStatus);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        try {
            outState.putByteArray(XSOLLA_STATUS, xsollaStatus.getBytes());
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();
        mListener = null;
    }

    @Override
    public void onClick(View v) {
        onButtonPressed(xsollaStatus.getXsollaStatusData().registerObject());
    }

    public interface OnFragmentInteractionListener {
        public void onClickComplete(long resultObjectId);
    }

}
