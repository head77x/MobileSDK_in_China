using UnityEngine;
using System;
using System.Collections;

public class TianYiBillingAndroid : MonoBehaviour
{
    #if UNITY_ANDROID

    public enum BillingResult { SUCCESS_SMS = 9, SUCCESS_3RDPAY = 15, FAILED = 2, CANCEL = 3, OTHERPAY = 6 };

    static TianYiBillingAndroid m_instance;
    public static TianYiBillingAndroid instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new TianYiBillingAndroid();

            return m_instance;
        }
    }

	void Start () 
    {
        m_instance = this;
	}

    /// <summary>
    /// 실제 빌링 진행 함수
    /// </summary>
    /// <param name="ItemCode">엑셀의 计费代码</param>
    /// <param name="ChannelID"></param>
    /// <param name="ItemName"></param>
    /// <param name="Money"></param>
    /// <param name="orderIdx"></param>
    /// <param name="Repeated"></param>
    /// <param name="callbackGameObject"></param>
    /// <param name="callbackFunc"></param>
    public void DoBilling(String ItemCode, String ChannelID, String ItemName, String Money, String orderIdx, bool Repeated, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", ItemCode, ChannelID, ItemName, Money, orderIdx, Repeated, callbackGameObject, callbackFunc);
            }
        }
    }


    #endif
}
