package com.xsolla.android.sdk.api;

import com.xsolla.android.sdk.util.XsollaUtil;

import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Class for operate with parameters
 */
public class XsollaParameters extends LinkedHashMap<String, Object> implements Serializable {
    public XsollaParameters() {
        super();
    }

    /**
     * Initializes parameters from another map
     *
     * @param fromMap Map with parameters
     */
    public XsollaParameters(Map<String, Object> fromMap) {
        super(fromMap);
    }

    public static XsollaParameters from(Object... params) {
        return XsollaUtil.paramsFrom(params);
    }

    public void clearExceptAccessToken() {
        String token = get(XsollaApiConst.ACCESS_TOKEN).toString();
        clear();
        put(XsollaApiConst.ACCESS_TOKEN, token);
    }
}
