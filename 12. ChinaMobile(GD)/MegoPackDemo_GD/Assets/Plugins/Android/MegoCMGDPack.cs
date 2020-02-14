using UnityEngine;
using System;
using System.Collections;

public class MegoCMGDPack
{
#if UNITY_ANDROID

    static MegoCMGDPack m_instance;
    public static MegoCMGDPack instance
    {
        get
        {
            if (m_instance == null)
                m_instance = new MegoCMGDPack();

            return m_instance;
        }
    }

    void Start()
    {
        m_instance = this;
    }

    /// <summary>
    /// 앱 초기화
    /// </summary>
    /// <param name="AppID">제공된 앱 ID</param>
    /// <param name="AppKey">제공된 앱 Key</param>
    /// <param name="callbackGameObject">결과 받을 게임오브젝트 이름</param>
    /// <param name="callbackFunc">결과 받을 함수명</param>
    public void InitializeApp(String buyresult_GB, String buyresult_CF)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnInit", buyresult_GB, buyresult_CF);
            }
        }
    }

    public bool CheckActivate(String ProductID)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                return curActivity.Call<bool>("CheckingItemActivate", ProductID);
            }
        }
    }

    public void DoBilling(String ProductID, String Userdata = "")
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("OnBuy", ProductID, Userdata);
            }
        }
    }

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

    /**
     * Start SDK's exit UI.
     */
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

    /**
     * Release SDK's instance.
     */
    public void Exit()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("exit");
            }
        }
    }

    public void InitLeaderboard(String key, String secret, String appId)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("Leaderboard_init", key, secret, appId);
            }
        }
    }

    public void ShowLeaderboard()
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("Leaderboard_show");
            }
        }
    }

    public void Leaderboard_setscore(int score)
    {
        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("Leaderboard_SetScore", score);
            }
        }
    }

    public void Share_Screenshot()
    {
        String filename = Application.persistentDataPath + "/ShareScreenShot.png";

        Application.CaptureScreenshot( filename );

        using (AndroidJavaClass unityPlayer = new AndroidJavaClass("com.unity3d.player.UnityPlayer"))
        {
            using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))
            {
                curActivity.Call("screenShotShare", filename);
            }
        }
    }

#endif
}
