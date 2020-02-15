package com.xsolla.android.sdk.api.request;

import com.xsolla.android.sdk.api.model.XsollaForm;
import com.xsolla.android.sdk.api.model.XsollaStatus;

import java.util.Map;

import retrofit.http.FieldMap;
import retrofit.http.FormUrlEncoded;
import retrofit.http.POST;
import rx.Observable;

public interface XsollaPayApi {

    @FormUrlEncoded
    @POST("/paystation2/api/directpayment")
    public Observable<XsollaForm> fetchObjectForm(@FieldMap Map<String, Object> params);

    @FormUrlEncoded
    @POST("/paystation2/api/directpayment")
    public Observable<XsollaStatus> fetchObjectStatus(@FieldMap Map<String, Object> params);

}
