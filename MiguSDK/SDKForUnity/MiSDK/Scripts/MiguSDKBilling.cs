using UnityEngine;
using System;
using System.Collections;

public class MiguSDKBilling 
{
#if UNITY_ANDROID

    static MiguSDKBilling m_instance;
    public static MiguSDKBilling instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new MiguSDKBilling();

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
    /// <param name="MM_appID">대쉬보드에서 appID 입력</param>
    /// <param name="MM_appKey">대쉬보드에서 appKey 입력</param>
    /// <param name="Company_name">회사명( 기본값 사용 )</param>
    /// <param name="QAPhone_number">AS연락처( 기본값 사용 )</param>
    /// <param name="APP_name">게임명</param>
    public void InitializeApp(String MM_appID, String MM_appKey,
        String Company_name, String QAPhone_number, String APP_name )
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                Debug.Log("Brandon Unity : real init");

                curActivity.Call("OnInit", MM_appID, MM_appKey,
                    Company_name, QAPhone_number, APP_name);

                Debug.Log("Brandon Unity : init finished");

            }
        }
    }

    /// <summary>
    /// 로그인 처리
    /// </summary>
    public void Login()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("Login");
            }
        }
    }

    /// <summary>
    /// 결제 요청 함수
    /// </summary>
    /// <param name="Product_Id">상품 고유 아이디("001"~)</param>
    /// <param name="vaccode_Ext">MiSDK 체크를 위해서 생성된 EXTKEY 값</param>
    /// <param name="Product_Name">상품명</param>
    /// <param name="Product_Price">상품가격(단위 1 위안)</param>
    /// <param name="callbackGameObject">결제 결과를 받을 게임 오브젝트 이름</param>
    /// <param name="callbackFunc">결제 결과를 받을 콜백 함수명</param>
    public void DoBilling(String Product_Id, String vaccode_Ext, String Product_Name, String Product_Price, String callbackGameObject, String callbackFunc)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", Product_Id, vaccode_Ext, Product_Name, Product_Price, callbackGameObject, callbackFunc);
            }
        }
    }


    /// <summary>
    /// 더 많은 게임 보기로, 게임의 타이틀 메뉴 등에 버튼을 추가해서 이 기능을 실행하도록 해주세요.
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

    /// <summary>
    /// 현재 SDK에 의해서 사운드가 켜져있는지 꺼져있는지 검사하기 위해서 사용. 반드시 적용해주셔야 합니다.
    /// 즉, 게임 시작시에 이 함수의 결과가 false 인 경우에는 모든 사운드가 꺼진 상태로 시작해야 하며, 반대로 true인 경우, 모든 사운드가 켜진 상태로 시작해야 합니다.
    /// 물론, 게임중에 게임 자체의 셋팅에 의해서 사운드를 끄고 켜는 것은 상관없습니다.
    /// </summary>
    /// <returns></returns>
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
    /// 게임 종료 확인( OK-CANCEL )시 꼭 이 함수를 써주세요.
    /// </summary>
    public void ExitWithUI()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("exitGame");
            }
        }
    }

    /// <summary>
    /// China Mobile GameBase 에서만 사용 가능하며, 스샷을 위챗, QQ 등에 공유할 때 사용합니다.
    /// </summary>
    public void Share_Screenshot()
    {
        String filename = Application.persistentDataPath + "/ShareScreenShot.png";

        Application.CaptureScreenshot("ShareScreenShot.png");

        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("screenShotShare", filename);
            }
        }
    }

    /// <summary>
    /// 서비스 제공자에 대한 소개 표기
    /// </summary>
    public void ShowAboutUs()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("AboutUs");
            }
        }
    }

#endif
}
