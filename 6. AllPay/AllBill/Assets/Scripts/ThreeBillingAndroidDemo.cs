using UnityEngine;
using System;
using System.Collections.Generic;


/// <summary>
/// 중국 3대 이통사 통합 SDK
/// </summary>
public class ThreeBillingAndroidDemo : MonoBehaviour
{
	#if UNITY_ANDROID
    public String Unicom_AppID;
    public String Unicom_CpCode;
    public String Unicom_CpID;
    public String TianYi_ChannelID;
    public String TianYi_SecretCode;
    public String CompanyName;
    public String QAPhone;
    public String AppName;
    public bool OtherPay;
    public String MM_AppID;
    public String MM_AppKey;

    /// <summary>
    /// 1. 게임 시작시에 CmBillingAndroid의 InitializeApp() 으로 차이나 모바일 SDK의 초기화 실행
    /// </summary>
	void Awake ()
	{
		if (Application.platform == RuntimePlatform.Android)
		{
            ThreeBillingAndroid.Instance.InitializeApp(Unicom_AppID, Unicom_CpCode, Unicom_CpID, TianYi_ChannelID, TianYi_SecretCode, CompanyName, QAPhone, AppName, OtherPay, MM_AppID, MM_AppKey, gameObject.name, "OnInitResult");
		}
	}

    void OnInitResult(String result)
    {
    }

    /// <summary>
    /// 3. Billing 이라는 버튼이 화면에 표시되고, 이를 클릭시 Billing 함수를 이용해서 해당 아이템을 결제. 아이템 코드는 모두 001, 002 ~ 이와 같은 방식으로 결정되어져 있다.
    /// </summary>
    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 100, 100), "Billing"))
        {
            ThreeBillingAndroid.Instance.DoBilling("30000769675905", "005", "905885744920140212135414918900005", "F3ED18BA4BF22FD8E0430100007F72EC", "140212023728", "购买B至S级宠物谜之蛋", "100", "9999999999", gameObject.name, "OnBillingResult");
        }
    }

    /// <summary>
    /// 4. 빌링 결과 도착 - 결과 도착에 따른 유니티에서 처리
    /// </summary>
    /// <param name="result"></param>
    void OnBillingResult(String result)
    {
        Debug.Log("Brandon : BillingResult=" + result);
        String[] results = result.Split('|');

        switch( int.Parse( results[0] ) )
        {
            case 0: // success
                Debug.Log("Brandon : Success");
                break;
            case 3: // canceled
                Debug.Log("Brandon : Canceled");
                break;
            default: // failed
                Debug.Log("Brandon : Failed");
                break;
        }
    }


#endif
}
