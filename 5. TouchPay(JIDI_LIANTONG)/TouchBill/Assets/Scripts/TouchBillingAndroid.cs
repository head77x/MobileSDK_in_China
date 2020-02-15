using UnityEngine;
using System;
using System.Collections;

public class TouchBillingAndroid : MonoBehaviour
{
    #if UNITY_ANDROID

    public enum BillingResult { SUCCESS = 1, FAILED = 2, CANCEL = 3, UNSUPPORT = 4 };

    static TouchBillingAndroid m_instance;
    public static TouchBillingAndroid instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new TouchBillingAndroid();

            return m_instance;
        }
    }

	void Start () 
    {
        m_instance = this;
	}

    /// <summary>
    /// �� �ʱ�ȭ
    /// </summary>
    /// <param name="AppID">Unicom �� ID</param>
    /// <param name="CpCode">Unicom CP Code</param>
    /// <param name="CpID">Unicom CP ID</param>
    /// <param name="CompanyName">ȸ���̸�</param>
    /// <param name="QAPhone">����ó</param>
    /// <param name="AppName">�����̸�</param>
    /// <param name="otherPay">���̳������ ��3�� ���� : ������ true</param>
    /// <param name="CpOtherPay">������ ��ü ���� : ������ false</param>
    /// <param name="callbackGameObject">��� ���� ���ӿ�����Ʈ ��</param>
    /// <param name="callbackFunc">��� ���� �Լ���</param>
    public void InitializeApp(String AppID, String CpCode, String CpID, String CompanyName, String QAPhone, String AppName, bool otherPay, bool CpOtherPay, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnInit", AppID, CpCode, CpID, CompanyName, QAPhone, AppName, otherPay, CpOtherPay, callbackGameObject, callbackFunc);
            }
        }
    }

    /// <summary>
    /// ������ ����
    /// </summary>
    /// <param name="cm_code">���̳�������� ������ ���� �ڵ�</param>
    /// <param name="vaccode">Unicom�� VACCODE</param>
    /// <param name="customcode">Unicom�� CUSTOMCODE</param>
    /// <param name="itemName">�����۸�</param>
    /// <param name="moneyYuan">�������� ����</param>
    /// <param name="orderIdx">�ֹ���ȣ(��ü������ �ֹ��� �ε��� ������Ű�鼭 ����)</param>
    /// <param name="callbackGameObject">��� ���� ���� ������Ʈ��</param>
    /// <param name="callbackFunc">��� ���� �Լ���</param>
    public void DoBilling(String cm_code, String vaccode, String customcode, String itemName, String moneyYuan, String orderIdx, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", cm_code, vaccode, customcode, itemName, moneyYuan, orderIdx, callbackGameObject, callbackFunc);
            }
        }
    }

    public bool IsMusicEnabled()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                return curActivity.Call<bool>("isMusicEnabled");
            }
        }

        return false;
    }

    public void ExitWithUI()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("exitGame", curActivity);
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
                curActivity.Call("exitGame");
            }
        }

    }

    #endif
}
