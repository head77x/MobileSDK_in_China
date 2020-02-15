package com.xsolla.android.sdk.api.model;

import com.fasterxml.jackson.databind.JsonNode;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/**
 * Class representation of Api Form Element
 */
public class XsollaFormElement {

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * CONSTANTS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public static final int TYPE_UNKNOWN = -1;
    public static final int TYPE_HIDDEN = 0;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_SELECT = 2;
    public static final int TYPE_VISIBLE = 3;
    public static final int TYPE_TABLE = 4;
    public static final int TYPE_CHECK = 5;
    public static final int TYPE_HTML = 6;
    public static final int TYPE_LABEL = 7;//HTML

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PRIVATE FIELDS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private String name;
    private String title;
    private String type;
    private String example; // placeholder
    private String value;
    //TODO  Type.SELECT - массив обьектов; Type.TABLE где то обьект объектов
    private ArrayList<Option> options;
    private boolean isMandatory;
    private boolean isReadonly;
    private boolean isVisible;
    private boolean isPakets;
    private String tooltip;
    //TODO  комплексный объект
    private String javascript;

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * ENUM
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    enum Type {
        UNKNOWN, HIDDEN, TEXT, SELECT, IS_VISIBLE, TABLE, CHECK, HTML, LABEL
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * Constructors
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public XsollaFormElement() {
    }

    /**
     * Class constructor based on JsonNode - contains full info about current element;
     *
     * @see com.fasterxml.jackson.databind.JsonNode
     */
    public XsollaFormElement(JsonNode elementNode) {
        Iterator<Map.Entry<String, JsonNode>> elementIterator = elementNode.fields();
        while (elementIterator.hasNext()) {
            Map.Entry<String, JsonNode> element = elementIterator.next();
            switch (element.getKey()) {
                case "name":
                    this.setName(element.getValue().asText(""));
                    break;
                case "title":
                    this.setTitle(element.getValue().asText(""));
                    break;
                case "type":
                    this.setType(element.getValue().asText(""));
                    break;
                case "example":
                    this.setExample(element.getValue().asText(""));
                    break;
                case "value":
                    this.setValue(element.getValue().asText());
                    break;
                case "options":
                    if (!element.getValue().isNull())
                        this.setOptions(parseOptions(element.getValue()));
                    break;
                case "isMandatory":
                    this.setMandatory(element.getValue().asInt(0) == 1);
                    break;
                case "isReadonly":
                    this.setReadonly(element.getValue().asInt(0) == 1);
                    break;
                case "isVisible":
                    this.setVisible(element.getValue().asInt(0) == 1);
                    break;
                case "isPakets":
                    this.setPakets(element.getValue().asInt(0) == 1);
                    break;
                case "tooltip":
                    this.setTooltip(element.getValue().asText(""));
                    break;
                case "javascript":
                    this.setJavascript(element.getValue().asText(""));
                    break;
                default:
            }
        }
    }

    private ArrayList<Option> parseOptions(JsonNode optionsNode) {
        ArrayList<Option> options = new ArrayList<>();
        if (optionsNode.isArray()) {
            Iterator<JsonNode> iterator = optionsNode.elements();
            while (iterator.hasNext()) {
                JsonNode optionNode = iterator.next();
                options.add(new Option(optionNode.get("value").asText(""),
                        optionNode.get("label").asText("")));
            }
        }
        return options;
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * Getters & Setters
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getType() {
        switch (type) {
            case "hidden":
                return TYPE_HIDDEN;
            case "text":
                return TYPE_TEXT;
            case "select":
                return TYPE_SELECT;
            case "isVisible":
                return TYPE_VISIBLE;
            case "table":
                return TYPE_TABLE;
            case "check":
                return TYPE_CHECK;
            case "html":
                return TYPE_HTML;
            case "label":
                return TYPE_LABEL;
            default:
                return TYPE_UNKNOWN;
        }
    }

    public Type defineType(String type) {
        switch (type) {
            case "hidden":
                return Type.HIDDEN;
            case "text":
                return Type.TEXT;
            case "select":
                return Type.SELECT;
            case "isVisible":
                return Type.IS_VISIBLE;
            case "table":
                return Type.TABLE;
            case "check":
                return Type.CHECK;
            case "html":
                return Type.HTML;
            case "label":
                return Type.LABEL;
            default:
                return Type.UNKNOWN;
        }
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getExample() {
        return example;
    }

    public void setExample(String example) {
        this.example = example;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public ArrayList<Option> getOptions() {
        return options;
    }

    public void setOptions(ArrayList<Option> options) {
        this.options = options;
    }

    public boolean isMandatory() {
        return isMandatory;
    }

    public void setMandatory(boolean isMandatory) {
        this.isMandatory = isMandatory;
    }

    public boolean isReadonly() {
        return isReadonly;
    }

    public void setReadonly(boolean isReadonly) {
        this.isReadonly = isReadonly;
    }

    public boolean isVisible() {
        return isVisible;
    }

    public void setVisible(boolean isVisible) {
        this.isVisible = isVisible;
    }

    public boolean isPakets() {
        return isPakets;
    }

    public void setPakets(boolean isPakets) {
        this.isPakets = isPakets;
    }

    public String getTooltip() {
        return tooltip;
    }

    public void setTooltip(String tooltip) {
        this.tooltip = tooltip;
    }

    public String getJavascript() {
        return javascript;
    }

    public void setJavascript(String javascript) {
        this.javascript = javascript;
    }

    /**
     * Class used as representation for select type element options
     */
    public class Option {
        private String value;
        private String label;

        Option() {
        }

        Option(String value, String label) {
            this.value = value;
            this.label = label;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }

        public String getLabel() {
            return label;
        }

        public void setLabel(String label) {
            this.label = label;
        }

        @Override
        public String toString() {
            return label;
        }
    }


    /**
     * Method to get simplified version of current XsollaFormElement
     *
     * @return simplified version of current XsollaFormElement
     * @see com.xsolla.android.sdk.api.model.XsollaFormElement.XsollaSimpleFormElement
     */
    public XsollaSimpleFormElement getSimple() {
        return new XsollaSimpleFormElement(type, name, title);
    }

    /**
     * Simplified version of XsollaForm element
     *
     * @see com.xsolla.android.sdk.api.model.XsollaFormElement
     */
    public class XsollaSimpleFormElement {

        private String type;
        private String name;
        private String title;

        /**
         * Class constructor define current element type, name and title
         */
        private XsollaSimpleFormElement(String type, String name, String title) {
            this.type = type;
            this.name = name;
            this.title = title;
        }

        /**
         * @return type of current element, look types in XsollaFormElement
         * @see com.xsolla.android.sdk.api.model.XsollaFormElement
         */
        public String getType() {
            return type;
        }

        /**
         * @return name of current element, use as key for nextStep in your map
         */
        public String getName() {
            return name;
        }

        /**
         * @return title of current element, use as title for your input if you want
         */
        public String getTitle() {
            return title;
        }
    }

    @Override
    public String toString() {
        return "XsollaFormElement{" +
                "name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", type=" + type +
                ", example='" + example + '\'' +
                ", value='" + value + '\'' +
                ", options='" + options + '\'' +
                ", isMandatory=" + isMandatory +
                ", isReadonly=" + isReadonly +
                ", isVisible=" + isVisible +
                ", isPakets=" + isPakets +
                ", tooltip='" + tooltip + '\'' +
                ", javascript='" + javascript + '\'' +
                '}';
    }
}
