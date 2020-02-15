package com.xsolla.android.sdk.util.validator;

import com.xsolla.android.sdk.view.widget.maskededittext.CCEditText;

public class ZipValidator extends BaseValidator {

    private boolean mIsMandatory;

    public ZipValidator() {
        errorMsg = "Zip is invalid";
    }

    public ZipValidator(String errorMsg) {
        super(errorMsg);
    }

    @Override
    public boolean validate(String s) {
            return true;
    }

}
