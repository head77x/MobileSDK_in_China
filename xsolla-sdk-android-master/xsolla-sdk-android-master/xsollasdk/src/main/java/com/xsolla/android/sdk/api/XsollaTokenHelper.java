package com.xsolla.android.sdk.api;

import com.xsolla.android.sdk.XsollaWallet;

import java.util.HashMap;

import retrofit.RetrofitError;
import rx.Subscriber;


/**
 * Helper class to get token from your server,
 * use it if you want
 * */
public class XsollaTokenHelper {
    
    /**
     * @param url your server token generation method
     * @param params params required by you server to create XsollaAccess token to complete user payment operation
     * @param listener listener to return valid XsollaWallet(TOKEN) or XsollaError if something goes wrong
     * Server should return JSON response format:
     * <pre>
     * {@code{
     *      "success" : 1,
     *      "accessToken" : "accessTokenString"
     *  }}
     * </pre>
     * <br><b>or</b>
     * <pre>
     * {@code{
     *      "success" : 0,
     *      "error" : {
     *          "errorMessage" : "errorMessageString",
     *          "errorCode" : 1036
     *      }
     *  }}
     * </pre>
     * */
    public static void getXsollaWallet(String url, HashMap<String, Object> params, final XsollaWalletListener listener){
        XsollaRestAdapter.getToken(url, params).subscribe(new Subscriber<XsollaWallet>() {
            @Override
            public void onCompleted() {

            }

            @Override
            public void onError(Throwable e) {
                listener.onErrorReceived(new XsollaError((RetrofitError)e));
            }

            @Override
            public void onNext(XsollaWallet wallet) {
                listener.onWalletReceived(wallet);
            }
        });
    }

    /**
     * Simple listener interface for token helper
     * */
    public interface XsollaWalletListener {
        public void onWalletReceived(XsollaWallet token);
        public void onErrorReceived(XsollaError error);
    }

}
