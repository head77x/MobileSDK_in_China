using UnityEngine;
using System;
using System.Collections;

/// <summary>
/// 리워드 사용 후 결과 받는 종류
/// </summary>
public enum MiguRewardENUM { _FailedUse = 0, _Type1, _Type2, _Type3, _Type4, _Type5, _OtherCoupon, _size };

public class MiguReward : MonoBehaviour 
{
    static MiguReward m_instance;
    public static MiguReward instance
    {
        get
        {
            return m_instance;
        }
    }

    private bool Dirty = true;
    private MiguProcess RewardProcess;
    private MiguProcess MyRequestCodeProcess;

    private GameObject CallBackObject;
    private String CallBackObjectFunction;

    private String MyRequestCode;
    private int MyRequestCodeUsed;

    void Start()
    {
        m_instance = this;

        Dirty = false;
    }

    void Update()
    {
        if (Dirty)
            return;
    }

    /// <summary>
    /// 함께 게임하도록 요청할 수 있는 코드를 얻어온 상태인지 여부
    /// </summary>
    /// <returns></returns>
    public MiguProcess GetMyRequestCodeStatus()
    {
        return MyRequestCodeProcess;
    }

    /// <summary>
    /// 함께 게임하도록 요청할 수 있는 코드
    /// </summary>
    /// <returns></returns>
    public String GetMyRequestCode()
    {
        return MyRequestCode;
    }

    /// <summary>
    /// 내가 요청한 코드를 사용한 유저수 얻기
    /// </summary>
    /// <returns></returns>
    public int GetCountUseMyRequestCode()
    {
        return MyRequestCodeUsed;
    }

    /// <summary>
    /// 쿠폰 코드 사용하기
    /// </summary>
    public void TryToUseRewardCode(String rewardcode, GameObject callback_object, String callback_objectfunction )
    {
        if (RewardProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/reward.php";

        // 리턴 받을 객체
        param.return_object = gameObject;
        CallBackObject = callback_object;
        CallBackObjectFunction = callback_objectfunction;

        // 리턴 받을 함수
        param.return_function = "ReturnUseRewardCode";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);

        String reward = rewardcode;
        param.form.AddField("reward", reward);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + reward + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        RewardProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 쿠폰 사용 결과 도착
    /// </summary>
    /// <param name="param"></param>
    public void ReturnUseRewardCode(WebSlaveParam param)
    {
        // 쿠폰 사용 실패
        if (param.return_error != null)
        {
            CallBackObject.SendMessage(CallBackObjectFunction, MiguRewardENUM._FailedUse);
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int rewardresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get reward Result : " + rewardresult + ":" + param.return_value);

        if (rewardresult == 1)
            CallBackObject.SendMessage(CallBackObjectFunction, (MiguRewardENUM)datas.GetValue(datas["coupontype"]) );
        else
            CallBackObject.SendMessage(CallBackObjectFunction, MiguRewardENUM._FailedUse);

        RewardProcess = MiguProcess._Nothing;
    }

    /// <summary>
    /// 내가 추천 가능한 쿠폰 번호 및 내 추천 코드 사용한 유저수 얻기
    /// </summary>
    public void TryToGetMyRequestCode()
    {
        if (MyRequestCodeProcess == MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/reward.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnMyRequestCode";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "11");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);

        String reward = TinyMD5.Md5Sum(MiguSocial.instance.User_Identifier);
        param.form.AddField("reward", reward);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + reward + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        MyRequestCodeProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 추천용 코드 도착 및 내 추천용 코드 사용한 유저 수 도착
    /// </summary>
    /// <param name="param"></param>
    public void ReturnMyRequestCode(WebSlaveParam param)
    {
        MyRequestCodeProcess = MiguProcess._Failed;
        // 기타 문제
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int requestresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get request Result : " + requestresult + ":" + param.return_value);

        switch( requestresult )
        {
            case 1: // 성공함
                MyRequestCode = datas.GetString(datas["coupon"]);
                MyRequestCodeUsed = datas.GetValue(datas["usecount"]);
                MyRequestCodeProcess = MiguProcess._Success;
                break;
            default:    // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

}
