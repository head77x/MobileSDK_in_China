package com.xsolla.android.sdk.api.request;

import com.xsolla.android.sdk.api.XsollaApiConst;
import com.xsolla.android.sdk.api.model.XsollaTranslations;

import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.POST;
import rx.Observable;

public interface XsollaTranslationApi {

    @FormUrlEncoded
    @POST("/paystation2/api/utils")
    public Observable<XsollaTranslations> fetchObjectTranslations(@Field(XsollaApiConst.ACCESS_TOKEN) String token);
}
