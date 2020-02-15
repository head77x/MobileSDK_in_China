using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// 프로젝트에서는 본 Enum 에 필드를 추가 및 수정해서 사용 가능
/// </summary>
public enum MiguFriendEnum { _UserID, _FaceType, _Name, _Score, _Rank, _size };

/// <summary>
/// 랭킹 정보를 담을 기본 구조체 클래스
/// </summary>
public class MiguFriendStruct
{
    public ArrayList FriendLists;

    public MiguFriendStruct()
    {
        FriendLists = new ArrayList();
    }

    /// <summary>
    /// 친구 리스트를 채우기 전에 클리어 할 것
    /// </summary>
    public void ClearFriendInfo()
    {
        FriendLists.Clear();
    }

    /// <summary>
    /// 친구 정보를 하나씩 읽어와 FriendLists 에 등록함
    /// </summary>
    /// <param name="json_data">친구 정보가 JSON Array 형태로 들어있는 객체</param>
    public void AddFriendInfo(JSONObject json_data)
    {
        Dictionary<MiguFriendEnum, String> data_struct = new Dictionary<MiguFriendEnum, string>();

        for (int i = 0; i < (int)MiguFriendEnum._size; i++)
        {
            String key = ((MiguFriendEnum)i).ToString();

            if (json_data.HasField(key))
            {
                data_struct[(MiguFriendEnum)i] = json_data.GetString(json_data[key]);
            }
        }

        // 무조건 순차적으로 들어감
        FriendLists.Add(data_struct);
    }
}

public class MiguFriends : MonoBehaviour
{
    static MiguFriends m_instance;
    public static MiguFriends instance
    {
        get
        {
            return m_instance;
        }
    }

    private bool Dirty = true;
    private MiguProcess FriendProcess;
    private MiguProcess SuggestFriendProcess;

    private MiguFriendStruct m_MyFriends;
    private MiguFriendStruct m_SuggestFriends;

    private int MyFriendCounts;
    private int SuggestedFriendCounts;

    /// <summary>
    /// 최소 1회 이상 친구 리스트 얻어왔는지 여부
    /// </summary>
    private bool UpdatedMyFriendList;
    /// <summary>
    /// 최소 1회 이상 추천 친구 리스트 얻어왔는지 여부
    /// </summary>
    private bool UpdatedSuggestedFriend;

    void Start()
    {
        m_instance = this;
        m_MyFriends = new MiguFriendStruct();
        m_SuggestFriends = new MiguFriendStruct();

        Dirty = false;
    }

    void Update()
    {
        if (Dirty)
            return;

    }

    /// <summary>
    /// 친구 리스트 업데이트 여부
    /// </summary>
    /// <returns></returns>
    public bool GetUpdated()
    {
        return UpdatedMyFriendList;
    }

    public MiguProcess GetFriendProcess()
    {
        return FriendProcess;
    }

    public MiguProcess GetSuggestProcess()
    {
        return SuggestFriendProcess;
    }

    /// <summary>
    /// 추천 친구 리스트 업데이트 여부
    /// </summary>
    /// <returns></returns>
    public bool GetUpdatedForSuggestFriend()
    {
        return UpdatedSuggestedFriend;
    }

    /// <summary>
    /// 서버에서 얻어온 친구 리스트 가져오기
    /// </summary>
    /// <returns></returns>
    public MiguFriendStruct GetMyFriendList()
    {
        if ( FriendProcess != MiguProcess._Success )
            return null;

        return m_MyFriends;
    }

    /// <summary>
    /// 서버에서 얻어온 추천 친구 리스트 가져오기
    /// </summary>
    /// <returns></returns>
    public MiguFriendStruct GetSuggestFriendList()
    {
        if (SuggestFriendProcess != MiguProcess._Success)
            return null;

        return m_SuggestFriends;
    }

