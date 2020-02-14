using UnityEngine;
using System;
using System.Collections.Generic;
/**
 * Billing script class for encapsulating java api in libs\CMBilling.jar.
 */ 
public class CmmBillingAndroid
{
	#if UNITY_ANDROID

    public enum BillingResult { SUCCESS_SMS = 1001, SUCCESS_SMS_DELAY = 1214 };

    static CmmBillingAndroid m_instance;
    public static CmmBillingAndroid instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new CmmBillingAndroid();

            return m_instance;
        }
    }

    void Start()
    {
        m_instance = this;
    }

    /// <summary>
    /// �� �ʱ�ȭ
    /// </summary>
    /// <param name="AppID">������ �� ID</param>
    /// <param name="AppKey">������ �� Key</param>
    /// <param name="callbackGameObject">��� ���� ���ӿ�����Ʈ �̸�</param>
    /// <param name="callbackFunc">��� ���� �Լ���</param>
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

    /// <summary>
    /// ���� ����
    /// </summary>
    /// <param name="vaccode">�������� PayCode</param>
    /// <param name="callbackGameObject">��� ���� ���ӿ�����Ʈ �̸�</param>
    /// <param name="callbackFunc">��� ���� �Լ���</param>
    public void DoBilling(String PayCode, String MoreData, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", PayCode, MoreData);
            }
        }
    }

	#endif
}