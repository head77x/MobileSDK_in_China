package com.xsolla.android.sdk.util;


import android.net.Uri;
import android.text.TextUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

public class XsollaStringJoiner {
    /**
     * Joins array of strings to one string with glue
     *
     * @param what Array of string to join
     * @param glue Glue for joined strings
     * @return Joined string
     */
    public static String join(String[] what, String glue) {
        return join(Arrays.asList(what), glue);
    }

    /**
     * Joins some collection to string with glue
     *
     * @param what Collection to join
     * @param glue Glue for joined strings
     * @return Joined string
     */
    public static String join(Collection<?> what, String glue) {
        return TextUtils.join(glue, what);
    }

    /**
     * Join parameters map into string, usually query string
     *
     * @param queryParams Map to join
     * @param isUri       Indicates that value parameters must be uri-encoded
     * @return Result query string, like k=v&k1=v1
     */
    public static String joinParams(Map<String, Object> queryParams, boolean isUri) {
        ArrayList<String> params = new ArrayList<String>(queryParams.size());
        for (Map.Entry<String, Object> entry : queryParams.entrySet()) {
            Object value = entry.getValue();
//            if (value instanceof XsollaAttachments) {
//                value = ((XsollaAttachments)value).toAttachmentsString();
//            }
            params.add(String.format("%s=%s", entry.getKey(),
                    isUri ? Uri.encode(String.valueOf(value)) : String.valueOf(value)));
        }
        return join(params, "&");
    }

    /**
     * Join parameters from map without URI-encoding
     *
     * @param queryParams Map to join
     * @return Joined string
     */
    public static String joinParams(Map<String, Object> queryParams) {
        return joinParams(queryParams, false);
    }

    /**
     * Join parameters from map with URI-encoding
     *
     * @param queryParams Map to join
     * @return Joined string
     */
    public static String joinUriParams(Map<String, Object> queryParams) {
        return joinParams(queryParams, true);
    }
}
