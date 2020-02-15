package com.xsolla.android.sdk.util;

import android.content.Context;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.webkit.WebView;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class DeviceInfo {

    public static final String DFP_COOKIES = "cookiesEnabled";
    public static final String DFP_FLASH = "flashEnabled";
    public static final String DFP_JAVA = "javaEnabled";
    public static final String DFP_OS_VERSION = "osFullVersion";
    public static final String DFP_SCREEN = "screenSize";
    public static final String DFP_TIME_ZONE = "timeZone";
    public static final String DFP_HASH_CODE_PLUGINS = "hashCodePlugins";
    public static final String DFP_HASH_CODE_FONTS = "hashFonts";
    public static final String DFP_USER_AGENT = "userAgent";
    public static final String DFP_ACCEPT_LANG = "acceptLanguage";
    public static final String DFP_ACCEPT_ENC = "acceptEncoding";

    public static String get(Context context) throws JSONException, UnsupportedEncodingException {
        JSONObject jsonObject = new JSONObject();
//        jsonObject.put("osVersion", System.getProperty("os.version"));
//        jsonObject.put("release", android.os.Build.VERSION.RELEASE);
//        jsonObject.put("device", android.os.Build.DEVICE);
//        jsonObject.put("model", android.os.Build.MODEL);
//        jsonObject.put("product", android.os.Build.PRODUCT);
//        jsonObject.put("brand", android.os.Build.BRAND);
//        jsonObject.put("display", android.os.Build.DISPLAY);
//        jsonObject.put("hardware", android.os.Build.HARDWARE);
//        jsonObject.put("id", android.os.Build.ID);
//        jsonObject.put("manufacturer", android.os.Build.MANUFACTURER);
//        jsonObject.put("serial", android.os.Build.SERIAL);
//        jsonObject.put("user", android.os.Build.USER);
//        jsonObject.put("host", android.os.Build.HOST);
//
//        jsonObject.put("locale", Locale.getDefault().toString());
//        jsonObject.put("timeZone", TimeZone.getDefault().toString());
//        Resources resources = context.getResources();
//        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
//        jsonObject.put("widthPixels").append(displayMetrics.widthPixels);
//        jsonObject.put("heightPixels").append(displayMetrics.heightPixels);
//        jsonObject.put("density").append(displayMetrics.density);
//        jsonObject.put("densityDpi").append(displayMetrics.densityDpi);
//        jsonObject.put("scaledDensity").append(displayMetrics.scaledDensity);
//        jsonObject.put("xdpi;").append(displayMetrics.xdpi);
//        jsonObject.put("ydpi").append(displayMetrics.ydpi);
        //Configuration configuration = resources.getConfiguration();
        jsonObject.put(DFP_COOKIES, 1);// String
        jsonObject.put(DFP_FLASH, 1);// int
        jsonObject.put(DFP_JAVA, 1);// int
        jsonObject.put(DFP_OS_VERSION, System.getProperty("os.version"));
        jsonObject.put(DFP_SCREEN, getScreenInfo(context));
        jsonObject.put(DFP_TIME_ZONE, getTimezone());
        jsonObject.put(DFP_HASH_CODE_PLUGINS, getFeatures(context));
        jsonObject.put(DFP_HASH_CODE_FONTS, "none");
        jsonObject.put(DFP_USER_AGENT, new WebView(context).getSettings().getUserAgentString());
        jsonObject.put(DFP_ACCEPT_LANG, "none");
        jsonObject.put(DFP_ACCEPT_ENC, "none");

        return jsonObject.toString();
    }

    public static String getEncoded(Context context) throws UnsupportedEncodingException, JSONException {
        String result = get(context);
        result = URLEncoder.encode(result, "utf-8");
        result = Base64.encodeToString(result.getBytes(), Base64.DEFAULT);
        return result;
    }

    private static String getFeatures(Context context){
        final PackageManager packageManager = context.getPackageManager();
        final FeatureInfo[] featuresList = packageManager.getSystemAvailableFeatures();
        StringBuilder stringBuilder = new StringBuilder();
        for (FeatureInfo f : featuresList) {
            if (f.name != null)
                stringBuilder.append(f.name).append("; "); //jsonObject.put(f.name, true);
        }
        return stringBuilder.toString();
    }
    
    private static String getScreenInfo(Context context){
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("").append(displayMetrics.widthPixels);
        stringBuilder.append("|").append(displayMetrics.heightPixels);
        stringBuilder.append("|").append(displayMetrics.density);
        stringBuilder.append("|").append(displayMetrics.densityDpi);
        stringBuilder.append("|").append(displayMetrics.scaledDensity);
        stringBuilder.append("|").append(displayMetrics.xdpi);
        stringBuilder.append("|").append(displayMetrics.ydpi);
        return stringBuilder.toString();
    }

    private static int getTimezone(){
        TimeZone tz = TimeZone.getDefault();
        Date now = new Date();
        return tz.getOffset(now.getTime()) / 1000;
    }

}
