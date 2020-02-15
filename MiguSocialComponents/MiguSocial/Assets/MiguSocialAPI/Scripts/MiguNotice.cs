using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;

/// <summary>
/// 본 Enum 등은 프로젝트 별 수정할 필요 없음. 꼭 수정해야 한다면, _KeyCode 이외의 값만 추가 및 삭제 후 서버도 함께 수정 필요. _KeyCode 는 메세지 삭제 등에 사용됨
/// </summary>
public enum MiguNoticeEnum { _KeyCode = 0,_DateTime, _Title, _Desc, _size };

/// <summary>
/// 공지 정보를 담을 기본 구조체 클래스
/// </summary>
public class MiguNoticeStruct
{
    public ArrayList NoticeLists;

    public MiguNoticeStruct()
    {
        NoticeLists = new ArrayList();
    }

    /// <summary>
    /// 공지 리스트를 채우기 전에 클리어 할 것
    /// </summary>
    public void ClearNoticeInfo()
    {
        NoticeLists.Clear();
    }

    /// <summary>
    /// 공지 정보를 하나씩 읽어와 FriendLists 에 등록함
    /// </summary>
    /// <param name="json_data">공지정보가 JSON Array 형태로 들어있는 객체</param>
    public void AddNoticeInfo(JSONObject json_data)
    {
        Dictionary<MiguNoticeEnum, String> data_struct = new Dictionary<MiguNoticeEnum, string>();

        for (int i = 0; i < (int)MiguNoticeEnum._size; i++)
        {
            String key = ((MiguNoticeEnum)i).ToString();

            if (json_data.HasField(key))
            {
                data_struct[(MiguNoticeEnum)i] = json_data.GetString(json_data[key]);
            }
        }

        // 무조건 순차적으로 들어감
        NoticeLists.Add(data_struct);
    }
}


public class MiguNotice : MonoBehaviour 
{
    static MiguNotice m_instance;
    public static MiguNotice instance
    {
        get
        {
            return m_instance;
        }
    }

    private bool Dirty = true;
    private MiguProcess NewsProcess;
    private MiguProcess GMMessageProcess;
    private MiguProcess EventURLProcess;
    private MiguProcess CheckingUpdateProcess;

    private MiguNoticeStruct m_News;
    private MiguNoticeStruct m_Messages;
    private MiguNoticeStruct m_EventURL;

    private int NewsCounts;
    private int MessageCounts;
    private int EventURLCounts;

    /// <summary>
    /// 최소 1회 이상 뉴스 리스트 얻어왔는지 여부
    /// </summary>
    private bool UpdatedNewsList;
    /// <summary>
    /// 최소 1회 이상 메세지 리스트 얻어왔는지 여부
    /// </summary>
    private bool UpdatedMessageList;
    /// <summary>
    /// 최소 1회 이상 이벤트 주소 얻어왔는지 여부
    /// </summary>
    private bool UpdatedEventURLList;

    /// <summary>
    /// 새롭게 서버에 공지된 내용 등이 있는지 여부.
    /// </summary>
    private bool NewsNeedToUpdate = false;
    /// <summary>
    /// 새롭게 서버에서 온 메세지가 있는지 여부
    /// </summary>
    private bool MessageNeedToUpdate = false;
    /// <summary>
    /// 새롭게 이벤트 URL이 업데이트 되었는지 여부
    /// </summary>
    private bool EventURLNeedToUpdate = false;

    /// <summary>
    /// 모든 뉴스, 메세지, 이벤트 등을 자동으로 체크하고, 자동으로 필요시 업데이트 할지 여부
    /// </summary>
    public bool AutoUpdateAllNotices;

    /// <summary>
    /// 몇분에 한번씩 업데이트 된 내용이 있는지 체크할지 시간(분)
    /// </summary>
    public int CheckUpdateMinutes = 30;

    private float LastCheckedTime;

    void Start()
    {
        m_instance = this;
        m_News = new MiguNoticeStruct();
        m_Messages = new MiguNoticeStruct();
        m_EventURL = new MiguNoticeStruct();

        LastCheckedTime = Time.realtimeSinceStartup - (CheckUpdateMinutes * 60.0f);

        UsingLocalDatas();

        Dirty = false;
    }

