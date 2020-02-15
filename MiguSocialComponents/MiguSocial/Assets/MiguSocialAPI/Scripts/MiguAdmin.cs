using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public enum MiguAdminMenu { _Nothing, _Notice, _Message, _EventURL, _Reward, _size };

public class MiguAdmin : MonoBehaviour
{
    private MiguProcess AdminProcess;

    bool Logined = false;
    String LoginKey = "";
    String Status = "";

    String ID = "";
    String MyID;
    String Password = "";

    String Title = "";
    String Description = "";

    String SearchID = "";

    String InputCouponUser = "0";
    bool InputRepeatFlag;
    String InputCouponType = "0";
    String InputMaxCount = "0";

    MiguAdminMenu MenuSelected;

    private MiguNoticeStruct m_News;
    private MiguNoticeStruct m_Messages;
    private MiguNoticeStruct m_EventURL;

    private String JustMakedCoupon = "";


    // Use this for initialization
    void Start()
    {
        MenuSelected = MiguAdminMenu._Nothing;

        m_News = new MiguNoticeStruct();
        m_Messages = new MiguNoticeStruct();
        m_EventURL = new MiguNoticeStruct();
    }

    // Update is called once per frame
    void OnGUI()
    {
        if (Logined == false)
        {
            GUILayout.BeginVertical(GUILayout.Width(200));

            GUILayout.BeginHorizontal();
            GUILayout.Label("ID :");
            ID = GUILayout.TextField(ID, 80);
            GUILayout.EndHorizontal();

            GUILayout.BeginHorizontal();
            GUILayout.Label("Password :");
            Password = GUILayout.PasswordField(Password, '*', 80);
            GUILayout.EndHorizontal();

            if (AdminProcess == MiguProcess._Nothing)
                if (GUILayout.Button("Admin Login"))
                    TryToLogin(ID, Password);

            GUILayout.EndVertical();
        }
        else
        {
            GUILayout.BeginVertical();

            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Notice"))
                MenuSelected = MiguAdminMenu._Notice;
            if (GUILayout.Button("Message"))
                MenuSelected = MiguAdminMenu._Message;
            if (GUILayout.Button("Events"))
                MenuSelected = MiguAdminMenu._EventURL;
            if (GUILayout.Button("Coupon"))
                MenuSelected = MiguAdminMenu._Reward;
            GUILayout.EndHorizontal();

            switch (MenuSelected)
            {
                case MiguAdminMenu._Notice: // 공지 처리 관련
                    if (GUILayout.Button("Get Notice List"))
                    {
                        TryToGetNewsList();
                    }

                    // 공지 처리, 이벤트 및 메세지도 동일. 단, 메세지는 삭제 기능 있음
                    foreach (Dictionary<MiguNoticeEnum, String> lists in m_News.NoticeLists)
                    {
                        GUILayout.BeginHorizontal();

                        GUILayout.Label(lists[MiguNoticeEnum._Title] + ":" + lists[MiguNoticeEnum._DateTime]);
                        if (GUILayout.Button("Delete", GUILayout.Width(80)))
                        {
                            TryToDeleteNews(lists[MiguNoticeEnum._KeyCode]);
                        }

                        GUILayout.EndHorizontal();
                    }

                    GUILayout.BeginHorizontal();
                    GUILayout.Label("Title : ");
                    Title = GUILayout.TextField(Title);
                    GUILayout.EndHorizontal();
                    GUILayout.BeginHorizontal();
                    GUILayout.Label("Details : ");
                    Description = GUILayout.TextArea(Description);
                    GUILayout.EndHorizontal();

                    if (GUILayout.Button("Write News"))
                    {
                        TryToWriteNews(Title, Description);
                    }
                    break;
                case MiguAdminMenu._Message:    // 메세지 처리 관련
                    GUILayout.BeginHorizontal();
                    GUILayout.Label("User ID : ");
                    SearchID = GUILayout.TextField(SearchID);

                    if (GUILayout.Button("Find User"))
                    {
                        TryToGetMessageList(SearchID);
                    }
                    GUILayout.EndHorizontal();

                    foreach (Dictionary<MiguNoticeEnum, String> lists in m_Messages.NoticeLists)
                    {
                        GUILayout.BeginHorizontal();

                        GUILayout.Label(lists[MiguNoticeEnum._Title] + ":" + lists[MiguNoticeEnum._Desc]);
                        if (GUILayout.Button("Delete", GUILayout.Width(80)))
                        {
                            TryToDeleteMessage(lists[MiguNoticeEnum._KeyCode]);
                        }

                        GUILayout.EndHorizontal();
                    }

                    GUILayout.BeginHorizontal();
                    GUILayout.Label("Title : ");
                    Title = GUILayout.TextField(Title);
                    GUILayout.EndHorizontal();
                    GUILayout.BeginHorizontal();
                    GUILayout.Label("Description : ");
                    Description = GUILayout.TextArea(Description);
                    GUILayout.EndHorizontal();

                    if (GUILayout.Button("Write New Message"))
                    {
                        TryToWriteMessage(Title, Description, SearchID);
                    }

                    break;
                case MiguAdminMenu._EventURL:   // 이벤트 URL 처리 관련
                    if (GUILayout.Button("Get EventURL List"))
                    {
                        TryToGetEventURLList();
                    }

                    foreach (Dictionary<MiguNoticeEnum, String> lists in m_EventURL.NoticeLists)
                    {
                        GUILayout.BeginHorizontal();

                        GUILayout.Label(lists[MiguNoticeEnum._Title] + ":" + lists[MiguNoticeEnum._Desc]);
                        if (GUILayout.Button("Delete", GUILayout.Width(80)))
                        {
                            TryToDeleteEventURL(lists[MiguNoticeEnum._KeyCode]);
                        }

                        GUILayout.EndHorizontal();
                    }

                    GUILayout.BeginHorizontal();
                    GUILayout.Label("Title : ");
                    Title = GUILayout.TextField(Title);
                    GUILayout.EndHorizontal();
                    GUILayout.BeginHorizontal();
                    GUILayout.Label("URL : ");
                    Description = GUILayout.TextArea(Description);
                    GUILayout.EndHorizontal();

                    if (GUILayout.Button("Write New Events"))
                    {
                        TryToWriteEventURL(Title, Description);
                    }
                    break;
                case MiguAdminMenu._Reward: // 상품 쿠폰 코드 처리 관련
                    GUILayout.BeginHorizontal();
                        GUILayout.Label("Personal User ID : [if no need - Use 0]");
                        InputCouponUser = GUILayout.TextField(InputCouponUser);
                    GUILayout.EndHorizontal();

                        InputRepeatFlag = GUILayout.Toggle(InputRepeatFlag, " : Repeat Flag");
                        GUILayout.Label("Coupon Type [ 1 - UserInvitation, 2 ~ 100 : Reference From Document ]");
                        InputCouponType = GUILayout.TextField(InputCouponType);

                        GUILayout.Label("Coupon Max Use [ 0 - Unlimited ]");
                        InputMaxCount = GUILayout.TextField(InputMaxCount);

                    if ( GUILayout.Button("Make New Coupon") )
                    {
                        TryMakeNewCoupon(InputCouponUser, InputRepeatFlag, InputCouponType, int.Parse(InputMaxCount));
                    }

                    GUILayout.BeginHorizontal();
                        GUILayout.Label("Just Maked : ");
                        GUILayout.TextField(JustMakedCoupon);
                    GUILayout.EndHorizontal();
                    break;
            }

            GUILayout.EndVertical();
        }

        GUILayout.Label(Status);
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToLogin(String id, String password)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnLoginResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1");
        param.form.AddField("id", id);
        MyID = id;
        password = TinyMD5.Md5Sum(password);
        param.form.AddField("password", password);

        String enckey = MiguSocial.instance.secretCode;
        param.form.AddField("enc", enckey);

        String hash = TinyMD5.Md5Sum(id + password + enckey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 로그인 결과 도착
    /// </summary>
    /// <param name="param"></param>
    public void ReturnLoginResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                Logined = true;
                LoginKey = datas.GetString(datas["secret"]);
                break;
        }
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToGetNewsList()
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetNewsListForAdmin";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "222");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        String hash = TinyMD5.Md5Sum(MyID + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnGetNewsListForAdmin(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int newsresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get News Result : " + newsresult + ":" + param.return_value);

