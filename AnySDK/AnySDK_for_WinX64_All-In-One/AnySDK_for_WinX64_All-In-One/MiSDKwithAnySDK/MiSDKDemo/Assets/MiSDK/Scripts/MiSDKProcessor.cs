using UnityEngine;
using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// MiSDK 빌링 처리기 - 본 클래스를 사용 및 수정하여 게임에 적용시키면 됨
/// </summary>
public class MiSDKProcessor : MonoBehaviour
{
    public String appKey = "4A495B5E-15CA-2250-9079-F6FA00D64431";  // 인스펙터 창에서 정상값 입력할것
    public String appSecret = "67159a17dc7161950abcc034074bef8b";   // 인스펙터 창에서 정상값 입력할것
    public String privateKey = "EEE8C19E3CF09FDF3E840052C1646E22";  // 인스펙터 창에서 정상값 입력할것
    public String dev_appID = "bbd6c0b1ee12e0bae7e23cd4498dd6"; // 인스펙터 창에서 정상값 입력할것
    public String dev_appKey = "a150c1cfe145e4324c912b535e681d";    // 인스펙터 창에서 정상값 입력할것
    public String authLoginServer = "http://oauth.anysdk.com/api/OauthLoginDemo/Login.php";

    private bool Initialized = false;
    private int Check_success_counter = 0;

    /// <summary>
    /// MiSDK 결제 진행중인지 여부
    /// </summary>
    public bool CheckStartMiSDK = false;

	#if UNITY_ANDROID

    /// <summary>
    /// 1. 게임 시작시 SDK 초기화
    /// </summary>
	void Awake ()
	{
        if (!Initialized && Application.platform == RuntimePlatform.Android)
		{
            DontDestroyOnLoad(this.gameObject);
            Debug.Log("Brandon Unity : init");
            AnySDKBilling.instance.InitializeApp(appKey, appSecret, privateKey, authLoginServer, gameObject.name, "OnInitResult");
            Initialized = true;
		}
	}

    /// <summary>
    /// 2. Billing 이라는 버튼이 화면에 표시되고, 이를 클릭시 Billing 함수를 이용해서 해당 아이템을 결제
    /// </summary>
    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 100, 100), "Billing"))
            Billing(0);
    }

    /// <summary>
    /// 3. 빌링 진행 함수
    /// </summary>
    /// <param name="index">아이템 인덱스</param>
	public void Billing(int itemidx)
    {
        // MiSDK 체크를 위한 공통 EXTKEY 
        String encrypt = MD5.Md5Sum(dev_appKey + "com.miguyouxi");
        String extkey = dev_appID + "|" + encrypt;

        switch( itemidx )
        {
            case 0:
                Debug.Log("Brandon Unity : try billing");

                CheckStartMiSDK = true;

                // DoBilling 함수 - 인자 순서별 ( 금액, 아이템 ID, 아이템 이름, 서버 ID, 아이템 갯수, 
                // Role_ID, Role_name, Role_grade, Role_balance,
                // EXTKEY 값, 결과 받을 게임 오브젝트명, 결과 받을 함수명 )
                AnySDKBilling.instance.DoBilling("1", "1010", "Gold", "1", "1", 
                    "1", "1", "1", "1", 
                    extkey, gameObject.name, "OnBillingResult");
            break;
        }
    }

    /// <summary>
    /// 초기화 결과 콜백 함수
    /// </summary>
    /// <param name="result"></param>
    void OnInitResult(String result)
    {
        Debug.Log("Brandon Unity : Init Result =" + result);
        String[] results = result.Split('|');

        switch( int.Parse(results[0]))
        {
            case 111:
                // 초기화 성공
                break;
            case 222:
                // 초기화 실패
                break;
        }
    }

    /// <summary>
    /// 빌링 처리 결과 1차 콜백 함수 ( ANYSDK 로부터 1차 결제 성공 여부 도착 )
    /// </summary>
    /// <param name="result"></param>
    void OnBillingResult(String result)
    {
        Debug.Log("Brandon Unity : BillingResult=" + result);
        String[] results = result.Split('|');

        switch( int.Parse(results[0]) )
        {
            case 111:   // 성공
                Check_success_counter = 0;  
                MiSDKCheck(results[1]); // orderID 를 이용해서 MiSDK 서버와 실제 체크 시도
                break;
            default:    // 결제 실패 또는 취소에 대한 처리
                CheckStartMiSDK = false;
                break;
        }
    }

    /// <summary>
    /// MiSDK 서버와 실제 결제가 이루어졌는지 체크 시도
    /// </summary>
    /// <param name="orderID"></param>
    void MiSDKCheck(String orderID)
    {
        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = "http://op.miguyouxi.com/index.php";

        // 리턴 받을 객체 - 현재 객체
        param.return_object = gameObject;

        // 리턴 받을 함수명 지정
        param.return_function = "ResultConfirmFromMiSDK";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST
        param.form = new WWWForm();

        param.form.AddField("appid", dev_appID);

        string key = MD5.Md5Sum(dev_appKey + "com.miguyouxi");
        param.form.AddField("key", key);
        param.form.AddField("action", "queryAnyOrder");
        param.form.AddField("order_id", orderID);

        // CallWeb 함수 호출
        WebSlave.instance.SendMessage("CallWeb", param);

        Debug.Log("Brandon Unity : Start checking : " + param.url);
    }

    /// <summary>
    /// 결제 MiSDK 서버로 체크 요청 후 결과 받은 콜백 함수
    /// </summary>
    public void ResultConfirmFromMiSDK(WebSlaveParam result)
    {
        CheckStartMiSDK = false;

        Debug.Log("Brandon Unity : MiSDK Check result : " + result.return_value);

        if (result.return_error != null)    // 여기서 실패는 웹 통신 자체의 문제로 실패이므로, 3회 바로 재시도
        {
            Check_success_counter++;

            if (Check_success_counter < 3)
            {
                CheckStartMiSDK = true;
                WebSlave.instance.SendMessage("CallWeb", result);
                return;
            }
            else
            {
                // 결제 실패 관련 함수 처리
                Debug.Log("Brandon Unity : MiSDK Check Perfect failed" );
                return;
            }
        }

        JSONObject datas = new JSONObject(result.return_value);

        int status = datas.GetValue(datas["status"]);
        String message = datas.GetString(datas["msg"]);

        if ( status == 1111 )   // 성공
        {
            //
            // 여기에 성공 관련된 처리 및 관련 함수 호출
            //
            Debug.Log("Brandon Unity : MiSDK Check Success !!");
        }
        else
            // 실패시
        {
            Check_success_counter++;

            if (Check_success_counter < 3)  // 네트워크 지연등으로 실패될 수 있으므로, 최종 3번 정도 시도
            {
                PleaseWaiting(); // 대략 2초 정도 기다렸다 다시 시도
                CheckStartMiSDK = true;
                WebSlave.instance.SendMessage("CallWeb", result);
                return;
            }
            else
            {
                // 결제 실패 관련 함수 처리
                Debug.Log("Brandon Unity : MiSDK Check Perfect failed - " + message);
                return;
            }

        }
    }


    /// <summary>
    /// 2초 대기 함수
    /// </summary>
    /// <returns></returns>
    IEnumerator PleaseWaiting()
    {
        yield return new WaitForSeconds(2); 
    }

#endif
}
