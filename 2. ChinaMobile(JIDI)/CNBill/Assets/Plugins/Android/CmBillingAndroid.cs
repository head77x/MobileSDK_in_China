using UnityEngine;
using System;
using System.Collections.Generic;
/**
 * Billing script class for encapsulating java api in libs\CMBilling.jar.
 */ 
public class CmBillingAndroid
{
	#if UNITY_ANDROID
	
	// The instance of billing script.
    private static CmBillingAndroid _instance;
    public static CmBillingAndroid Instance
    {
        get
        {
			if(_instance==null){
				_instance = new CmBillingAndroid();
			}
            return _instance;
        }
    }

	/**
	 * Start billing view with special billing index.
	 * @param useSms Whether use sms billing mode or not.
	 * @param isRepeated Whether this billing point is repeated billing point.
	 * @param index The billing index to charge.
	 * @param gameObject Game Object in Unity Games.
	 * @param runtimeScriptMethod The runtime script method which implement the callback of getting billing result.
	 */
    public void DoBilling(String index, bool isRepeated, String gameObject, String runtimeScriptMethod)
    {
		using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
                curActivity.Call("OnBuy", index, isRepeated, gameObject, runtimeScriptMethod);
			}
		}
    }
	
	public void RetryBilling(bool useSms, bool isRepeated, String index, String cpparam, String gameObject, String runtimeScriptMethod)
    {
    }
	
    public bool GetActivateFlag(String index)
    {
        return true;// klass.CallStatic<bool>("getActivateFlag", index);
    }
	
	public void SetActivateFlag(String index, bool flag)
    {
//        klass.CallStatic("setActivateFlag", index, flag);
    }
	
	
	public void ShowMoreGames()
    {
/*
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
				klass.CallStatic("viewMoreGames", curActivity);
			}
		}
 */ 
    }

    public bool IsMusicEnabled()
    {
        return true;// klass.CallStatic<bool>("isMusicEnabled");
    }
	
	public int GetGamePlayerAuthState()
    {
        return 0;// klass.CallStatic<int>("getGamePlayerAuthState");
    }
	
	/**
     * Start SDK's exit UI.
     */
    public void ExitWithUI()
    {
/*
		using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
				klass.CallStatic("exit", curActivity);
			}
		}
 */ 
	}

	/**
     * Release SDK's instance.
     */
    public void Exit()
    {
//        klass.CallStatic("exitApp");
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
	
	/** Result for login action. */
	public class LoginResult 
	{
		// No login action.
  		public const int UNKOWN = 0;
		
		// Login success implicitly
  		public const int SUCCESS_IMPLICIT = 1;
		
		// Login failed implicitly
  		public const int FAILED_IMPLICIT = 11;
		
		// Login success explicitly by input user account and password.
  		public const int SUCCESS_EXPLICIT = 2;
		
		// Login failed explicitly.
  		public const int FAILED_EXPLICIT = 22;
	}
	
	/** Result of users' subscribed state about special packaged game.*/
	public class SubscribeResult {
  		public const int UNKNOWN = 0;
 	 	public const int YES = 1;
  		public const int NO = 2;
	}

	#endif
}