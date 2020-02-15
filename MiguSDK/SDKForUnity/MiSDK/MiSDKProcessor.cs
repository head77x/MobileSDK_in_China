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
    public String MM_appID;     // 대쉬보드에서 확인한 값으로 인스펙터 창에서 정상값 입력할것 MiSDK_dev_appID 와 동일한 값
    public String MM_appKey;    // 대쉬보드에서 확인한 값으로 인스펙터 창에서 정상값 입력할것 MiSDK_dev_appKey 와  동일한 값

    public String Company_name = "杭州指老虎网络科技有限公司";   // 기본 데이터 사용
    public String QAPhone_number = "57182877709";   // 기본 데이터 사용
    public String APP_name;

    private bool Initialized = false;
    private int Check_success_counter = 0;

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
            MiguSDKBilling.instance.InitializeApp(MM_appID, MM_appKey,
               Company_name, QAPhone_number, APP_name );
            Initialized = true;
        }
	}

    /// <summary>
    /// 로고 처리를 위해서 필요합니다. - CheckMobileType 함수는 SDK가 초기화 될때까지 일정 시간이 필요하므로, 정상값이 넘어올때까지 기다렸다가 처리해야 함
    /// </summary>
    void Update()
    {
    }

    /// <summary>
    /// 2. Billing 이라는 버튼이 화면에 표시되고, 이를 클릭시 Billing 함수를 이용해서 해당 아이템을 결제
    /// </summary>
    void OnGUI()
    {
        if (GUILayout.Button("About Us", GUILayout.Height(80)))
            MiguSDKBilling.instance.ShowAboutUs();

        if (GUILayout.Button("로그인", GUILayout.Height(80)))
            MiguSDKBilling.instance.Login();

        if (GUILayout.Button("첫번째 아이템", GUILayout.Height(80)))
            Billing(1);
        if (GUILayout.Button("두번째 아이템", GUILayout.Height(80)))
            Billing(2);
        if (GUILayout.Button("세번째 아이템", GUILayout.Height(80)))
            Billing(3);

        if (GUILayout.Button("More Games", GUILayout.Height(80)))
            MiguSDKBilling.instance.ShowMoreGames();

        if (GUILayout.Button("Share ScreenShot", GUILayout.Height(80)))
            MiguSDKBilling.instance.Share_Screenshot();

        if (GUILayout.Button("Exit", GUILayout.Height(80)))
            MiguSDKBilling.instance.ExitWithUI();

    }

    /// <summary>
    /// 3. 빌링 진행 함수
    /// </summary>
    /// <param name="index">아이템 인덱스</param>
	public void Billing(int itemidx)
    {
        switch( itemidx )
        {
            default:
                Debug.Log("Brandon Unity : try billing : " + itemidx);

                // DoBilling 함수 - 인자 순서별 ( 아이템 ID - 001 부터 시작, MiSDK 키, 아이템 이름, 가격(0.01위안), 결과 받을 게임 오브젝트명, 결과 받을 함수명 )
                MiguSDKBilling.instance.DoBilling(itemidx.ToString("D03"), "reserved", "Gold_" + itemidx, "1", 
                    gameObject.name, "OnBillingResult");
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

        switch( int.Parse(results[0]) ) // 첫번째는 성공 여부
        {
            case 1:   // 성공
                Check_success_counter = 0;

                MiSDKCheck(results[1], results[3], results[4], results[5], results[6], results[7] );

                Debug.Log("Brandon Unity : Confirm real pay =" + results[1] + "- item, " + results[3] + " ordered, " + results[4] + " app, " + results[5] + " key, " + results[6] + " userid, " + results[7] + " packageName " );
                break;
            case 2:     // 취소에 대한 처리
                break;
            default:    // 결제 실패에 대한 처리
                break;
        }
    }

    /// <summary>
    /// MiSDK 서버와 실제 결제가 이루어졌는지 체크 시도
    /// </summary>
    /// <param name="orderID"></param>
    void MiSDKCheck(String itemidx, String orderID, String appid, String appkey, String userid, String packageName)
    {
        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = "http://open.miguyouxi.com/index.php?m=open&c=yisdk&a=queryPay&";

        // 리턴 받을 객체 - 현재 객체
        param.return_object = gameObject;

        // 리턴 받을 함수명 지정
        param.return_function = "ResultConfirmFromMiSDK";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST
        param.form = new WWWForm();
        param.form.AddField("packageName", packageName );
        param.form.AddField("mi_appid", appid );
        param.form.AddField("mi_appkey", appkey );
        param.form.AddField("orderID", orderID);
        param.form.AddField("userID", userid);

        String randstr = MD5.Md5Sum(System.DateTime.Now.Ticks.ToString());
        randstr = randstr.Substring(0, 10);

        param.form.AddField("Rand", randstr );

        String original = "packageName=" + packageName + "&mi_appid=" + appid + "&mi_appkey=" + appkey + "&orderID=" + orderID + "&userID=" + userid + "&rand=" + randstr;

        String key = MD5.Md5Sum(original + "D8936149A201D1B0");

        param.form.AddField("sign", key);

        // CallWeb 함수 호출
        WebSlave.instance.SendMessage("CallWeb", param);

        Debug.Log("Brandon Unity : Start checking : " + param.url);
    }

    /// <summary>
    /// 결제 MiSDK 서버로 체크 요청 후 결과 받은 콜백 함수
    /// </summary>
    public void ResultConfirmFromMiSDK(WebSlaveParam result)
    {
        Debug.Log("Brandon Unity : MiSDK Check result : " + result.return_value);

        if (result.return_error != null)    // 여기서 실패는 웹 통신 자체의 문제로 실패이므로, 3회 바로 재시도
        {
            Check_success_counter++;

            if (Check_success_counter < 3)
            {
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

        String status = datas.GetString(datas["status"]);
        String message = datas.GetString(datas["message"]);

        if ( status.CompareTo("success") == 0 )   // 성공
        {
            //
            // 여기에 성공 관련된 처리 및 관련 함수 호출
            //
            Debug.Log("Brandon Unity : MiSDK Confirm Success !!");
        }
        else
        {
            // 결제 실패 관련 함수 처리
            Debug.Log("Brandon Unity : MiSDK Confirm Perfect failed");
            return;
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
