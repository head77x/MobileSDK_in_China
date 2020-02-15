using UnityEngine;
using System;
using System.Collections;

public class TelePayDemo : MonoBehaviour 
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(Screen.width * 0.3f, Screen.height * 0.3f, Screen.width * 0.3f, Screen.height * 0.3f), "Click"))
        {
            TelepayBillingAndroid.instance.DoBilling("108462", gameObject.name, "OnResultBilling");
        }
    }

    public void OnResultInitializeApp(String result)
    {
        char[] spliter = { ',' };
        String[] results = result.Split(spliter);

        foreach (String temp in results)
            Debug.Log(temp);
    }

    public void OnResultBilling(String result)
    {
        char[] spliter = { ',' };
        String[] results = result.Split(spliter);

        foreach (String temp in results)
            Debug.Log(temp);
    }

}
