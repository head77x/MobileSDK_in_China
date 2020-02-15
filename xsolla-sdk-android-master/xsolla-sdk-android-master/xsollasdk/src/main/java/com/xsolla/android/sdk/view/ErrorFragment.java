package com.xsolla.android.sdk.view;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

import com.xsolla.android.sdk.R;

public class ErrorFragment extends Fragment implements View.OnClickListener {
    private static final String ARG_ERR_MSG = "arg_err_msg";

    private String errMsg;

    private OnFragmentInteractionListener mListener;

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param errMsg msg to show user.
     * @return A new instance of fragment ErrorFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static ErrorFragment newInstance(String errMsg) {
        ErrorFragment fragment = new ErrorFragment();
        Bundle args = new Bundle();
        args.putString(ARG_ERR_MSG, errMsg);
        fragment.setArguments(args);
        return fragment;
    }

    public ErrorFragment() {
        // Required empty public constructor
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            errMsg = getArguments().getString(ARG_ERR_MSG);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.xsolla_fragment_error, container, false);
        TextView tvError = (TextView) rootView.findViewById(R.id.tvError);
        tvError.setText(errMsg);
        Button btnClose = (Button) rootView.findViewById(R.id.btnComplete);
        btnClose.setOnClickListener(this);
        return rootView;
    }

    public void onButtonClose(String errMsg) {
        if (mListener != null) {
            mListener.onClickClose(errMsg);
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
    public void onDetach() {
        super.onDetach();
        mListener = null;
    }

    @Override
    public void onClick(View v) {
        onButtonClose(errMsg);
    }

    public interface OnFragmentInteractionListener {
        public void onClickClose(String errorMsg);
    }

}
