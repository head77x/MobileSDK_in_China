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
    /// 앱 초기화
    /// </summary>
    /// <param name="AppID">제공된 앱 ID</param>
    /// <param name="CpCode">제공된 CP Code</param>
    /// <param name="CpID">제공된 CP ID</param>
    /// <param name="CompanyName">회사이름(표시됨)</param>
    /// <param name="QAPhone">연락처(표시됨)</param>
    /// <param name="AppName">게임이름(표시됨)</param>
    /// <param name="callbackGameObject">결과 받을 게임오브젝트 이름</param>
    /// <param name="callbackFunc">결과 받을 함수명</param>
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
    /// 빌링 실행
    /// </summary>
    /// <param name="useSms">SMS사용 여부(무조건 true)</param>
    /// <param name="otherPay">제3자 결제가능여부(무조건 true)</param>
    /// <param name="callbackUrl">결제 결과 받을 URL(데모에서 제공하는 URL사용 가능)</param>
    /// <param name="vaccode">아이템의 VACCODE</param>
    /// <param name="customcode">아이템의 CUSTOMCODE</param>
    /// <param name="itemName">아이템명</param>
    /// <param name="moneyYuan">아이템의 가격</param>
    /// <param name="orderIdx">주문번호(데모처럼 주문번호 증가시키면 됨)</param>
    /// <param name="callbackGameObject">결과 받을 게임오브젝트 이름</param>
    /// <param name="callbackFunc">결과 받을 함수명</param>
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
