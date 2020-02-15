using UnityEngine;
using System;
using System.Collections.Generic;

public class ThreeBillingAndroid
{
	#if UNITY_ANDROID
	
    private static ThreeBillingAndroid _instance;
    public static ThreeBillingAndroid Instance
    {
        get
        {
			if(_instance==null){
                _instance = new ThreeBillingAndroid();
			}
            return _instance;
        }
    }

    public void InitializeApp(String uni_AppID, String uni_CpCode, String uni_CpID, String ty_ChannelID, String ty_SecCode, String CompanyName, String QAPhone, String AppName, 
        bool OtherPay, bool CPOtherPay, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnInit", uni_AppID, uni_CpCode, uni_CpID, ty_ChannelID, ty_SecCode, CompanyName, QAPhone, AppName, OtherPay, CPOtherPay, callbackGameObject, callbackFunc);
            }
        }
    }


    public void DoBilling(String itemCode, String customcode_3rd, String props, String moneyYuan, String appID, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", itemCode, customcode_3rd, props, moneyYuan, appID, callbackGameObject, callbackFunc);
            }
        }
    }
	
	
/*	
	public void ShowMoreGames()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
				klass.CallStatic("viewMoreGames", curActivity);
			}
		}
    }

    public bool IsMusicEnabled()
    {
        return klass.CallStatic<bool>("isMusicEnabled");
    }
*/
	
	/**
     * Start SDK's exit UI.
     */
    public void ExitWithUI()
    {
		using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
                curActivity.CallStatic("exit", curActivity);
			}
		}
	}

	/**
     * Release SDK's instance.
     */
    public void Exit()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.CallStatic("exitApp");
            }
        }
	}

	/**
	 * Result of billing action.
	 */
	public class BillingResult
	{
		/** No billing action */
		public const String NONE = "0";

		/** Billing success */
		public const String SUCCESS = "1";

		/** Billing failed, such as sim card is not ready */
		public const String FAILED = "2";

		/** Billing canceled, such as use cancel to purchase it in billing ui.*/
		public const String CANCELLED = "3";
	}
	
	
	#endif
}