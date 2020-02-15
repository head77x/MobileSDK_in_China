using UnityEngine;
using System;
using System.Collections;

public class TouchPayDemo : MonoBehaviour 
{
    public String AppID;
    public String CpID;
    public String CpCode;
    public String ChinaMobile_Code;
    public String CompanyName;
    public String QAPhoneNumber;
    public String AppName;

    public bool OtherPay;
    public bool CpOtherPay;

    private bool ChinaMobile;

    void Start()
    {
        if (Application.platform == RuntimePlatform.Android)
        {
            TouchBillingAndroid.instance.InitializeApp(AppID, CpCode, CpID, CompanyName, QAPhoneNumber, AppName, OtherPay, CpOtherPay, gameObject.name, "OnResultInitializeApp");
        }
    }

    void OnGUI()
    {
        if (GUI.Button(new Rect(Screen.width * 0.3f, Screen.height * 0.3f, Screen.width * 0.3f, Screen.height * 0.3f), "Click"))
        {
            TouchBillingAndroid.instance.DoBilling(ChinaMobile_Code, "130608005756", "90234616120130608134128735800001", "Daoju", "1", "1234567890", gameObject.name, "OnResultBilling");
        }
    }

    public void OnResultInitializeApp(String result)
    {
        char[] spliter = { '|' };
        String[] results = result.Split(spliter);

        foreach (String temp in results)
            Debug.Log(temp);
    }

    /// <summary>
    /// 1 : BillingResult
    /// 2 : Item Code
    /// 3 : Desc
    /// </summary>
    /// <param name="result"></param>
    public void OnResultBilling(String result)
    {
        char[] spliter = { '|' };
        String[] results = result.Split(spliter);

        switch (int.Parse(results[0]))
        {
            case (int)TouchBillingAndroid.BillingResult.SUCCESS:    // 성공
                break;
            case (int)TouchBillingAndroid.BillingResult.FAILED:    // 실패
                break;
            case (int)TouchBillingAndroid.BillingResult.CANCEL:    // 취소
                break;
            case (int)TouchBillingAndroid.BillingResult.UNSUPPORT:    // 지원않됨
                break;
        }
    }

}
