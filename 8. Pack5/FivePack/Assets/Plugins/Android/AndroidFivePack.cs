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
    /// ���� �Լ�
    /// </summary>
    /// <param name="ItemIndex">���� ������ �ε���</param>
    /// <param name="callbackGameObject">������ ���� ����� ���� �ݹ� �Լ��� �پ��ִ� ���ӿ�����Ʈ��</param>
    /// <param name="callbackFunc">������ ���� ����� ���� �ݹ� �Լ���</param>
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
    /// ���� SDK��ü���� ���� ������ ������ ���� - �ʱ� ���� ����ÿ� �����
    /// </summary>
    /// <returns>true:���� �÷��� ����, false:��� ���� �����־�� ��( ����, ���� ������ ��ü ���ÿ��� �ٽ� �� �� ���� )</returns>
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
    /// �� ������� ��Ÿ ���� �Ұ������� ���� ���
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
