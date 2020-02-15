package com.xsolla.android.sdk.api.model;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.XsollaError;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/**
 * Class representation of Api Form Response
 * contains necessary info to work with api
 */
public class XsollaForm extends XsollaApiModel {

    final String TAG = getClass().getSimpleName();

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PRIVATE FIELDS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private String currentCommand;
    private String title;
    private String iconUrl;
    private String currency;
    private String sum;
    private String instruction;
    private int pid;

    private XsollaError xsollaError;
    private ArrayList<XsollaFormElement> list;
    private ArrayList<XsollaFormElement> listVisible;
    private HashMap<String, XsollaFormElement> map;
    private HashMap<String, Object> xpsMap;
    private String xpsPrefix = "xps_";
    private int size;
    private JsonNode rootNode;

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * ENUM
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public enum CurrentCommand {
        FORM, STATUS, CHECK, UNKNOWN
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * CONSTRUCTORS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */

    /**
     * Class constructor creates empty object with initialized data container
     */
    public XsollaForm() {
        list = new ArrayList<>();
        listVisible = new ArrayList<>();
        xpsMap = new HashMap<>();
        map = new HashMap<>();
    }

    /**
     * Synthetic class constructor creates creates full copy of serialized object
     * (byte[]) with method getByte();
     */
    public XsollaForm(byte[] rootNodeByte) throws IOException {
        list = new ArrayList<>();
        listVisible = new ArrayList<>();
        xpsMap = new HashMap<>();
        map = new HashMap<>();
        ObjectMapper mapper = new ObjectMapper();
        parse(mapper.readTree(rootNodeByte));
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * PUBLIC METHODS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */

    public void addElement(XsollaFormElement xsollaFormElement) {
        list.add(xsollaFormElement);
        if (xsollaFormElement.isVisible())
            listVisible.add(xsollaFormElement);
        map.put(xsollaFormElement.getName(), xsollaFormElement);
        if (xsollaFormElement.getValue() != null)
            xpsMap.put(xpsPrefix + xsollaFormElement.getName(), xsollaFormElement.getValue());
        size++;
    }

    public void updateElement(String name, String newValue) {
        if (getItem(name) != null) {
            getItem(name).setValue(newValue);
            xpsMap.put(xpsPrefix + name, newValue);
        }
    }

    public XsollaFormElement getItem(int position) {
        return list.get(position);
    }

    public XsollaFormElement getItem(String name) {
        return map.get(name);
    }

    public ArrayList<XsollaFormElement> getVisible() {
        return listVisible;
    }

    public int getSize() {
        return size;
    }

    public HashMap<String, Object> getXpsMap() {
        return xpsMap;
    }

    public int getPid() {
        return pid;
    }

    public String getTitle() {
        return title;
    }

    public String getIconUrl() {
        return iconUrl;
    }

    public String getInstruction() {
        return instruction;
    }

    public XsollaError getXsollaError() {
        return xsollaError;
    }


    public String getSumTotal() {
        return formatPrice(currency, sum);
    }

    public static String formatPrice(String currency, String amount){
        switch (currency) {
            case "USD":
                amount = "$" + amount;
                break;
            case "EUR":
                amount = "&euro;" + amount;
                break;
            case "GBP":
                amount = "&pound;" + amount;
                break;
            case "BRL":
                amount = "R$" + amount;
                break;
            case "RUB":
                amount = amount + "₽";
                break;//&#8399;
            default:
                amount = amount + currency;
        }
        return amount;
    }

    public CurrentCommand getCurrentCommand() {
        switch (currentCommand) {
            case "form":
                return CurrentCommand.FORM;
            case "check":
                return CurrentCommand.CHECK;
            case "status":
                return CurrentCommand.STATUS;
            default:
                return CurrentCommand.UNKNOWN;
        }
    }

    public boolean isValidPaymentSystem() {
        return pid == 26 || pid == 1380;
    }

    public String getCurrency() {
        return currency;
    }

    public byte[] getByte() throws IOException {
        return new ObjectMapper().writeValueAsBytes(rootNode);
    }

    public XsollaSimpleForm getSimple() {
        return new XsollaSimpleForm(getVisible(), xsollaError);
    }


    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * OVERRIDED METHODS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    @Override
    public XsollaApiModel parse(JsonNode rootNode) throws IOException {
        this.rootNode = rootNode;

        JsonNode errorNode = rootNode.findPath(XsollaApiConst.ERROR_MSG);
        if (!errorNode.isMissingNode() && !"[]".equals(errorNode.toString()))
            this.xsollaError = new XsollaError(errorNode);
        else
            this.xsollaError = null;

        this.title = rootNode.path(XsollaApiConst.R_TITLE).asText("Missed");
        this.iconUrl = rootNode.path(XsollaApiConst.R_ICONURL).asText("");
        this.currency = rootNode.path(XsollaApiConst.R_CURRENCY).asText("");
        this.instruction = rootNode.path(XsollaApiConst.R_INSTRUCTION).asText("");
        this.sum = rootNode.path(XsollaApiConst.R_BUYDATA).path("sum").asText("-//-");
        this.currentCommand = rootNode.path(XsollaApiConst.R_CURRENTCOMMAND).asText("missed");
        this.pid = rootNode.path(XsollaApiConst.R_PID).asInt();
        JsonNode formNode = rootNode.path(XsollaApiConst.R_FORM);
        Iterator iterator = formNode.elements();
        while (iterator.hasNext()) {
            JsonNode elementNode = (JsonNode) iterator.next();
            this.addElement(new XsollaFormElement(elementNode));
        }
        return this;
    }

    @Override
    public String toString() {
        return "XsollaForm{" +
                "\nxpsMap=" + xpsMap +
                "\n, list=" + list +
                '}';
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * * *
    * INNER CLASS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public class XsollaSimpleForm {

        private ArrayList<XsollaFormElement.XsollaSimpleFormElement> xsollaSimpleFormElements;
        private XsollaError xsollaError;

        public XsollaSimpleForm() {
            xsollaSimpleFormElements = new ArrayList<>();
        }

        public XsollaSimpleForm(ArrayList<XsollaFormElement> elements, XsollaError xsollaError) {
            this();
            this.xsollaError = xsollaError;
            for (XsollaFormElement element : elements) {
                addElement(element.getSimple());
            }
        }

        public void addElement(XsollaFormElement.XsollaSimpleFormElement element) {
            xsollaSimpleFormElements.add(element);
        }

        public ArrayList<XsollaFormElement.XsollaSimpleFormElement> getElements() {
            return xsollaSimpleFormElements;
        }

        public XsollaError getXsollaError() {
            return xsollaError;
        }
    }
}
