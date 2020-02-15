package com.xsolla.android.sdk.util.validator;

import com.xsolla.android.sdk.view.widget.maskededittext.CCEditText;

public class CvvValidator extends BaseValidator {

    private CCEditText mCcEditText;
    private boolean mIsMandatory;

    public CvvValidator() {
        errorMsg = "CVV/CVV2 is invalid";
    }

    public CvvValidator(String errorMsg) {
        super(errorMsg);
    }


    public CvvValidator(CCEditText ccEditText, boolean isMandatory) {
        this.mCcEditText = ccEditText;
        this.mIsMandatory = isMandatory;
    }

    public CvvValidator(String errorMsg, CCEditText ccEditText, boolean isMandatory) {
        super(errorMsg);
        this.mCcEditText = ccEditText;
        this.mIsMandatory = isMandatory;
    }

    @Override
    public boolean validate(String s) {
        if (mCcEditText != null) {
            return mCcEditText.getCurrentType() == CCEditText.Type.MAESTRO || s.length() > 2 && s.length() < 5;
        } else {
            return s.length() > 2 && s.length() < 5;
        }
    }

}
