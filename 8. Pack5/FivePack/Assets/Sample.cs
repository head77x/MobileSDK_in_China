using UnityEngine;
using System;
using System.Collections;

public class Sample : MonoBehaviour 
{
    void Start()
    {
//        AndroidFivePack.Instance.InitializeApp();
    }

    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 100, 100), "Billing"))
        {
//            AndroidFivePack.Instance.InitializeApp();
            AndroidFivePack.Instance.DoBilling(0, gameObject.name, "OnBillingResult");
        }
    }

    /// <summary>
    /// 빌링 결과 도착 - 결과 도착에 따른 유니티에서 처리
    /// </summary>
    /// <param name="result"></param>
    void OnBillingResult(String result)
    {
        Debug.Log("Brandon : BillingResult=" + result);
        String[] results = result.Split('|');

        switch (int.Parse(results[0]))
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

}
