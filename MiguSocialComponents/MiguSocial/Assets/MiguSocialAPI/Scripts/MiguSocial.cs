using UnityEngine;
using System;
using System.Collections;
using System.IO;

public enum MiguProcess { _Nothing, _Failed, _Cancel, _Processing, _Success };
public enum MiguProcessError { _NoError, _NotYetInit, _NoInternet, _LoginFailed, _SaveFailed };
public enum LocalOrOnline { _Both, _Local, _Online, _Select };

public class MiguSocial : MonoBehaviour 
{
    static MiguSocial m_instance = null;
    public static MiguSocial instance
    {
        get
        {
            if (m_instance == null)
                SetError(MiguProcessError._NotYetInit, "초기화 이전상태");

            return m_instance;
        }
    }

    private static String Error_status;
    private static MiguProcessError Error;

    private MiguProcess CheckingProcess;
    private MiguProcess LoginProcess;
    private MiguProcess SavingProcess;
    private MiguProcess SetNameProcess;
    private MiguProcess ServerTimeProcess;

    private String Trying_ID;
    private String Trying_Password;
    private int Trying_loginstyle;

    /// <summary>
    /// 이미 계정에 유저가 명확한 자신의 ID(별명)을 셋팅했는지 여부 - 않했다면, 유저에게 ID를 만들도록 유도 가능
    /// </summary>
    private bool AlreadyMakedNickName;
    /// <summary>
    /// 유저가 계정에 셋팅한 실제 ID(별명) - Unique 속성
    /// </summary>
    private String PlayerNickName;

    private String netSecretCode;
    private int netChecking;

    private long ServerTimeTick;
    private DateTime ServerTime;

    public String secretCode = "cf79c9a3881a4ceb92cca703eefee1a3";// "GodAlwaysLovesUs!ThanksToGod!" 의 MD5;
    public String Main_URL;

    // http://ddungsvr.anyumedia.com/ddung

    /// <summary>
    /// 링타이거에서 제공받은 게임 구분자 코드
    /// </summary>
    public String Game_Identifier;
    /// <summary>
    /// 유저 구분자 - 디바이스 구분자
    /// </summary>
    [HideInInspector]
    public String User_Identifier;

    /// <summary>
    /// 로컬에 저장된 유저 데이터 관리
    /// </summary>
    private UserInformation m_local_datas;

    /// <summary>
    /// 온라인 상에서 얻어온 유저 데이터 관리
    /// </summary>
    private UserInformation m_online_datas;


    /// <summary>
    /// 관련 컴퍼넌트 에러 상태 얻기
    /// </summary>
    /// <param name="Description">에러 상태에 대한 문자열 참조</param>
    /// <returns>MiguProcessError 에러 상태</returns>
    public static MiguProcessError GetError(ref String Description)
    {
        Description = Error_status;
        return Error;
    }

    private static void SetError(MiguProcessError err, String desc)
    {
        Debug.Log(err + ":" + desc);

        Error_status = desc;
        Error = err;
    }

    // Use this for initialization
    void Start()
    {
        if (m_instance != null)
        {
            Destroy(this.gameObject);
            return;
        }

        m_instance = this;

        SetError(MiguProcessError._NoError, "초기화됨");

        User_Identifier = TinyMD5.Md5Sum(SystemInfo.deviceUniqueIdentifier + secretCode);
        CheckingProcess = MiguProcess._Nothing;
        LoginProcess = MiguProcess._Nothing;
        SavingProcess = MiguProcess._Nothing;

        m_local_datas = new UserInformation();
        m_online_datas = new UserInformation();

        netSecretCode = secretCode;
    }

    // Update is called once per frame
    void Update()
    {
        if (m_instance == null)
            return;
    }

    /// <summary>
    /// 현재 체킹 진행중인 상황 얻기
    /// </summary>
    /// <returns></returns>
    public MiguProcess GetCheckingProcess()
    {
        return CheckingProcess;
    }

    /// <summary>
    /// 현재 서버 타입 얻어온 상태
    /// </summary>
    /// <returns></returns>
    public MiguProcess GetServerTimeProcess()
    {
        return ServerTimeProcess;
    }

    public MiguProcess GetSavingProcess()
    {
        return SavingProcess;
    }

    /// <summary>
    /// 현재 로그인 진행중인 상황 얻기
    /// </summary>
    /// <returns></returns>
    public MiguProcess GetLoginProcess()
    {
        return LoginProcess;
    }

