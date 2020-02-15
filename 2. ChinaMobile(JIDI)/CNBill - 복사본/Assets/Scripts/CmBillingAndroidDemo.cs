using UnityEngine;
using System;
using System.Collections.Generic;

/// <summary>
/// 차이나 모바일(China Mobile) 빌링 셈플 데모/
/// </summary>
public class CmBillingAndroidDemo : MonoBehaviour
{
	#if UNITY_ANDROID

    /// <summary>
    /// 1. 게임 시작시에 CmBillingAndroid의 InitializeApp() 으로 차이나 모바일 SDK의 초기화 실행
    /// </summary>
	void Awake ()
	{
		if (Application.platform == RuntimePlatform.Android)
		{
			CmBillingAndroid.Instance.InitializeApp();
			CheckGameBackgroundMusic();
		}
	}

    /// <summary>
    /// 2. 차이나 모바일 초기화면에서 소리 켜기, 끄기 셋팅을 읽어 유니티에서 처리할것
    /// </summary>
    public void CheckGameBackgroundMusic()
	{
		if (CmBillingAndroid.Instance.IsMusicEnabled())
		{
            Debug.Log("Brandon : IsMusicEnabled=true");
		}
		else
		{
            Debug.Log("Brandon : IsMusicEnabled=false");
		}
	}

    /// <summary>
    /// 3. Billing 이라는 버튼이 화면에 표시되고, 이를 클릭시 Billing 함수를 이용해서 해당 아이템을 결제. 아이템 코드는 모두 001, 002 ~ 이와 같은 방식으로 결정되어져 있다.
    /// </summary>
    void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 100, 100), "Billing"))
            Billing("001");
    }

    /// <summary>
    /// 4. *** 중요 함수 *** 빌링 진행 함수
    /// </summary>
    /// <param name="index"></param>
	public void Billing(String index)
    {
        if(!CmBillingAndroid.Instance.GetActivateFlag(index))   
            // 해당 아이템 인덱스가 이미 구입한 경우인지 체크 ( DoBilling 의 두번째 인자가 false 인경우, 반복 구매가 않되는 것으로 등록됨. 즉, 이렇게 구매한 아이템은 GetActiveFlag가 두번째부터는 false )
		{
            // 첫번째 인자는 보통 true, 두번째 인자는 해당 아이템을 반복 구매가 가능하다면 true, 해당 폰에서 한번만 결제되어야 한다면 false,
            // 세번째 인자는 아이템의 결제 코드 ( 엑셀파일로 제공된 코드의 끝 세자리 )
            // 네번재 인자는 유니티에서 결과를 받을 오브젝트의 이름
            // 다섯번째 인자는 결과를 받을 함수명
			CmBillingAndroid.Instance.DoBilling(true, true, "001", index, gameObject.name, "OnBillingResult");
		}
    }

    /// <summary>
    /// 5. 빌링 결과 도착 - 결과 도착에 따른 유니티에서 처리
    /// </summary>
    /// <param name="result"></param>
    void OnBillingResult(String result)
    {
        Debug.Log("Brandon : BillingResult=" + result);
        String[] results = result.Split('|');
        if (CmBillingAndroid.BillingResult.CANCELLED == results[1])
        {
            CmBillingAndroid.Instance.ExitWithUI();
        }
    }

#endif
}
