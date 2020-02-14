using UnityEngine;
using System;
using System.Collections;

public class UnipayBillingAndroid : MonoBehaviour
{
    #if UNITY_ANDROID

    public enum BillingResult { SUCCESS_SMS = 9, SUCCESS_3RDPAY = 15, FAILED = 2, CANCEL = 3, OTHERPAY = 6 };

    static UnipayBillingAndroid m_instance;
    public static UnipayBillingAndroid instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new UnipayBillingAndroid();

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
    /// <param name="AppID">������ �� ID</param>
    /// <param name="CpCode">������ CP Code</param>
    /// <param name="CpID">������ CP ID</param>
    /// <param name="CompanyName">ȸ���̸�(ǥ�õ�)</param>
    /// <param name="QAPhone">����ó(ǥ�õ�)</param>
    /// <param name="AppName">�����̸�(ǥ�õ�)</param>
    /// <param name="callbackGameObject">��� ���� ���ӿ�����Ʈ �̸�</param>
    /// <param name="callbackFunc">��� ���� �Լ���</param>
    public void InitializeApp(String AppID, String CpCode, String CpID, String CompanyName, String QAPhone, String AppName, String callbackGameObject, String callbackFunc )
    {
		using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) 
        {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) 
            {
                curActivity.Call("OnInit", AppID, CpCode, CpID, CompanyName, QAPhone, AppName, callbackGameObject, callbackFunc );
            }
        }
    }

    /// <summary>
    /// ���� ����
    /// </summary>
    /// <param name="useSms">SMS��� ����(������ true)</param>
    /// <param name="otherPay">��3�� �������ɿ���(������ true)</param>
    /// <param name="callbackUrl">���� ��� ���� URL(���𿡼� �����ϴ� URL��� ����)</param>
    /// <param name="vaccode">�������� VACCODE</param>
    /// <param name="customcode">�������� CUSTOMCODE</param>
    /// <param name="itemName">�����۸�</param>
    /// <param name="moneyYuan">�������� ����</param>
    /// <param name="orderIdx">�ֹ���ȣ(����ó�� �ֹ���ȣ ������Ű�� ��)</param>
    /// <param name="callbackGameObject">��� ���� ���ӿ�����Ʈ �̸�</param>
    /// <param name="callbackFunc">��� ���� �Լ���</param>
    public void DoBilling(bool useSms, bool otherPay, String callbackUrl, String vaccode, String customcode, String itemName, String moneyYuan, String orderIdx, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", useSms, otherPay, callbackUrl, vaccode, customcode, itemName, moneyYuan, orderIdx, callbackGameObject, callbackFunc);
            }
        }
    }



    #endif
}
