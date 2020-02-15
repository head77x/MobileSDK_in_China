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
    /// 앱 초기화
    /// </summary>
    /// <param name="AppID">Unicom 앱 ID</param>
    /// <param name="CpCode">Unicom CP Code</param>
    /// <param name="CpID">Unicom CP ID</param>
    /// <param name="CompanyName">회사이름</param>
    /// <param name="QAPhone">연락처</param>
    /// <param name="AppName">게임이름</param>
    /// <param name="otherPay">차이나모바일 제3자 결제 : 무조건 true</param>
    /// <param name="CpOtherPay">개발자 자체 결제 : 무조건 false</param>
    /// <param name="callbackGameObject">결과 받을 게임오브젝트 명</param>
    /// <param name="callbackFunc">결과 받을 함수명</param>
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
    /// 아이템 결제
    /// </summary>
    /// <param name="cm_code">차이나모바일의 아이템 결제 코드</param>
    /// <param name="vaccode">Unicom의 VACCODE</param>
    /// <param name="customcode">Unicom의 CUSTOMCODE</param>
    /// <param name="itemName">아이템명</param>
    /// <param name="moneyYuan">아이템의 가격</param>
    /// <param name="orderIdx">주문번호(자체적으로 주문시 인덱스 증가시키면서 전달)</param>
    /// <param name="callbackGameObject">결과 받을 게임 오브젝트명</param>
    /// <param name="callbackFunc">결과 받을 함수명</param>
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