    /// <summary>
    /// 현재 이름 셋팅중인 상황 얻기
    /// </summary>
    /// <returns></returns>
    public MiguProcess GetSetNameProcess()
    {
        return SetNameProcess;
    }

    /// <summary>
    /// 현재 계정에 유저가 이름을 셋팅했는지 여부 얻어옴
    /// </summary>
    /// <returns></returns>
    public bool GetAccountUserNameStatus()
    {
        return AlreadyMakedNickName;
    }

    /// <summary>
    /// 현재 계정에 유저가 셋팅한 이름 얻어옴
    /// </summary>
    /// <returns></returns>
    public String GetAccountUserName()
    {
        return PlayerNickName;
    }

    public DateTime GetStoredServerTime()
    {
        return ServerTime;
    }

    /// <summary>
    /// 온라인 암호화 코드 얻기
    /// </summary>
    /// <returns></returns>
    public String GetNetEncrypt()
    {
        return netSecretCode;
    }

    /// <summary>
    /// 유저 정보의 특정 변수에 값 넣기
    /// </summary>
    /// <param name="key">변수 키</param>
    /// <param name="value">넣을 값</param>
    /// <param name="where">로컬 또는 온라인</param>
    public void SetValue(String key, String value, LocalOrOnline where = LocalOrOnline._Both)
    {
//        Debug.Log( "Set Data : " + key + ":" + value);   

        switch(where)
        {
            case LocalOrOnline._Both:
                m_local_datas.SetValue(key, value);
                m_online_datas.SetValue(key, value);
                break;
            case LocalOrOnline._Local:
                m_local_datas.SetValue(key, value);
                break;
            case LocalOrOnline._Online:
                m_online_datas.SetValue(key, value);
                break;
            case LocalOrOnline._Select:
                if (LoginProcess == MiguProcess._Success && CheckingProcess == MiguProcess._Success)
                    m_online_datas.SetValue(key, value);
                else
                    m_local_datas.SetValue(key, value);
                break;
        }

//        Debug.Log(m_online_datas.ToJSONString());
    }

    /// <summary>
    /// 유저 정보에서 특정 변수값 얻어오기
    /// </summary>
    /// <param name="key">변수 키</param>
    /// <param name="where">로컬 또는 온라인</param>
    /// <returns></returns>
    public String GetValue(String key, LocalOrOnline where = LocalOrOnline._Both)
    {
        switch (where)
        {
            case LocalOrOnline._Local:
                return m_local_datas.GetValue(key);
            case LocalOrOnline._Online:
                return m_online_datas.GetValue(key);
            default:
                if (LoginProcess == MiguProcess._Success && CheckingProcess == MiguProcess._Success)
                    return m_online_datas.GetValue(key);
                else
                    return m_local_datas.GetValue(key);
                break;
        }

        return "null";
    }

    /// <summary>
    /// 해당 데이터의 숫자 값 읽어오기
    /// </summary>
    /// <param name="key"></param>
    /// <param name="where"></param>
    /// <returns></returns>
    public int GetIntValue(String key, LocalOrOnline where = LocalOrOnline._Both)
    {
        switch (where)
        {
            case LocalOrOnline._Local:
                if ( m_local_datas.CheckKey(key) )
                    return int.Parse(m_local_datas.GetValue(key));
                break;
            case LocalOrOnline._Online:
                if (m_online_datas.CheckKey(key))
                    return int.Parse(m_online_datas.GetValue(key));
                break;
            default:
                if (LoginProcess == MiguProcess._Success && CheckingProcess == MiguProcess._Success)
                {
                    if (m_online_datas.CheckKey(key))
                        return int.Parse(m_online_datas.GetValue(key));
                }
                else
                    if (m_online_datas.CheckKey(key))
                        return int.Parse(m_local_datas.GetValue(key));
                break;
        }

        return 0;
    }

