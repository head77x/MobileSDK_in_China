package com.xsolla.android.sdk.api.model;

import java.util.ArrayList;
import java.util.HashMap;

public class XsollaStatusText {

    final String TAG = getClass().getSimpleName();

    private String state;
    private String backUrl;
    private ArrayList<StatusTextElement> textElements;
    private HashMap<String, StatusTextElement> textElementsMap;

    XsollaStatusText() {
        textElements = new ArrayList<>();
        textElementsMap = new HashMap<>();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getBackUrl() {
        return backUrl;
    }

    public void setBackUrl(String backUrl) {
        this.backUrl = backUrl;
    }

    public String getElementStringByKey(String name) {
        if (textElementsMap.containsKey(name)) {
            StatusTextElement element = textElementsMap.get(name);
            return element.getPref() + " - " + element.getValue();
        } else {
            return ":";
        }
    }

    public ArrayList<StatusTextElement> getTextElements() {
        return textElements;
    }

    public void addStatusTextElement(StatusTextElement textElement) {
        textElements.add(textElement);
        textElementsMap.put(textElement.getKey(), textElement);
    }

    public StatusTextElement createElement() {
        return new StatusTextElement();
    }

    public class StatusTextElement {
        private String key;
        private String pref;
        private String parameter;
        private String value;
        private String name;

        StatusTextElement() {
        }

        public String getKey() {
            return key;
        }

        public void setKey(String key) {
            this.key = key;
        }

        public String getPref() {
            return pref;
        }

        public void setPref(String pref) {
            this.pref = pref;
        }

        public String getParameter() {
            return parameter;
        }

        public void setParameter(String parameter) {
            this.parameter = parameter;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return "\nStatusTextElement{" +
                    "\nkey='" + key + '\'' +
                    "\n, pref='" + pref + '\'' +
                    "\n, parameter='" + parameter + '\'' +
                    "\n, value='" + value + '\'' +
                    "\n, name='" + name + '\'' +
                    '}';
        }

    }

    @Override
    public String toString() {
        return "\nStatusText{" +
                "\nstate='" + state + '\'' +
                "\n, backUrl='" + backUrl + '\'' +
                "\n, textElements=" + textElements +
                '}';
    }

}
