using UnityEngine;
using System;
using System.Collections.Generic;

/// <summary>
/// 차이나 모바일(China Mobile) 빌링 셈플 데모/
/// </summary>
public class MegoPackBillingDemo : MonoBehaviour
{
    public String AppID;
    public String AppKey;


	#if UNITY_ANDROID

    /// <summary>
    /// 1. 게임 시작시에 MegoPackBilling의 InitializeApp() 으로 차이나 모바일 SDK의 초기화 실행
    /// </summary>
	void Awake ()
	{
		if (Application.platform == RuntimePlatform.Android)
		{
            MegoPackBilling.instance.InitializeApp(AppID, AppKey, gameObject.name, "OnBillingResult");
		}
	}

    /// <summary>
    /// 3. Billing 이라는 버튼이 화면에 표시되고, 이를 클릭시 Billing 함수를 이용해서 해당 아이템을 결제. 아이템 코드는 모두 001, 002 ~ 이와 같은 방식으로 결정되어져 있다.
    /// </summary>
    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 100, 100), "Billing"))
            Billing("00000000000");
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
        MegoPackBilling.instance.DoBilling(index, "Brandon Test", null, "");
    }

    /// <summary>
    /// 5. 빌링 결과 도착 - 결과 도착에 따른 유니티에서 처리
    /// </summary>
    /// <param name="result"></param>
    void OnBillingResult(String result)
    {
        Debug.Log("Brandon : BillingResult=" + result);
        String[] results = result.Split('|');

        Debug.Log(results[0]);  // billing description

        if ((int)MegoPackBilling.BillingResult.SUCCESS_SMS == int.Parse(results[1]) ||
            (int)MegoPackBilling.BillingResult.SUCCESS_SMS_DELAY == int.Parse(results[1]))
        {
            // success
            Debug.Log("Success!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        }
        else
            Debug.Log("FAILED!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + results[0].ToString());

    }

#endif
}
