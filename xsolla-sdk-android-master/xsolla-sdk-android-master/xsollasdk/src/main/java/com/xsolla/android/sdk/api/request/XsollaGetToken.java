package com.xsolla.android.sdk.api.request;


import com.xsolla.android.sdk.XsollaWallet;

import java.util.Map;

import retrofit.client.Response;
import retrofit.http.FieldMap;
import retrofit.http.FormUrlEncoded;
import retrofit.http.GET;
import retrofit.http.POST;
import retrofit.http.Path;
import rx.Observable;

public interface XsollaGetToken {
    @FormUrlEncoded
    @POST("/")
    Observable<XsollaWallet> getTokenPost(@FieldMap Map<String, Object> params);
}
