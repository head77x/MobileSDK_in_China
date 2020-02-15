package com.xsolla.android.sdk.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.xsolla.android.sdk.XsollaWallet;
import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatus;
import com.xsolla.android.sdk.api.model.XsollaTranslations;
import com.xsolla.android.sdk.api.request.XsollaGetToken;
import com.xsolla.android.sdk.api.request.XsollaPayApi;
import com.xsolla.android.sdk.api.request.XsollaTranslationApi;
import com.xsolla.android.sdk.api.request.converter.XsollaBaseConverter;
import com.xsolla.android.sdk.api.request.converter.XsollaJacksonConverter;

import java.util.HashMap;
import java.util.Map;

import retrofit.RestAdapter;
import retrofit.client.OkClient;
import retrofit.converter.Converter;
import rx.Observable;

public class XsollaRestAdapter {

    final String TAG = getClass().getSimpleName();

    //public final static String DOMAIN = "https://secure.xsolla.com";
    private static boolean isSandbox = false;

    public enum Method{
        GET, POST
    }

    private static RestAdapter getUniversalAdapter(String url){
        return new RestAdapter.Builder()
                .setEndpoint(url)
                .setClient(new OkClient())
                .setConverter(new XsollaJacksonConverter(new ObjectMapper()))
                .build();
    }

    public static Observable<XsollaWallet> getToken(String url, HashMap<String, Object> params){
        //checkLast(url);
        return getUniversalAdapter(url)
                .create(XsollaGetToken.class)
                .getTokenPost(params);
    }

    private static String lastCharacter(String s){
        return s.substring(s.length() - 1);
    }

    public static String checkLast(String str) {
        if (str.length() > 0 && str.charAt(str.length()-1)=='/') {
            str = str.substring(0, str.length()-1);
        }
        return str;
    }

    private static RestAdapter getAdapter(Converter converter) {
        return new RestAdapter.Builder()
                .setConverter(converter)
                .setClient(new OkClient())
                .setEndpoint(getDomain())
                .build();
    }

    public static Observable<XsollaTranslations> getXsollaTranslationsObserver(String token) {
        return getAdapter(new XsollaBaseConverter<>(new XsollaTranslations()))
                .create(XsollaTranslationApi.class)
                .fetchObjectTranslations(token);
    }

    public static Observable<XsollaForm> getXsollaFormObserver(Map<String, Object> map) {
        return getAdapter(new XsollaBaseConverter<>(new XsollaForm()))
                .create(XsollaPayApi.class)
                .fetchObjectForm(map);
    }

    public static Observable<XsollaStatus> getXsollaStatusObserver(Map<String, Object> map) {
        return getAdapter(new XsollaBaseConverter<>(new XsollaStatus()))
                .create(XsollaPayApi.class)
                .fetchObjectStatus(map);
    }

    public static void setSandbox(boolean isSandbox){
        XsollaRestAdapter.isSandbox = isSandbox;
    }

    private static String getDomain(){
        return isSandbox ? "https://sandbox-secure.xsolla.com" : "https://secure.xsolla.com";
    }

}
