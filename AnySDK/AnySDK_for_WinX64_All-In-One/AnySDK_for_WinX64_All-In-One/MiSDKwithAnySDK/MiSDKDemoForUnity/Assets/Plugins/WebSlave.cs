using UnityEngine;
using System;
using System.IO;
using System.Collections;

/// <summary>
/// �Ϲ����� �� ȣ��� �����
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
/// �� ��� ���� ó���� - �ݵ�� ���� ������Ʈ�� �Ҵ��ؼ� ���
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
    /// �� ȣ���� ���ؼ� ȣ���ϴ� �Լ�
    /// </summary>
    /// <param name="param">�� ȣ���� ���� ���� ���� ����ü</param>
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
    /// ���� �о�鿩�� �ϴ� ���� üũ�ؼ� ���� �о���̱� ó��
    /// </summary>
    void Update()
    {
        // �� ȣ�� ���� ó��
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

        if ( param.form != null )     // POST ���� ��
        {
            www = new WWW( param.url, param.form );
            yield return www;
        }
        else    // GET ���� �Ϲ� ��
        {
            www = new WWW( param.url );
            yield return www;
        }

        GetReturned = false;

        param.return_error = www.error;

        if ( www.error != null )    // ������ null ����
        {
            param.return_value = null;
            param.return_texture = null;
            param.return_object.SendMessage( param.return_function, param, SendMessageOptions.DontRequireReceiver );
        }
        else // �������� ���Ͻ� ����ü�� ���õ� ���� ���� ��, ������ ��ü���� ���� ������
        {
            param.return_value = www.text;
            param.return_texture = www.texture;
            param.return_object.SendMessage(param.return_function, param, SendMessageOptions.DontRequireReceiver);
        }
    }

/******************************************** WebSlaveParam �̿� ����
    void TryToGetPostResult(int mapnum)
    {
        WebSlaveParam param = new WebSlaveParam();

        // ������ URL
        param.url = MainURLSetter.GroupURL + ConnectURL;

        // ���� ���� ��ü
        param.return_object = gameObject;
 
        // ���� ���� �Լ�
        param.return_function = "MapServerInfo";

        // POST �������� GET ���������� ���� ó�� - �̰� POST ����
        param.form = new WWWForm();

        param.form.AddField("CMD", 16);
        param.form.AddField("MIX", mapnum);

        
        String hash = MD5.Md5Sum(mapnum.ToString() + secretCode);
        param.form.AddField("check", hash);

        // CallWeb �Լ� ȣ��
        webman.SendMessage("CallWeb", param);

        MapServerResult = 0;
        ResultString = "";
    }
*/


}
