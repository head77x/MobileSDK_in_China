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
    /// SDK 초기화 함수
    /// </summary>
    /// <param name="appKey">ANYSDK의 appKey</param>
    /// <param name="appSecret">ANYSDK의 appSecret</param>
    /// <param name="privateKey">ANYSDK의 privateKey</param>
    /// <param name="authLoginURL">ANYSDK의 authLoginURL</param>
    /// <param name="callbackGameObject">결과 받을 게임오브젝트명</param>
    /// <param name="callbackFunc">결과 받을 콜백함수명</param>
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
    /// 결제 요청 함수
    /// </summary>
    /// <param name="Product_Price">상품 가격 ( 1 위안 단위 )</param>
    /// <param name="Product_Id">상품 고유 아이디 - 개발자 관리</param>
    /// <param name="Product_Name">상품명</param>
    /// <param name="Server_Id">서버 ID - 사용 않할시 "1"</param>
    /// <param name="Product_Count">구매 갯수 - 일반적으로 "1"</param>
    /// <param name="Role_Id">일부 플랫폼에서 필요한 값 - 디폴트 "1"</param>
    /// <param name="Role_Name">일부 플랫폼에서 필요한 값 - 디폴트 "1"</param>
    /// <param name="Role_Grade">일부 플랫폼에서 필요한 값 - 디폴트 "1"</param>
    /// <param name="Role_Balance">일부 플랫폼에서 필요한 값 - 디폴트 "1"</param>
    /// <param name="Ext">MiSDK 체크를 위해서 생성된 EXTKEY 값</param>
    /// <param name="callbackGameObject">결제 결과를 받을 게임 오브젝트 이름</param>
    /// <param name="callbackFunc">결제 결과를 받을 콜백 함수명</param>
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