    /// <summary>
    /// #2. 반드시 네트워크 연결시 최초 해당 함수를 활용하여, 서버로부터 암호화 키를 얻어온다. 서버 내부적으로는 접속 시도 로그로 활용됨
    /// </summary>
    public void CheckingServer()
    {
        Debug.Log("Checking Server");

        // 인터넷 연결 않되는 상태라면, 바로 실패 처리
        switch ( Application.internetReachability )
        {
            case NetworkReachability.NotReachable:
                CheckingProcess = MiguProcess._Failed;

                if (LoginProcess == MiguProcess._Processing)
                    LoginProcess = MiguProcess._Failed;
            return;
        }

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = Main_URL + "/checking.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnCheckingResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 
        param.form = new WWWForm();

        String pass = User_Identifier;
        String nowtime = DateTime.Now.Ticks.ToString();
        String datetime = TinyMD5.Md5Sum(nowtime + secretCode);
        param.form.AddField("time", nowtime);
        param.form.AddField("id", pass);
        param.form.AddField("enc", secretCode);
        param.form.AddField("check", datetime);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        Debug.Log("try to check");


        CheckingProcess = MiguProcess._Processing;
    }


    /// <summary>
    /// #2 - 2. 체크 콜백 함수. 서버로부터 암호화 키를 얻은 후, 이후 해당 키를 사용하여 통신 진행함
    /// </summary>
    /// <param name="param"></param>
    void ReturnCheckingResult(WebSlaveParam param)
    {
        if (param.return_error != null)
        {
            SetError(MiguProcessError._NoInternet, "인터넷 연결 않되어 있는 상태 - " + param.return_error);
            CheckingProcess = MiguProcess._Failed;

            if (LoginProcess == MiguProcess._Processing)
                LoginProcess = MiguProcess._Failed;
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        netSecretCode = datas.GetString(datas["secret"]);
        netChecking = datas.GetValue(datas["stat"]);

        Debug.Log(netChecking + ":" + datas.GetString(datas["message"]));

        CheckingProcess = MiguProcess._Success;

        // 로그인 진행 중, 체크를 진행했다면, 자동으로 로그인 과정 실행
        if (LoginProcess == MiguProcess._Processing)
        {
            StartCoroutine("WaitingAndTryToLogin");
        }
    }


    /// <summary>
    /// #1. 로그인 시도 함수. 네트워크 상황 등에 따른 암호화 키 받는 처리 등이 포함되어 있음
    /// </summary>
    /// <param name="outside_ID">외부 로그인을 위한 ID</param>
    /// <param name="outside_Password">외부 로그인을 위한 비밀번호</param>
    /// <param name="outside_loginstyle">외부 로그인 스타일</param>
    public void TryToLogin(String outside_ID, String outside_Password, int outside_loginstyle)
    {
        if (LoginProcess == MiguProcess._Processing)
            return;

        Debug.Log("try to login");

        Trying_ID = outside_ID;
        Trying_Password = outside_Password;
        Trying_loginstyle = outside_loginstyle;

        switch (CheckingProcess)
        {
            // 현재 네트워크 체크중이면 진행 불가
            case MiguProcess._Processing:
                return;
            // 암호키 등 확인 끝난 상태라면 정상적으로 로그인 과정 진행
            case MiguProcess._Success:
                break;
            // 기타 제대로 체킹 과정이 진행되지 않았다면, 먼저 체킹 과정부터 다시 시작
            default:
                LoginProcess = MiguProcess._Processing;
                CheckingServer();
                return;
        }

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = Main_URL + "/login.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnLoginResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "1");
        param.form.AddField("username", outside_ID);
        param.form.AddField("password", outside_Password);
        param.form.AddField("type", outside_loginstyle.ToString());
        param.form.AddField("loginkey", netSecretCode);
        param.form.AddField("deviceid", User_Identifier);

        String hash = TinyMD5.Md5Sum(outside_ID + outside_Password + outside_loginstyle.ToString() + User_Identifier + netSecretCode);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        LoginProcess = MiguProcess._Processing;


    }

    /// <summary>
    /// 로그인 결과 콜백 함수
    /// </summary>
    /// <param name="param">로그인 결과 리턴됨</param>
    public void ReturnLoginResult(WebSlaveParam param)
    {
        // 로그인 과정 중 네트워크 이상등의 문제 발생하면, 체킹부터 다시 진행 필요
        if (param.return_error != null)
        {
            LoginProcess = MiguProcess._Failed;
            CheckingProcess = MiguProcess._Failed;

            SetError(MiguProcessError._NoInternet, "인터넷 연결 않되어 있는 상태 : " + param.return_error);
            return;
        }

        

        JSONObject datas = new JSONObject(param.return_value);

        int loginresult = datas.GetValue(datas["stat"]);

        Debug.Log("Login Result : " + loginresult + ":" + param.return_value);

        switch (loginresult)
        {
            case 200:   //Login Success
                LoginProcess = MiguProcess._Success;

                m_online_datas.FillFromJSONString(datas["datas"][0]);

                AlreadyMakedNickName = datas.GetValue(datas["id_maked"]) == 1;
                PlayerNickName = datas.GetString(datas["user_nickname"]);

                if ( !datas["datas"][0].HasField("nothing") )
                    MiguDataMan.instance.InitializeDataFromServer();

                break;
            default:   // Login Failed
				LoginProcess = MiguProcess._Failed;
                SetError(MiguProcessError._LoginFailed, datas.GetString(datas["message"]));

                Debug.Log(datas["message"]);
                break;
        }
    }


    /// <summary>
    /// 로그인 처리 코루틴
    /// </summary>
    /// <param name="outside_ID">로그인 ID</param>
    /// <param name="outside_Password">로그인 PW</param>
    /// <param name="outside_loginstyle">로그인 타입</param>
    /// <returns></returns>
    IEnumerator AsyncLogin(String outside_ID, String outside_Password, int outside_loginstyle)
    {
        TryToLogin(outside_ID, outside_Password, outside_loginstyle);

        while (MiguSocial.instance.GetLoginProcess() == MiguProcess._Processing)
        {
            yield return new WaitForSeconds(0.5f);
        }
    }



    /// <summary>
    /// #1-2. 유저 이름(일종의 ID)셋팅 함수. MiguSocial 의 중요 요소로, 최초 1회에 한해서 유저는 자신의 아이디를 셋팅할 수 있음
    /// </summary>
    /// <param name="outside_ID">외부 로그인을 위한 ID</param>
    /// <param name="outside_Password">외부 로그인을 위한 비밀번호</param>
    /// <param name="outside_loginstyle">외부 로그인 스타일</param>
    public void TryToSetUserName(String try_name)
    {
        if (LoginProcess != MiguProcess._Success || CheckingProcess != MiguProcess._Success || SetNameProcess == MiguProcess._Processing)
            return;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = Main_URL + "/login.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnSetNameResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "22");
        param.form.AddField("usernick", try_name);
        param.form.AddField("loginkey", netSecretCode);
        param.form.AddField("deviceid", User_Identifier);

        String hash = TinyMD5.Md5Sum(User_Identifier + try_name + netSecretCode);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        SetNameProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 유저 이름(아이디)셋팅 결과
    /// </summary>
    /// <param name="param">결과 리턴됨</param>
    public void ReturnSetNameResult(WebSlaveParam param)
    {
        // 로그인 과정 중 네트워크 이상등의 문제 발생하면, 체킹부터 다시 진행 필요
        if (param.return_error != null)
        {
            SetNameProcess = MiguProcess._Failed;
            SetError(MiguProcessError._NoInternet, "인터넷 연결 않되어 있는 상태");
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int setnameresult = datas.GetValue(datas["stat"]);

        Debug.Log("Set Name Result : " + setnameresult + ":" + param.return_value);

        switch (setnameresult)
        {
            case 1:   //Login Success
                SetNameProcess = MiguProcess._Success;

                AlreadyMakedNickName = true;
                PlayerNickName = datas.GetString(datas["user_nickname"]);
                break;
            default:   // Login Failed
                SetNameProcess = MiguProcess._Failed;
                SetError(MiguProcessError._LoginFailed, datas.GetString(datas["message"]));

                Debug.Log(datas["message"]);
                break;
        }
    }



    /// <summary>
    /// 현재 데이터 정보 서버에 저장하기
    /// </summary>
    /// <param name="outside_ID"></param>
    /// <param name="outside_Password"></param>
    /// <param name="outside_loginstyle"></param>
    public void TryToSaveDataToServer(String outside_ID, String outside_Password, int outside_loginstyle)
    {
        if (LoginProcess != MiguProcess._Success || CheckingProcess != MiguProcess._Success || SavingProcess == MiguProcess._Processing)
            return;

        Trying_ID = outside_ID;
        Trying_Password = outside_Password;
        Trying_loginstyle = outside_loginstyle;

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = Main_URL + "/login.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnSaveResult";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("cmd", "11");
        param.form.AddField("username", outside_ID);
        param.form.AddField("password", outside_Password);
        param.form.AddField("type", outside_loginstyle.ToString());
        param.form.AddField("loginkey", netSecretCode);
        param.form.AddField("deviceid", User_Identifier);
		
        String userdata = m_online_datas.ToJSONString();
        param.form.AddField("userdata", userdata);

        String hash = TinyMD5.Md5Sum(outside_ID + outside_Password + outside_loginstyle.ToString() + User_Identifier + userdata + netSecretCode);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        SavingProcess = MiguProcess._Processing;
    }

    /// <summary>
    /// 데이터 저장 결과 콜백 함수
    /// </summary>
    public void ReturnSaveResult(WebSlaveParam param)
    {
        SavingProcess = MiguProcess._Failed;
        // 데이터 저장 과정 중 네트워크 이상등의 문제 발생하면 실패
        if (param.return_error != null)
        {
            SetError(MiguProcessError._NoInternet, "인터넷 연결 않되어 있는 상태");
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        int saveresult = datas.GetValue(datas["stat"]);

        Debug.Log("MiguSocial : Save Result : " + saveresult + ":" + param.return_value);

        switch (saveresult)
        {
            case 200:   //Save Success
                SavingProcess = MiguProcess._Success;
                break;
            default:   // Save Failed
                SetError(MiguProcessError._SaveFailed, datas.GetString(datas["message"]));

                Debug.Log(datas["message"]);
                break;
        }
    }


    /// <summary>
    /// 로컬 데이터 셋팅하는 함수 - 뚱팡에서 온라인이 아니거나, 싱글 플레이 선택시 해당 함수 실행
    /// </summary>
    public void UsingLocalDatas()
    {
		string path = Application.persistentDataPath + "/" + "localdata.bin";

        if (!File.Exists(path))
            return;

        byte[] fromfile = File.ReadAllBytes(path);

        String datas = m_local_datas.StringDecrypter(fromfile, secretCode, PlayerPrefs.GetInt("MiguCounter"));

        JSONObject userdata = new JSONObject(datas);

        m_local_datas.FillFromJSONString(userdata);
    }

    /// <summary>
    /// 로컬 데이터 저장하는 함수 - 뚱팡에서 오프라인/싱글 플레이 등의 경우, 필요할때마다 호출 가능
    /// </summary>
    public void SaveLocalDatas()
    {
        string path = Application.persistentDataPath + "/" + "localdata.bin";

        String datas = m_local_datas.ToJSONString();

        UnityEngine.Random.seed = DateTime.Now.Millisecond;

        PlayerPrefs.SetInt("MiguCounter", UnityEngine.Random.Range(0, secretCode.Length));

        byte[] encrypt = m_local_datas.StringEncrypter(datas, secretCode, PlayerPrefs.GetInt("MiguCounter"));

        File.WriteAllBytes(path, encrypt);
    }

    /// <summary>
    /// 서버 시간 요청 ( 모든 값은 DateTime 값 기준 )
    /// </summary>
    public void GetServerTime()
    {
        // 인터넷 연결 않되는 상태라면, 바로 실패 처리
        switch (Application.internetReachability)
        {
            case NetworkReachability.NotReachable:
                ServerTimeProcess = MiguProcess._Failed;
                return;
        }

        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = Main_URL + "/checking.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ReturnServerTime";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 
        param.form = new WWWForm();

        param.form.AddField("cmd", "333");

        // CallWeb 함수 호출
        WebSlave webman = WebSlave.instance;
        webman.SendMessage("CallWeb", param);

        ServerTimeProcess = MiguProcess._Processing;
    }


    /// <summary>
    /// 서버 시간 결과 받음
    /// </summary>
    /// <param name="param"></param>
    public void ReturnServerTime(WebSlaveParam param)
    {
        if (param.return_error != null)
        {
            SetError(MiguProcessError._NoInternet, "인터넷 연결 않되어 있는 상태");
            ServerTimeProcess = MiguProcess._Failed;
            return;
        }

        JSONObject datas = new JSONObject(param.return_value);

        if (datas.HasField("servertime"))
        {
            ServerTime = DateTime.Parse(datas.GetString(datas["servertime"]));

            Debug.Log("Server time : " + ServerTime + " : " + DateTime.Now + " : " + param.return_value);

            ServerTimeProcess = MiguProcess._Success;
        }
    }


    /// <summary>
    /// 서버 쿼리가 빠르면 DDOS로 인식되므로, 체킹 후 일정시간 후 로그인 시도하기
    /// </summary>
    /// <returns></returns>
    IEnumerator WaitingAndTryToLogin()
    {
        yield return new WaitForSeconds(2);

        LoginProcess = MiguProcess._Nothing;

        TryToLogin(Trying_ID, Trying_Password, Trying_loginstyle);
    }
}
