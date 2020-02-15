package com.xsolla.android.sdk.api.model;


import com.fasterxml.jackson.databind.JsonNode;
import com.xsolla.android.sdk.XsollaObject;

public class XsollaStatusData extends XsollaObject {

    public static final String SD_EMAIL = "email";
    public static final String SD_INVOICE = "invoice";
    public static final String SD_USER_ID = "v1";
    public static final String SD_STATE = "state";
    public static final String SD_STATETEXT = "stateText";
    public static final String SD_PID = "pid";
    public static final String SD_OUT = "out";

    private String email;
    private long invoice;
    private Status status;
    private String userId;
    private String currencyAmount;
    private long paymentSystemId;

    public XsollaStatusData(JsonNode statusDataNode) {
        this.email = statusDataNode.get(SD_EMAIL).asText("");
        this.invoice = statusDataNode.get(SD_INVOICE).asLong(0);
        this.userId = statusDataNode.get(SD_USER_ID).asText("");
        this.currencyAmount = statusDataNode.get(SD_OUT).asText("0.0");
        switch (statusDataNode.get(SD_STATE).asInt(0)) {
            case 1:
                status = Status.CANCELED;
                break;
            case 2:
                status = Status.INVOICE;
                break;
            case 3:
                status = Status.DONE;
                break;
            default:
                status = Status.UNKNOWN;
        }
    }

    public enum Status {
        INVOICE, DONE, CANCELED, UNKNOWN
    }

    public String getEmail() {
        return email;
    }

    public long getInvoice() {
        return invoice;
    }

    public Status getStatus() {
        return status;
    }

    public String getUserId() {
        return userId;
    }

    public String getCurrencyAmount() {
        return currencyAmount;
    }

    @Override
    public String toString() {
        return "XsollaStatusData{" +
                "email='" + email + '\'' +
                ", invoice=" + invoice +
                ", status=" + status +
                ", userId='" + userId + '\'' +
                ", currencyAmount='" + currencyAmount + '\'' +
                ", paymentSystemId=" + paymentSystemId +
                '}';
    }
}
