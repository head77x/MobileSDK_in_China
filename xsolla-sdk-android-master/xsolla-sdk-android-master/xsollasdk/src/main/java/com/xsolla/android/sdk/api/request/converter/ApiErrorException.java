package com.xsolla.android.sdk.api.request.converter;

public class ApiErrorException extends Exception {

    public ApiErrorException() {
    }

    public ApiErrorException(String detailMessage) {
        super(detailMessage);
    }

    public ApiErrorException(String detailMessage, Throwable throwable) {
        super(detailMessage, throwable);
    }

    public ApiErrorException(Throwable throwable) {
        super(throwable);
    }

}
