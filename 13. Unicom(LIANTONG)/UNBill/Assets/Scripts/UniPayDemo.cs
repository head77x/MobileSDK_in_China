using UnityEngine;
using System;
using System.Collections;

public class UniPayDemo : MonoBehaviour 
{
    public String AppID;
    public String CpID;
    public String CpCode;
    public String CompanyName;
    public String QAPhoneNumber;
    public String AppName;

	// Use this for initialization
	void Start () 
    {
        if (Application.platform == RuntimePlatform.Android)
        {
            UnipayBillingAndroid.instance.InitializeApp(AppID, CpCode, CpID, CompanyName, QAPhoneNumber, AppName, gameObject.name, "OnResultInitializeApp");
        }
	}

    void OnGUI()
    {
        if (GUI.Button(new Rect(Screen.width * 0.3f, Screen.height * 0.3f, Screen.width * 0.3f, Screen.height * 0.3f), "Click"))
        {
            UnipayBillingAndroid.instance.DoBilling(true, true, "http://uniview.wostore.cn/log-app/test", "130201102727", "90234616120120921431100001", "Test Item, ", 
                "10", "123456789012345678901234", gameObject.name, "OnResultBilling");
        }
    }

    public void OnResultInitializeApp(String result)
    {
        char[] spliter = { ',' };
        String[] results = result.Split(spliter);

        foreach (String temp in results)
            Debug.Log(temp);
    }

    /// <summary>
    /// 결제 결과 도착
    /// </summary>
    /// <param name="result">총 세개의 값이 , 로 구분되어 도착. 첫번째가 paycode, 두번째가 성공 flag, 세번째가 에러인 경우 메세지. 즉, results[1] 값을 BillingResult와 비교 처리</param>
    public void OnResultBilling(String result)
    {
        char[] spliter = { ',' };
        String[] results = result.Split(spliter);

        foreach (String temp in results)
            Debug.Log(temp);
    }

}
