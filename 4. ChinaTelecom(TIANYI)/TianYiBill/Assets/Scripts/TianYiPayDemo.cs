using UnityEngine;
using System;
using System.Collections;

public class TianYiPayDemo : MonoBehaviour 
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(Screen.width * 0.3f, Screen.height * 0.3f, Screen.width * 0.3f, Screen.height * 0.3f), "Click"))
        {
            TianYiBillingAndroid.instance.DoBilling("ED29976AD670CD98E040007F01007A4F", "123", "Netmego", "0.01", "99999999", false, gameObject.name, "OnResultBilling");
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
        char[] spliter = { '|' };
        String[] results = result.Split(spliter);

        switch (int.Parse(results[2]) )
        {
            case 0: //성공
                break;
            case 3: //취소
                break;
            default:    // 실패
                break;
        }

    }

}