    /// <summary>
    /// 내 친구 리스트 얻기
    /// </summary>
    public void TryToGetMyFriendList(int ranktype = 0)
    {
        if (FriendProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/friend_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMyFriend";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("ranktype", ranktype.ToString());

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        FriendProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 추천 친구 리스트 얻기
    /// </summary>
    public void TryToGetSuggestFriendList(int count, int ranktype = 0)
    {
        if (SuggestFriendProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/friend_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetSuggestFriend";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "11");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("ranktype", ranktype.ToString());
        param.form.AddField("count", count);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        SuggestFriendProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 해당 유저를 내 친구로 추가하기
    /// </summary>
    /// <param name="friend_key"></param>
    public void AddMyFriendList(String friend_key, int ranktype = 0)
    {
        if (UpdatedMyFriendList && FriendProcess != MiguProcess._Processing)
            FriendProcess = MiguProcess._Processing;
        else
        if (FriendProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/friend_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMyFriend";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "111");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("friend", friend_key);
        param.form.AddField("ranktype", ranktype.ToString());

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        FriendProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 해당 유저를 내 친구에서 삭제하기
    /// </summary>
    /// <param name="friend_key">친구 관련 키( 인덱스 등 )</param>
    public void RemoveMyFriendList(String friend_key, int ranktype = 0)
    {
        if (UpdatedMyFriendList && FriendProcess != MiguProcess._Processing)
            FriendProcess = MiguProcess._Processing;
        else
            if (FriendProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/friend_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMyFriend";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1111");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("ranktype", ranktype.ToString());
        param.form.AddField("friend", friend_key);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        FriendProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 특정 유저를 이름으로 찾아서 추가하기
    /// </summary>
    /// <param name="friend_name"></param>
    public void FindAndAddMyFriendList(String friend_name, int ranktype = 0)
    {
        if (UpdatedMyFriendList && FriendProcess != MiguProcess._Processing)
            FriendProcess = MiguProcess._Processing;
        else
            if (FriendProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/friend_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMyFriend";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1111");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("ranktype", ranktype.ToString());
        param.form.AddField("friendname", friend_name);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        FriendProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 내 친구 리스트 얻기 콜백 함수
    /// </summary>
    /// <param name="param"></param>
    public void ReturnGetMyFriend(WebSlaveParam param)
    {
        FriendProcess = MiguProcess._Failed;
        // 친구 리스트 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int friendresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get Friend Result : " + friendresult + ":" + param.return_value);

        m_MyFriends.ClearFriendInfo();

        switch (friendresult)
        {
            case 1:   // Get Rank Success
                FriendProcess = MiguProcess._Success;

                if (datas.HasField("nofriend")) // 등록된 친구 없음
                    MyFriendCounts = 0;
                else
                {
                    MyFriendCounts = datas["friendlists"].Count;
                    for (int i = 0; i < MyFriendCounts; i++)
                        m_MyFriends.AddFriendInfo(datas["friendlists"][i]); // 각 친구 정보를 하나씩 얻어와 저장
                }
                UpdatedMyFriendList = true;

                break;
            default:   // Rank Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 추천된 친구 리스트 얻기
    /// </summary>
    /// <param name="param"></param>
    public void ReturnGetSuggestFriend(WebSlaveParam param)
    {
        SuggestFriendProcess = MiguProcess._Failed;
        // 친구 리스트 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        Debug.Log(param.return_value);

        JSONObject datas = new JSONObject(param.return_value);

        int friendresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get Suggested Friend Result : " + friendresult + ":" + param.return_value);

        m_SuggestFriends.ClearFriendInfo();

        switch (friendresult)
        {
            case 1:   // Get Rank Success
                SuggestFriendProcess = MiguProcess._Success;

                if (datas.HasField("nofriend")) // 추천된 친구 없음
                    SuggestedFriendCounts = 0;
                else
                {
                    SuggestedFriendCounts = datas["friendlists"].Count;
                    for (int i = 0; i < SuggestedFriendCounts; i++)
                        m_SuggestFriends.AddFriendInfo(datas["friendlists"][i]); // 각 친구 정보를 하나씩 얻어와 저장
                }
                break;
            default:   // Rank Failed
                Debug.Log(datas["message"]);
                break;
        }

        UpdatedSuggestedFriend = true;
    }

}
