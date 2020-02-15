package com.xsolla.android.sdk.api;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.xsolla.android.sdk.XsollaObject;

import retrofit.RetrofitError;

public class XsollaError extends XsollaObject {

    private Source errorSource;
    private int errorCode;
    private String errorMessage;


    enum Source {
        XSOLLA_API, APP_API, HTTP, NETWORK, CANCEL, UNEXPECTED
    }

    public XsollaError(){
        this.errorSource = Source.APP_API;
    }

    public XsollaError(int errorCode, String errorMessage) {
        this.errorSource = Source.UNEXPECTED;
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    private XsollaError(Source source) {
        this.errorSource = source;
    }

    private XsollaError(Source source, String errorMessage) {
        this.errorSource = source;
        this.errorMessage = errorMessage;
    }


    public static XsollaError getCancelError() {
        return new XsollaError(Source.CANCEL);
    }

    public static XsollaError getUnsuportedError() {
        return new XsollaError(Source.XSOLLA_API, "Wrong Payment System");
    }

    /**
     * Generate XSOLLA_API error from JSON
     *
     * @param errorNode Json description of Xsolla XSOLLA_API error
     */
    public XsollaError(JsonNode errorNode) {
        this.errorSource = Source.XSOLLA_API;
        if (errorNode.getNodeType() == JsonNodeType.ARRAY) {
            this.errorCode = errorNode.get(0).get("attributes").get("code").asInt(1);
            this.errorMessage = errorNode.get(0).get("value").asText();
        } else {
            this.errorCode = 0;
            this.errorMessage = errorNode.asText();
        }

    }

    public XsollaError(RetrofitError e) {
        if (e.getResponse() != null) {
            if (e.getResponse().getStatus() != 200) {
                this.errorSource = Source.HTTP;
                this.errorCode = e.getResponse().getStatus();
                this.errorMessage = e.getResponse().getReason();
            } else {
                String s[] = e.getMessage().split(":");
                if (s.length > 2) {
                    this.errorSource = Source.XSOLLA_API;
                    this.errorCode = Integer.parseInt(s[1].trim());
                    this.errorMessage = s[2];
                } else {
                    this.errorSource = Source.XSOLLA_API;
                    this.errorCode = 0;
                    this.errorMessage = e.getMessage();
                }
            }
        } else {
            this.errorSource = Source.NETWORK;
            this.errorCode = 0;
            this.errorMessage = e.getMessage();
        }
    }

    public static XsollaError getRegisteredError(long requestId) {
        return (XsollaError) getRegisteredObject(requestId);
    }

    public Source getReason() {
        return errorSource;
    }

    public int getErrorCode() {
        return errorCode;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    @Override
    public String toString() {
        return "XsollaError{" +
                "errorSource=" + errorSource +
                ", errorCode=" + errorCode +
                ", errorMessage='" + errorMessage + '\'' +
                '}';
    }
}
