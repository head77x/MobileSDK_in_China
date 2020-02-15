using UnityEngine;
using System.Collections;
using System;
using System.Collections.Generic;

public class AndroidFivePack : MonoBehaviour 
{
#if UNITY_ANDROID

    private static AndroidFivePack _instance;
    public static AndroidFivePack Instance
    {
        get
        {
            if (_instance == null)
            {
                _instance = new AndroidFivePack();
            }
            return _instance;
        }
    }

    public void InitializeApp()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnInit");
            }
        }
    }

    /// <summary>
    /// 결제 함수
    /// </summary>
    /// <param name="ItemIndex">결제 아이템 인덱스</param>
    /// <param name="callbackGameObject">아이템 결제 결과를 받을 콜백 함수가 붙어있는 게임오브젝트명</param>
    /// <param name="callbackFunc">아이템 결제 결과를 받을 콜백 함수명</param>
    public void DoBilling(int ItemIndex, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", ItemIndex, callbackGameObject, callbackFunc);
            }
        }
    }

    /// <summary>
    /// 현재 SDK자체에서 사운드 셋팅을 껐는지 여부 - 초기 게임 실행시에 사용함
    /// </summary>
    /// <returns>true:사운드 플레이 가능, false:모든 사운드 꺼져있어야 함( 물론, 게임 내에서 자체 셋팅에서 다시 켤 수 있음 )</returns>
    public bool IsMusicEnabled()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                return curActivity.Call<bool>("isMusicEnabled");
            }
        }
    }

    /// <summary>
    /// 각 이통사의 기타 게임 소개란으로 연결 기능
    /// </summary>
    public void ShowMoreGames()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("viewMoreGames");
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
        /** Billing success */
        public const String SUCCESS = "0";

        /** Billing failed, such as sim card is not ready */
        public const String FAILED = "1";

        /** Billing canceled, such as use cancel to purchase it in billing ui.*/
        public const String CANCELLED = "3";
    }


#endif
}
