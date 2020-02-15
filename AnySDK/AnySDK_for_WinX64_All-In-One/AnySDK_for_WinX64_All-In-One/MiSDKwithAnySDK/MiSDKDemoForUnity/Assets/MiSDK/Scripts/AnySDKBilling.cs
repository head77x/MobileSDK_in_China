using UnityEngine;
using System;
using System.Collections.Generic;

public class AnySDKBilling
{
	#if UNITY_ANDROID

    static AnySDKBilling m_instance;
    public static AnySDKBilling instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new AnySDKBilling();

            return m_instance;
        }
    }

    void Start()
    {
        m_instance = this;
    }

    /// <summary>
    /// SDK �ʱ�ȭ �Լ�
    /// </summary>
    /// <param name="appKey">ANYSDK�� appKey</param>
    /// <param name="appSecret">ANYSDK�� appSecret</param>
    /// <param name="privateKey">ANYSDK�� privateKey</param>
    /// <param name="authLoginURL">ANYSDK�� authLoginURL</param>
    /// <param name="callbackGameObject">��� ���� ���ӿ�����Ʈ��</param>
    /// <param name="callbackFunc">��� ���� �ݹ��Լ���</param>
    public void InitializeApp(String appKey, String appSecret, String privateKey, String authLoginURL, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                Debug.Log("Brandon Unity : real init");


                curActivity.Call("OnInit", appKey, appSecret, privateKey, authLoginURL, callbackGameObject, callbackFunc);

                Debug.Log("Brandon Unity : init finished");

            }
        }
    }

    /// <summary>
    /// ���� ��û �Լ�
    /// </summary>
    /// <param name="Product_Price">��ǰ ���� ( 1 ���� ���� )</param>
    /// <param name="Product_Id">��ǰ ���� ���̵� - ������ ����</param>
    /// <param name="Product_Name">��ǰ��</param>
    /// <param name="Server_Id">���� ID - ��� ���ҽ� "1"</param>
    /// <param name="Product_Count">���� ���� - �Ϲ������� "1"</param>
    /// <param name="Role_Id">�Ϻ� �÷������� �ʿ��� �� - ����Ʈ "1"</param>
    /// <param name="Role_Name">�Ϻ� �÷������� �ʿ��� �� - ����Ʈ "1"</param>
    /// <param name="Role_Grade">�Ϻ� �÷������� �ʿ��� �� - ����Ʈ "1"</param>
    /// <param name="Role_Balance">�Ϻ� �÷������� �ʿ��� �� - ����Ʈ "1"</param>
    /// <param name="Ext">MiSDK üũ�� ���ؼ� ������ EXTKEY ��</param>
    /// <param name="callbackGameObject">���� ����� ���� ���� ������Ʈ �̸�</param>
    /// <param name="callbackFunc">���� ����� ���� �ݹ� �Լ���</param>
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