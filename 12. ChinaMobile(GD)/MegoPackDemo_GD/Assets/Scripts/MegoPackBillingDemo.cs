using UnityEngine;
using System;
using System.Collections.Generic;

/// <summary>
/// 차이나 모바일(China Mobile) 빌링 셈플 데모/
/// </summary>
public class MegoPackBillingDemo : MonoBehaviour
{
    public String MiSDK_dev_appID = "bbd6c0b1ee12e0bae7e23cd4498dd6"; // 인스펙터 창에서 정상값 입력할것
    public String MiSDK_dev_appKey = "a150c1cfe145e4324c912b535e681d";    // 인스펙터 창에서 정상값 입력할것

	#if UNITY_ANDROID

    /// <summary>
    /// 1. 게임 시작시에 MegoPackBilling의 InitializeApp() 으로 차이나 모바일 SDK의 초기화 실행
    /// </summary>
	void Awake ()
	{
        if (Application.platform == RuntimePlatform.Android)
        {
            MegoCMGDPack.instance.InitializeApp(gameObject.name, "OnBillingResult" );
        }
	}

    /// <summary>
    /// 3. Billing 이라는 버튼이 화면에 표시되고, 이를 클릭시 Billing 함수를 이용해서 해당 아이템을 결제. 아이템 코드는 모두 001, 002 ~ 이와 같은 방식으로 결정되어져 있다.
    /// </summary>
    void OnGUI()
    {
        if ( GUILayout.Button("첫번째 아이템") )
            Billing("001");
        if (GUILayout.Button("두번째 아이템"))
            Billing("002");
        if (GUILayout.Button("세번째 아이템"))
            Billing("003");

        if (GUILayout.Button("More Games"))
            MegoCMGDPack.instance.ShowMoreGames();

        if (GUILayout.Button("Share ScreenShot"))
            MegoCMGDPack.instance.Share_Screenshot();

        if (GUILayout.Button("Exit"))
            MegoCMGDPack.instance.ExitWithUI();
    }

    /// <summary>
    /// SDK에 의해서 배경음악이 소멸되어 있는지 체크. 이에 따라서 게임에서 처리해야함
    /// </summary>
    /// <returns></returns>
    public bool CheckGameBackgroundMusic()
    {
        return MegoCMGDPack.instance.IsMusicEnabled();
    }

    /// <summary>
    /// 4. *** 중요 함수 *** 빌링 진행 함수
    /// </summary>
    /// <param name="index"></param>
	public void Billing(String index)
    {
        // 첫번째 인자는 보통 true, 두번째 인자는 해당 아이템을 반복 구매가 가능하다면 true, 해당 폰에서 한번만 결제되어야 한다면 false,
        // 세번째 인자는 아이템의 결제 코드 ( 엑셀파일로 제공된 코드의 끝 세자리 )
        // 네번재 인자는 유니티에서 결과를 받을 오브젝트의 이름
        // 다섯번째 인자는 결과를 받을 함수명
        MegoCMGDPack.instance.DoBilling(index);
    }

    /// <summary>
    /// 5. 빌링 결과 도착 - 결과 도착에 따른 유니티에서 처리
    /// </summary>
    /// <param name="result"></param>
    void OnBillingResult(String result)
    {
        Debug.Log("Brandon : BillingResult=" + result);
        String[] results = result.Split('|');

        Debug.Log("Item index = " + results[0]);  // item index

        switch (int.Parse(results[1]))
        {
            case 1:
                // success
                Debug.Log("Success!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                MiSDKLog(results[0]); // 결제 로그 남기기
                break;
            case 0:
                Debug.Log("FAILED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + results[0].ToString());
                break;
            case 2:
                Debug.Log("Canceled!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + results[0].ToString());
                break;
        }

    }



    /// <summary>
    /// MiSDK 서버에 결제 등 로그 남기기
    /// </summary>
    /// <param name="logstring"></param>
    void MiSDKLog(String logstring)
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

        param.form.AddField("appid", MiSDK_dev_appID);

        string key = MD5.Md5Sum(MiSDK_dev_appKey + "com.miguyouxi");

        param.form.AddField("key", key);
        param.form.AddField("action", "setLog");
        param.form.AddField("order_id", logstring);

        // CallWeb 함수 호출
        WebSlave.instance.SendMessage("CallWeb", param);

        Debug.Log("Brandon Unity : Start logging : " + param.url);
    }

    /// <summary>
    /// 결제 MiSDK 서버로 체크 요청 후 결과 받은 콜백 함수
    /// </summary>
    public void ResultConfirmFromMiSDK(WebSlaveParam result)
    {
        Debug.Log("Brandon Unity : MiSDK Check result : " + result.return_value);

        if (result.return_error != null)    // 여기서 실패는 웹 통신 자체의 문제로 실패이므로, 3회 바로 재시도
        {
            Debug.Log("Brandon Unity : MiSDK Check Perfect failed");
            return;
        }

        JSONObject datas = new JSONObject(result.return_value);

        int status = datas.GetValue(datas["status"]);
        String message = datas.GetString(datas["msg"]);

        if (status == 1111)   // 성공
        {
            //
            // 여기에 성공 관련된 처리 및 관련 함수 호출
            //
            Debug.Log("Brandon Unity : MiSDK Check Success !!");
        }
        else
        // 실패시
        {
            // 로깅 실패 관련 함수 처리
            Debug.Log("Brandon Unity : MiSDK Check Perfect failed - " + message);
            return;
        }
    }


#endif
}