    void Update()
    {
        if (Dirty)
            return;

        if (MiguSocial.instance == null || MiguSocial.instance.GetLoginProcess() != MiguProcess._Success)
            return;

        float now = Time.realtimeSinceStartup;

        if ( now > LastCheckedTime + (float)CheckUpdateMinutes * 60.0f && CheckingUpdateProcess < MiguProcess._Processing )
        {
            LastCheckedTime = now;
            StartCoroutine("WaitAndCheckUpdate");
        }

        // 자동 업데이트 처리
        if ( AutoUpdateAllNotices )
        {
            if ( NewsNeedToUpdate )
            {
                NewsNeedToUpdate = false;
                StartCoroutine("WaitAndUpdateNews");
            }
            
            if ( MessageNeedToUpdate )
            {
                MessageNeedToUpdate = false;
                StartCoroutine("WaitAndUpdateMessage");
            }

            if ( EventURLNeedToUpdate )
            {
                EventURLNeedToUpdate = false;
                StartCoroutine("WaitAndUpdateEventURL");
            }
        }
    }

    /// <summary>
    /// 현재 공지나, 메세지, 이벤트 URL등에 새로운 업데이트가 있는지 체크
    /// </summary>
    /// <returns>새로운 뉴스 업데이트가 있음 여부</returns>
    public bool GetNeedUpdatedNews()
    {
        return NewsNeedToUpdate;
    }

    /// <summary>
    /// 현재 공지나, 메세지, 이벤트 URL등에 새로운 업데이트가 있는지 체크
    /// </summary>
    /// <returns>새로운 뉴스 업데이트가 있음 여부</returns>
    public bool GetNeedUpdatedMessage()
    {
        return MessageNeedToUpdate;
    }

    /// <summary>
    /// 현재 공지나, 메세지, 이벤트 URL등에 새로운 업데이트가 있는지 체크
    /// </summary>
    /// <returns>새로운 뉴스 업데이트가 있음 여부</returns>
    public bool GetNeedUpdatedEventURL()
    {
        return EventURLNeedToUpdate;
    }

    /// <summary>
    /// 뉴스 리스트 업데이트 여부
    /// </summary>
    /// <returns></returns>
    public bool GetUpdatedNews()
    {
        return UpdatedNewsList;
    }

    /// <summary>
    /// 메세지 리스트 업데이트 여부
    /// </summary>
    /// <returns></returns>
    public bool GetUpdatedMessage()
    {
        return UpdatedMessageList;
    }

    /// <summary>
    /// 이벤트 URL 리스트 업데이트 여부
    /// </summary>
    /// <returns></returns>
    public bool GetUpdatedEventURL()
    {
        return UpdatedEventURLList;
    }

    /// <summary>
    /// 서버에서 얻어온 공지 가져오기
    /// </summary>
    /// <returns></returns>
    public MiguNoticeStruct GetNewsList()
    {
        if (NewsProcess != MiguProcess._Success)
            return null;

        return m_News;
    }

    /// <summary>
    /// 서버에서 얻어온 메세지 리스트 가져오기
    /// </summary>
    /// <returns></returns>
    public MiguNoticeStruct GetMessageList()
    {
        if (GMMessageProcess != MiguProcess._Success)
            return null;

        return m_Messages;
    }

    /// <summary>
    /// 서버에서 얻어온 이벤트 URL 리스트 가져오기
    /// </summary>
    /// <returns></returns>
    public MiguNoticeStruct GetEventURLList()
    {
        if (EventURLProcess != MiguProcess._Success)
            return null;

		return m_EventURL;
    }

