using UnityEngine;
using System;
using System.Collections.Generic;
/**
 * Billing script class for encapsulating java api in libs\CMBilling.jar.
 */
public class MegoPackBilling
{
	#if UNITY_ANDROID

    public enum BillingResult { SUCCESS_SMS = 1001, SUCCESS_SMS_DELAY = 1214 };

    static MegoPackBilling m_instance;
    public static MegoPackBilling instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new MegoPackBilling();

            return m_instance;
        }
    }

    void Start()
    {
        m_instance = this;
    }

    /// <summary>
    /// 앱 초기화
    /// </summary>
    /// <param name="AppID">제공된 앱 ID</param>
    /// <param name="AppKey">제공된 앱 Key</param>
    /// <param name="callbackGameObject">결과 받을 게임오브젝트 이름</param>
    /// <param name="callbackFunc">결과 받을 함수명</param>
    public void InitializeApp(String AppID, String AppKey, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnInit", AppID, AppKey, callbackGameObject, callbackFunc);
            }
        }
    }

    public void DoBilling(String Product_Price, String Product_Id, String Product_Name, String Server_Id, String Product_Count,
            String Role_Id, String Role_Name, String Role_Grade, String Role_Balance, String Ext, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", Product_Price, Product_Id, Product_Name, Server_Id, Product_Count, Role_Id, Role_Name, Role_Grade, Role_Balance, Ext, callbackGameObject, callbackFunc);
            }
        }
    }

	#endif
}