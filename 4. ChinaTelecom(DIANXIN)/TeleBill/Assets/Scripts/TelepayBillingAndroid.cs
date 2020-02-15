using UnityEngine;
using System;
using System.Collections;

public class TelepayBillingAndroid : MonoBehaviour
{
    #if UNITY_ANDROID

    public enum BillingResult { SUCCESS_SMS = 9, SUCCESS_3RDPAY = 15, FAILED = 2, CANCEL = 3, OTHERPAY = 6 };

    static TelepayBillingAndroid m_instance;
    public static TelepayBillingAndroid instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new TelepayBillingAndroid();

            return m_instance;
        }
    }

	void Start () 
    {
        m_instance = this;
	}

    public void DoBilling(String Alias, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", Alias, callbackGameObject, callbackFunc);
            }
        }
    }



    #endif
}