    /// <summary>
    /// 서버에 무엇인가 업데이트 되어 있는 상태인지 체크
    /// </summary>
    private void TryToCheckUpdatedSomething()
    {
        if (CheckingUpdateProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/notice_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnUpdatedSomething";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "2");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        CheckingUpdateProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 뉴스 리스트 얻기
    /// </summary>
    public void TryToGetNewsList(int count = 10)
    {
        if (UpdatedNewsList && NewsProcess != MiguProcess._Processing)
            NewsProcess = MiguProcess._Processing;
        else
            if (NewsProcess >= MiguProcess._Processing)
                return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/notice_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetNews";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("count", count);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        NewsProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 메세지 리스트 얻기
    /// </summary>
    public void TryToGetMessageList(int count = 10)
    {
        if (UpdatedMessageList && GMMessageProcess != MiguProcess._Processing)
            GMMessageProcess = MiguProcess._Processing;
        else
            if (GMMessageProcess >= MiguProcess._Processing)
                return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/notice_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMessage";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "11");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("count", count);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        GMMessageProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 이벤트 URL 리스트 얻기
    /// </summary>
    public void TryToGetEventURLList(int count = 5)
    {
        if (UpdatedEventURLList && EventURLProcess != MiguProcess._Processing)
            EventURLProcess = MiguProcess._Processing;
        else
            if (EventURLProcess >= MiguProcess._Processing)
                return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/notice_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetEventURL";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1111");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("count", count);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        EventURLProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 해당 메세지 불필요로 삭제
    /// </summary>
    /// <param name="msg_key">삭제할 메세지 키</param>
    public void RemoveMessage(String msg_key)
    {
        if (UpdatedMessageList && GMMessageProcess != MiguProcess._Processing)
            GMMessageProcess = MiguProcess._Processing;
        else
            if (GMMessageProcess >= MiguProcess._Processing)
                return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/notice_work.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMessage";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "111");
        param.form.AddField("gametype", MiguSocial.instance.Game_Identifier);
        param.form.AddField("user", MiguSocial.instance.User_Identifier);
        param.form.AddField("msg", msg_key);

        String enckey = MiguSocial.instance.GetNetEncrypt();
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(MiguSocial.instance.Game_Identifier + MiguSocial.instance.User_Identifier + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        GMMessageProcess = MiguProcess._Processing;
    }


    /// <summary>
    /// 뉴스 리스트 얻기 콜백 함수
    /// </summary>
    /// <param name="param"></param>
    public void ReturnGetNews(WebSlaveParam param)
    {
        NewsProcess = MiguProcess._Failed;
        // 뉴스 리스트 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int newsresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get News Result : " + newsresult + ":" + param.return_value);

        m_News.ClearNoticeInfo();

        switch (newsresult)
        {
            case 1:   // Get News Success
                NewsProcess = MiguProcess._Success;

                if (datas.HasField("nonews")) // 등록된 공지 없음
                    NewsCounts = 0;
                else
                {
                    NewsCounts = datas["newslists"].Count;
                    for (int i = 0; i < NewsCounts; i++)
                        m_News.AddNoticeInfo(datas["newslists"][i]); // 각 공지 정보를 하나씩 얻어와 저장
                }

                String path = Application.persistentDataPath + "/" + "localnews.txt";
                File.WriteAllText(path, param.return_value);

                PlayerPrefs.SetString("NewsUpdated", datas.GetString(datas["newscode"]));

                UpdatedNewsList = true;
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 메세지 리스트 얻기
    /// </summary>
    /// <param name="param"></param>
    public void ReturnGetMessage(WebSlaveParam param)
    {
        GMMessageProcess = MiguProcess._Failed;
        // 메세지 리스트 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int msgresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get message Result : " + msgresult + ":" + param.return_value);

        m_Messages.ClearNoticeInfo();

        switch (msgresult)
        {
            case 1:   // Get Message Success
                GMMessageProcess = MiguProcess._Success;

                if (datas.HasField("nomsg")) // 등록된 메세지 없음
                    MessageCounts = 0;
                else
                {
                    MessageCounts = datas["msglists"].Count;
                    for (int i = 0; i < MessageCounts; i++)
                        m_Messages.AddNoticeInfo(datas["msglists"][i]); // 각 메세지 정보를 하나씩 얻어와 저장
                }

                String path = Application.persistentDataPath + "/" + "localmessage.txt";
                File.WriteAllText(path, param.return_value);

                PlayerPrefs.SetString("MessageUpdated", datas.GetString(datas["msgcode"]));
                UpdatedMessageList = true;
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 이벤트 URL 리스트 얻기 콜백 함수
    /// </summary>
    /// <param name="param"></param>
    public void ReturnGetEventURL(WebSlaveParam param)
    {
        EventURLProcess = MiguProcess._Failed;
        // 이벤트 리스트 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int eventresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get Events URL Result : " + eventresult + ":" + param.return_value);

        m_EventURL.ClearNoticeInfo();

        switch (eventresult)
        {
            case 1:   // Get Event Success
                EventURLProcess = MiguProcess._Success;

                if (datas.HasField("noevent")) // 등록된 이벤트 없음
                    EventURLCounts = 0;
                else
                {
                    EventURLCounts = datas["eventlists"].Count;
                    for (int i = 0; i < EventURLCounts; i++)
                        m_EventURL.AddNoticeInfo(datas["eventlists"][i]); // 각 이벤트 정보를 하나씩 얻어와 저장
                }

                String path = Application.persistentDataPath + "/" + "localeventurl.txt";
                File.WriteAllText(path, param.return_value);

                PlayerPrefs.SetString("EventURLUpdated", datas.GetString(datas["eventcode"]));
                UpdatedEventURLList = true;
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 업데이트 된 정보가 있는지 얻어옴
    /// </summary>
    /// <param name="param"></param>
    public void ReturnUpdatedSomething(WebSlaveParam param)
    {
        CheckingUpdateProcess = MiguProcess._Nothing;
        // 업데이트 정보 얻기 실패
        if (param.return_error != null)
        {
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int updated = datas.GetValue(datas["stat"]);

        Debug.Log("Get Update Result : " + updated + ":" + param.return_value);

        switch (updated)
        {
            case 1:   // Check Need To Update
                String code = datas.GetString(datas["newscode"]);
                if (code.CompareTo(PlayerPrefs.GetString("NewsUpdated")) != 0)
                    NewsNeedToUpdate = true;
                else
                    NewsNeedToUpdate = false;

                code = datas.GetString(datas["msgcode"]);
                if (code.CompareTo(PlayerPrefs.GetString("MessageUpdated")) != 0)
                    MessageNeedToUpdate = true;
                else
                    MessageNeedToUpdate = false;

                code = datas.GetString(datas["eventcode"]);
                if (code.CompareTo(PlayerPrefs.GetString("EventURLUpdated")) != 0)
                    EventURLNeedToUpdate = true;
                else
                    EventURLNeedToUpdate = false;
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 로컬 데이터읽어오기
    /// </summary>
    public void UsingLocalDatas()
    {
        String path = Application.persistentDataPath + "/" + "localnews.txt";
        String fromfile;

        if (File.Exists(path))
        {
            fromfile = File.ReadAllText(path);
            NewsProcess = MiguProcess._Success;

            JSONObject datas = new JSONObject(fromfile);
            if (datas.HasField("nonews")) // 등록된 공지 없음
                NewsCounts = 0;
            else
            {
                NewsCounts = datas["newslists"].Count;
                for (int i = 0; i < NewsCounts; i++)
                    m_News.AddNoticeInfo(datas["newslists"][i]); // 각 공지 정보를 하나씩 얻어와 저장
            }

            UpdatedNewsList = true;
        }

        path = Application.persistentDataPath + "/" + "localmessage.txt";
        if (File.Exists(path))
        {
            fromfile = File.ReadAllText(path);
            GMMessageProcess = MiguProcess._Success;
            JSONObject datas = new JSONObject(fromfile);
            if (datas.HasField("nomsg")) // 등록된 메세지 없음
                MessageCounts = 0;
            else
            {
                MessageCounts = datas["msglists"].Count;
                for (int i = 0; i < MessageCounts; i++)
                    m_Messages.AddNoticeInfo(datas["msglists"][i]); // 각 메세지 정보를 하나씩 얻어와 저장
            }
            UpdatedMessageList = true;
        }

        path = Application.persistentDataPath + "/" + "localeventurl.txt";
        if (File.Exists(path))
        {
            fromfile = File.ReadAllText(path);
            EventURLProcess = MiguProcess._Success;

            JSONObject datas = new JSONObject(fromfile);
            if (datas.HasField("noevent")) // 등록된 이벤트 없음
                EventURLCounts = 0;
            else
            {
                EventURLCounts = datas["eventlists"].Count;
                for (int i = 0; i < EventURLCounts; i++)
                    m_EventURL.AddNoticeInfo(datas["eventlists"][i]); // 각 이벤트 정보를 하나씩 얻어와 저장
            }
            UpdatedEventURLList = true;
        }
    }

    IEnumerator WaitAndCheckUpdate()
    {
        yield return new WaitForSeconds(2);
        TryToCheckUpdatedSomething();
    }

    IEnumerator WaitAndUpdateNews()
    {
        yield return new WaitForSeconds(4);
        TryToGetNewsList();
    }

    IEnumerator WaitAndUpdateMessage()
    {
        yield return new WaitForSeconds(6);
        TryToGetMessageList();
    }

    IEnumerator WaitAndUpdateEventURL()
    {
        yield return new WaitForSeconds(2);
        TryToGetEventURLList();
    }
}
