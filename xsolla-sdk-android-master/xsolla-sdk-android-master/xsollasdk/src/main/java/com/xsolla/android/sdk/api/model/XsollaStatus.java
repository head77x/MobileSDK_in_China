package com.xsolla.android.sdk.api.model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.xsolla.android.sdk.api.XsollaApiConst;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

public class XsollaStatus extends XsollaApiModel {

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * CONSTANTS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public static final String S_GROUP = "group";
    public static final String S_INVOICE = "invoice";
    public static final String S_DATA = "statusData";
    public static final String S_TEXT = "text";
    public static final String ST_STATE = "state";
    public static final String ST_BACKURL = "backurl";
    public static final String ST_INFO = "info";
    public static final String STE_KEY = "key";
    public static final String STE_PREF = "pref";
    public static final String STE_PARAMETER = "parameter";
    public static final String STE_VALUE = "value";
    public static final String STE_NAME = "name";

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PRIVATE FIELDS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private String group;
    private String invoice;
    private XsollaStatusData xsollaStatusData;
    private XsollaStatusText xsollaStatusText;
    private JsonNode mRootNode;

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * CONSTRUCTORS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public XsollaStatus() {
        xsollaStatusText = new XsollaStatusText();
    }

    public XsollaStatus(byte[] rootNodeByte) throws IOException {
        this();
        ObjectMapper mapper = new ObjectMapper();
        parse(mapper.readTree(rootNodeByte));
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PUBLIC METHOD'S
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public XsollaStatusText getXsollaStatusText() {
        return xsollaStatusText;
    }

    public XsollaStatusData getXsollaStatusData() {
        return xsollaStatusData;
    }

    public boolean isDone() {
        return "done".equals(group);
    }


    public byte[] getBytes() throws JsonProcessingException {
        return new ObjectMapper().writeValueAsBytes(mRootNode);
    }

    /**
     * Method to get simplified version of current XsollaStatus
     *
     * @return simplified version of current XsollaStatus
     * @see com.xsolla.android.sdk.api.model.XsollaStatus.XsollaSimpleStatus
     */
    public XsollaSimpleStatus getSimple() {
        return new XsollaSimpleStatus();
    }

    @Override
    public XsollaApiModel parse(JsonNode rootNode) throws IOException {
        this.mRootNode = rootNode;
        JsonNode statusNode = rootNode.path(XsollaApiConst.R_STATUS);
        if (statusNode != null && !"null".equals(statusNode.asText())) {
            XsollaStatusText xsollaStatusText = this.getXsollaStatusText();
            this.group = statusNode.get(S_GROUP).asText("");
            this.invoice = statusNode.get(S_INVOICE).asText("");
            xsollaStatusData = new XsollaStatusData(statusNode.path(S_DATA));
            JsonNode statusTextNode = statusNode.path(S_TEXT);
            xsollaStatusText.setState(statusTextNode.get(ST_STATE).asText(""));
            xsollaStatusText.setBackUrl(statusTextNode.get(ST_BACKURL).asText(""));
            Iterator iterator = statusTextNode.path(ST_INFO).elements();
            while (iterator.hasNext()) {
                JsonNode elementNode = (JsonNode) iterator.next();
                XsollaStatusText.StatusTextElement statusTextElement = xsollaStatusText.createElement();
                Iterator elementIterator = elementNode.fields();
                while (elementIterator.hasNext()) {
                    Map.Entry<String, JsonNode> element = (Map.Entry<String, JsonNode>) elementIterator.next();
                    switch (element.getKey()) {
                        case STE_KEY:
                            statusTextElement.setKey(element.getValue().asText(""));
                            break;
                        case STE_PREF:
                            statusTextElement.setPref(element.getValue().asText(""));
                            break;
                        case STE_PARAMETER:
                            statusTextElement.setParameter(element.getValue().asText(""));
                            break;
                        case STE_VALUE:
                            statusTextElement.setValue(element.getValue().asText(""));
                            break;
                        case STE_NAME:
                            statusTextElement.setName(element.getValue().asText(""));
                            break;
                        default:
                    }
                }
                xsollaStatusText.addStatusTextElement(statusTextElement);
            }
        }
        return this;
    }

    @Override
    public String toString() {
        return "\nStatus{" +
                "statusText=" + xsollaStatusText +
                '}';
    }

    /**
     * Simplified version of XsollaStatus element
     *
     * @see com.xsolla.android.sdk.api.model.XsollaStatus
     */
    public class XsollaSimpleStatus {

    }
}
