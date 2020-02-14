package com.example;

public class DemoLog
{
    private static final String TAG = "UNIPAY_ACCOUNT_DEMO";

    public static void d(String msg)
    {
        android.util.Log.d(TAG, makeTraceTag() + msg);
        return;
    }

    public static void e(String msg)
    {
        android.util.Log.e(TAG, makeTraceTag() + msg);
        return;
    }

    private static String makeTraceTag()
    {
        return String.format("[%s] ", new Throwable().getStackTrace()[2].toString());
    }
}
