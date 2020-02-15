package com.xsolla.android.sdk;

import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.XsollaError;

import java.util.HashMap;
import java.util.Map;

/**
 * Base class for Xsolla request
 * contains your access token
 */
public class XsollaWallet {

    /* * * * * * * * * * * * * * * * * * * * * * * * * *
    *  FIELDS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private int _success;
    private String _accessToken;
    private XsollaError _error;
    private HashMap<String, Object> map;
    private boolean _isSandbox;

    /* * * * * * * * * * * * * * * * * * * * * * * * * *
    *  CONSTRUCTOR
    * * * * * * * * * * * * * * * * * * * * * * * * * * */

    private XsollaWallet() {
    }
    /*
    *@param accessToken
    * */
    private XsollaWallet(String acessToken) {
        this.map = new HashMap<>();
        put(XsollaApiConst.ACCESS_TOKEN, acessToken);
        _isSandbox = false;
    }


    /* * * * * * * * * * * * * * * * * * * * * * * * * *
    *  PUBLIC METHOD
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    public HashMap<String, Object> get() {
        return map;
    }

    public void enableSandbox(boolean isSandbox){
        this._isSandbox = isSandbox;
    }

    public boolean isModeSandbox(){
        return _isSandbox;
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * *
    *  PRIVATE METHOD
    * * * * * * * * * * * * * * * * * * * * * * * * * * */
    private XsollaWallet addItem(String itemId, int count) {
        put(XsollaApiConst.SKU + "[" + itemId + "]", count);
        return this;
    }

    private XsollaWallet addVirtualCurrency(float currencyAmount) {
        put(XsollaApiConst.OUT, currencyAmount);
        return this;
    }

    private XsollaWallet addSubscription(String packageId) {
        put(XsollaApiConst.ID_PACKAGE, packageId);
        return this;
    }

    private XsollaWallet addCheckout() {
        return this;
    }

    private void put(String key, Object value) {
        map.put(key, value);
    }

    private void putAll(HashMap<String, Object> map) {
        map.putAll(map);
    }

    /* * * * * * * * * * * * * * * * * * * * * * * * * *
    *  INNER CLASS
    * * * * * * * * * * * * * * * * * * * * * * * * * * */

    /**
     * Factory class for XsollaWallet
     */
    public static class Factory {

        public static XsollaWallet createSimpleWallet(String accessToken) {
            return new XsollaWallet(accessToken);
        }

        public static XsollaWallet createItemWallet(String accessToken, String itemId, int count) {
            return new XsollaWallet(accessToken).addItem(itemId, count);
        }

        public static XsollaWallet createItemsWallet(String accessToken, HashMap<String, Integer> itemsMap) {
            XsollaWallet basket = new XsollaWallet(accessToken);
            for (Map.Entry<String, Integer> entry : itemsMap.entrySet()) {
                basket.addItem(entry.getKey(), entry.getValue());
            }
            return basket;
        }

        public static XsollaWallet createVirtualCurrencyWallet(String accessToken, float currencyAmount) {
            return new XsollaWallet(accessToken).addVirtualCurrency(currencyAmount);
        }

        public static XsollaWallet createSubscriptionWallet(String accessToken, String packageId) {
            return new XsollaWallet(accessToken).addSubscription(packageId);
        }

        public static XsollaWallet createCheckoutWallet(String accessToken, String currency, float amount) {
            return null;
        }

        public static XsollaWallet createComplexWallet(String accessToken, HashMap<String, Object> map) {
            XsollaWallet basket = new XsollaWallet(accessToken);
            basket.putAll(map);
            return basket;
        }

    }

    public void setSuccess(int success) {
        this._success = success;
    }

    public void setAccessToken(String accessToken) {
        this._accessToken = accessToken;
    }

    public void setError(XsollaError error) {
        this._error = error;
    }

    @Override
    public String toString() {
        return "XsollaWallet{" +
                "_success=" + _success +
                ", _accessToken='" + _accessToken + '\'' +
                ", _error='" + _error + '\'' +
                '}';
    }
}