        m_News.ClearNoticeInfo();

        int NewsCounts = 0;

        switch (newsresult)
        {
            case 1:   // Get News Success
                if (datas.HasField("nonews")) // 등록된 공지 없음
                    NewsCounts = 0;
                else
                {
                    NewsCounts = datas["newslists"].Count;
                    for (int i = 0; i < NewsCounts; i++)
                        m_News.AddNoticeInfo(datas["newslists"][i]); // 각 공지 정보를 하나씩 얻어와 저장
                }
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToWriteNews(String title, String desc)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnWriteNewsResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "2");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        param.form.AddField("title", title);
        param.form.AddField("desc", desc);

        String hash = TinyMD5.Md5Sum(MyID + title + desc + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnWriteNewsResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                TryToGetNewsList();
                break;
        }
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToDeleteNews(String keycode)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnDeleteNewsResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "22");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        param.form.AddField("remove_notice", keycode);

        String hash = TinyMD5.Md5Sum(MyID + keycode + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnDeleteNewsResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                TryToGetNewsList();
                break;
        }
    }


    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToGetMessageList(String userid)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetMessageForAdmin";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "3");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);
        param.form.AddField("username", userid);

        String hash = TinyMD5.Md5Sum(MyID + userid + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnGetMessageForAdmin(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int msgresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get Message Result : " + msgresult + ":" + param.return_value);

        m_Messages.ClearNoticeInfo();

        int MessageCount = 0;

        switch (msgresult)
        {
            case 1:   // Get News Success
                if (datas.HasField("nomsg")) // 등록된 공지 없음
                    MessageCount = 0;
                else
                {
                    MessageCount = datas["msglists"].Count;
                    for (int i = 0; i < MessageCount; i++)
                        m_Messages.AddNoticeInfo(datas["msglists"][i]); // 각 공지 정보를 하나씩 얻어와 저장
                }
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToWriteMessage(String title, String desc, String username)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnWriteMessageResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "33");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        param.form.AddField("title", title);
        param.form.AddField("desc", desc);
        param.form.AddField("username", username);

        String hash = TinyMD5.Md5Sum(MyID + title + desc + username + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnWriteMessageResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                TryToGetMessageList(SearchID);
                break;
        }
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToDeleteMessage(String keycode)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnDeleteMessageResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "333");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        param.form.AddField("remove_notice", keycode);

        String hash = TinyMD5.Md5Sum(MyID + keycode + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnDeleteMessageResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                TryToGetMessageList(SearchID);
                break;
        }
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToGetEventURLList()
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnGetEventURLListForAdmin";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "444");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        String hash = TinyMD5.Md5Sum(MyID + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnGetEventURLListForAdmin(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int urlresult = datas.GetValue(datas["stat"]);

        Debug.Log("Get EventURL Result : " + urlresult + ":" + param.return_value);

        m_EventURL.ClearNoticeInfo();

        int URLCounts = 0;

        switch (urlresult)
        {
            case 1:   // Get News Success
                if (datas.HasField("noevent")) // 등록된 공지 없음
                    URLCounts = 0;
                else
                {
                    URLCounts = datas["eventlists"].Count;
                    for (int i = 0; i < URLCounts; i++)
                        m_EventURL.AddNoticeInfo(datas["eventlists"][i]); // 각 공지 정보를 하나씩 얻어와 저장
                }
                break;
            default:   // Failed
                Debug.Log(datas["message"]);
                break;
        }

    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToWriteEventURL(String title, String desc)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnWriteEventURLResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "4");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        param.form.AddField("title", title);
        param.form.AddField("desc", desc);

        String hash = TinyMD5.Md5Sum(MyID + title + desc + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnWriteEventURLResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                TryToGetEventURLList();
                break;
        }
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryToDeleteEventURL(String keycode)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnDeleteEventURLResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "44");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);

        param.form.AddField("remove_notice", keycode);

        String hash = TinyMD5.Md5Sum(MyID + keycode + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnDeleteEventURLResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Result : " + loginresult + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (loginresult)
        {
            case 1:
                TryToGetEventURLList();
                break;
        }
    }

    /// <summary>
    /// 로그인 시도하기
    /// </summary>
    public void TryMakeNewCoupon(String userid, bool repeatcode, String coupontype, int maxuse)
    {
        if (AdminProcess >= MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MiguSocial.instance.Main_URL + "/ddungadmin.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnMakeNewCouponResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "5");
        param.form.AddField("id", MyID);
        param.form.AddField("enc", LoginKey);
        param.form.AddField("username", userid);
        if ( repeatcode )
            param.form.AddField("repeatcode", "1");
        else
            param.form.AddField("repeatcode", "0");
        param.form.AddField("coupontype", coupontype);
        param.form.AddField("maxuse", maxuse.ToString());

        String hash = TinyMD5.Md5Sum(MyID + userid + coupontype + maxuse.ToString() + LoginKey);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        AdminProcess = MiguProcess._Processing;
    }

    public void ReturnMakeNewCouponResult(WebSlaveParam param)
    {
        AdminProcess = MiguProcess._Nothing;

        // 로그인 실패
        if (param.return_error != null)
        {
            Logined = false;
            Status = "Failed : Cannot connect to Server";
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int makecoupon = datas.GetValue(datas["stat"]);

        Debug.Log("Make Coupon Result : " + makecoupon + ":" + param.return_value);

        Status = datas.GetString(datas["message"]);

        switch (makecoupon)
        {
            case 1:
                JustMakedCoupon = datas.GetString(datas["coupon"]);
                break;
        }
    }

}
