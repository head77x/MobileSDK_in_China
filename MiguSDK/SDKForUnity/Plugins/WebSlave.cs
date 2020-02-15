using UnityEngine;
using System;
using System.IO;
using System.Collections;

/// <summary>
/// 일반적인 웹 호출시 사용함
/// </summary>
public class WebSlaveParam
{
    public String url;
    public WWWForm form;
    public int return_int;
    public String return_value;
    public String return_error;
    public String return_function;
    public GameObject return_object;
    public Texture2D return_texture;

    public String request_string;
}

/// <summary>
/// 웹 통신 관련 처리자 - 반드시 게임 오브젝트에 할당해서 사용
/// </summary>
public class WebSlave : MonoBehaviour 
{
    static WebSlave m_instance;
    public static WebSlave instance
    {
        get
        {
            return m_instance;
        }
    }


    bool GetReturned = false;
    Queue WebCallStack;

    bool m_Dirty = true;



    /// <summary>
    /// 웹 호출을 위해서 호출하는 함수
    /// </summary>
    /// <param name="param">웹 호출을 위한 정보 저장 구조체</param>
    public void CallWeb(WebSlaveParam param)
    {
        if (m_Dirty)
            Start();

        WebCallStack.Enqueue(param);
    }


    void Start()
    {
        if ( !m_Dirty )
            return;

        m_Dirty = false;

	    DontDestroyOnLoad(this);
        WebCallStack = new Queue();
        GetReturned = false;

        m_instance = this;
    }

    /// <summary>
    /// 번들 읽어들여야 하는 스택 체크해서 실제 읽어들이기 처리
    /// </summary>
    void Update()
    {
        // 웹 호출 관련 처리
        if (!GetReturned && WebCallStack.Count > 0)
        {
            WebSlaveParam newparam = (WebSlaveParam)WebCallStack.Dequeue();
            GetReturned = true;
            StartCoroutine(RealCall(newparam));
        }
    }

    IEnumerator RealCall( WebSlaveParam param )
    {
        WWW www;

        if ( param.form != null )     // POST 형태 콜
        {
            www = new WWW( param.url, param.form );
            yield return www;
        }
        else    // GET 형태 일반 콜
        {
            www = new WWW( param.url );
            yield return www;
        }

        GetReturned = false;

        param.return_error = www.error;

        if ( www.error != null )    // 에러시 null 리턴
        {
            param.return_value = null;
            param.return_texture = null;
            param.return_object.SendMessage( param.return_function, param, SendMessageOptions.DontRequireReceiver );
        }
        else // 정상적인 리턴시 구조체에 관련된 정보 저장 후, 원래의 객체에게 리턴 전달함
        {
            param.return_value = www.text;
            param.return_texture = www.texture;
            param.return_object.SendMessage(param.return_function, param, SendMessageOptions.DontRequireReceiver);
        }
    }

/******************************************** WebSlaveParam 이용 셈플
    void TryToGetPostResult(int mapnum)
    {
        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = MainURLSetter.GroupURL + ConnectURL;

        // 리턴 받을 객체
        param.return_object = gameObject;
 
        // 리턴 받을 함수
        param.return_function = "MapServerInfo";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("CMD", 16);
        param.form.AddField("MIX", mapnum);

        
        String hash = MD5.Md5Sum(mapnum.ToString() + secretCode);
        param.form.AddField("check", hash);

        // CallWeb 함수 호출
        webman.SendMessage("CallWeb", param);

        MapServerResult = 0;
        ResultString = "";
    }
*/


}
