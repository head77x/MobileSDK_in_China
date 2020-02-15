using UnityEngine;
using System;
using System.Collections.Generic;

public class ThreeBillingAndroid
{
    public enum MobileType { CHINA_MOBILE = 0, CHINA_UNICOM, CHINA_TELECOM, CHINA_MOBILE_MM };

	#if UNITY_ANDROID
	
    private static ThreeBillingAndroid _instance;
    public static ThreeBillingAndroid Instance
    {
        get
        {
			if(_instance==null){
                _instance = new ThreeBillingAndroid();
			}
            return _instance;
        }
    }

    private MobileType whattype_mobile;

    /// <summary>
    /// 중국 이통사 SDK 초기화 함수
    /// </summary>
    /// <param name="uni_AppID">유니콤의 AppID 코드</param>
    /// <param name="uni_CpCode">유니콤의 CpCode 코드</param>
    /// <param name="uni_CpID">유니콤의 CpID 코드</param>
    /// <param name="ty_ChannelID">텔레콤의 ChannelID</param>
    /// <param name="ty_SecCode">텔레콤의 SecCode</param>
    /// <param name="CompanyName">회사명-上海锐移计算机科技有限公司 사용</param>
    /// <param name="QAPhone">서비스센터-18202150891 사용</param>
    /// <param name="AppName">게임 이름</param>
    /// <param name="OtherPay">제 3 자 결제 - false</param>
    /// <param name="CPOtherPay">CP 자체 결제 - false</param>
    /// <param name="callbackGameObject">초기화 관련 콜백 함수가 붙은 게임 오브젝트명 - 현재 사용 x</param>
    /// <param name="callbackFunc">초기화 관련 콜백 함수명 - 현재 사용 X</param>
    public void InitializeApp(String uni_AppID, String uni_CpCode, String uni_CpID, String ty_ChannelID, String ty_SecCode, String CompanyName, String QAPhone, String AppName, 
        bool OtherPay, String MM_AppID, String MM_AppKey, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnInit", uni_AppID, uni_CpCode, uni_CpID, ty_ChannelID, ty_SecCode, CompanyName, QAPhone, AppName, OtherPay, MM_AppID, MM_AppKey, callbackGameObject, callbackFunc);
            }
        }
    }

    /// <summary>
    /// 결제 함수
    /// </summary>
    /// <param name="jidi_ItemCode">차이나모바일의 결제 아이템 코드</param>
    /// <param name="unicom_ItemCode">유니콤의 결제 아이템 코드</param>
    /// <param name="telecom_ItemCode">텔레콤의 결제 아이템 코드</param>
    /// <param name="unicom_Vaccode">유니콤의 Vaccode</param>
    /// <param name="ItemName">아이템 표시 이름-중문</param>
    /// <param name="moneyYuan">아이템 가격 - 1위안=100</param>
    /// <param name="appID">아이템 구매에 따른 자체 인덱스-미사용시 "9999999999"</param>
    /// <param name="callbackGameObject">아이템 결제 결과를 받을 콜백 함수가 붙어있는 게임오브젝트명</param>
    /// <param name="callbackFunc">아이템 결제 결과를 받을 콜백 함수명</param>
    public void DoBilling(String mm_ItemCode, String jidi_ItemCode, String unicom_ItemCode, String telecom_ItemCode, String unicom_Vaccode, String ItemName, String moneyYuan, String appID, String callbackGameObject, String callbackFunc)
    {
        whattype_mobile = (MobileType)CheckMobile();

        Debug.Log("Brandon : whattype = " + whattype_mobile);

        float money = float.Parse(moneyYuan) / 100.0f;

        Debug.Log("Brandon : whatmoney = " + money);

        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                switch (whattype_mobile)
                {
                    case MobileType.CHINA_UNICOM:
                        curActivity.Call("OnBuy", unicom_ItemCode, unicom_Vaccode, ItemName, money.ToString(), appID, callbackGameObject, callbackFunc);
                        break;
                    case MobileType.CHINA_TELECOM:
                        curActivity.Call("OnBuy", telecom_ItemCode, unicom_Vaccode, ItemName, moneyYuan, appID, callbackGameObject, callbackFunc);
                        break;
                    case MobileType.CHINA_MOBILE_MM:
                        curActivity.Call("OnBuy", mm_ItemCode, unicom_Vaccode, ItemName, moneyYuan, appID, callbackGameObject, callbackFunc);
                        break;
                    default:
                        curActivity.Call("OnBuy", jidi_ItemCode, unicom_Vaccode, ItemName, moneyYuan, appID, callbackGameObject, callbackFunc);
                        break;
                }
            }
        }
    }

    /// <summary>
    /// 현재 모바일 이통사 타입
    /// </summary>
    /// <returns>0:차이나모바일, 1:차이나유니콤, 2:차이나텔레콤</returns>
    public int CheckMobile()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                return curActivity.Call<int>("CheckMobile");
            }
        }
    }

    /// <summary>
    /// 현재 SDK자체에서 사운드 셋팅을 껐는지 여부 - 초기 게임 실행시에 사용함
    /// </summary>
    /// <returns>true:사운드 플레이 가능, false:모든 사운드 꺼져있어야 함( 물론, 게임 내에서 자체 셋팅에서 다시 켤 수 있음 )</returns>
    public bool IsMusicEnabled()
    {
        whattype_mobile = (MobileType)CheckMobile();

        switch (whattype_mobile)
        {
            case MobileType.CHINA_UNICOM:
            case MobileType.CHINA_TELECOM:
            case MobileType.CHINA_MOBILE_MM:
                break;
            default:
                using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
                {
                    using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
                    {
                        return curActivity.Call<bool>("isMusicEnabled");
                    }
                }
        }

        return true;
    }
	
    /// <summary>
    /// 각 이통사의 기타 게임 소개란으로 연결 기능
    /// </summary>
	public void ShowMoreGames()
    {
        whattype_mobile = (MobileType)CheckMobile();

        switch (whattype_mobile)
        {
            case MobileType.CHINA_UNICOM:
                Application.OpenURL("http://store.wo.com.cn/");
                break;
            case MobileType.CHINA_TELECOM:
                Application.OpenURL("http://www.189store.com/");
                break;
            case MobileType.CHINA_MOBILE_MM:
                Application.OpenURL("http://mm.10086.cn/");
                break;
            default:
                using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
                {
                    using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
                    {
                        curActivity.Call("viewMoreGames");
                    }
                }
                break;
		}
    }

    public void ExitWithUI()
    {
		using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
			using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
                curActivity.CallStatic("exit", curActivity);
			}
		}
	}

    public void Exit()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.CallStatic("exitApp");
            }
        }
	}

	/**
	 * Result of billing action.
	 */
	public class BillingResult
	{
		/** No billing action */
		public const String NONE = "0";

		/** Billing success */
		public const String SUCCESS = "1";

		/** Billing failed, such as sim card is not ready */
		public const String FAILED = "2";

		/** Billing canceled, such as use cancel to purchase it in billing ui.*/
		public const String CANCELLED = "3";
	}
	
	
	#endif
}