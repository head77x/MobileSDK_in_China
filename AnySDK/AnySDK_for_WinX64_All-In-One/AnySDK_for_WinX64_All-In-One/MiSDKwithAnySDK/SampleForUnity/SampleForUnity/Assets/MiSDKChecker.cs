using UnityEngine;
using System.Collections;

public class MiSDKChecker : MonoBehaviour 
{
    public void MiSDKCheck()
    {
        //Todo
        WebSlaveParam param = new WebSlaveParam();

        // 접속할 URL
        param.url = "http://op.miguyouxi.com/index.php";

        // 리턴 받을 객체
        param.return_object = gameObject;

        // 리턴 받을 함수
        param.return_function = "ResultConfirmFromMiSDK";

        // POST 형식인지 GET 형식인지에 따라 처리 - 이건 POST 셈플
        param.form = new WWWForm();

        param.form.AddField("appid", "bbd6c0b1ee12e0bae7e23cd4498dd6");

        string key = MD5.Md5Sum("a150c1cfe145e4324c912b535e681d" + "com.miguyouxi");
        param.form.AddField("key", key);
        param.form.AddField("action", "queryAnyOrder");
        param.form.AddField("order_id", anysdk.AnySDKIAP.getOrderId());

        // CallWeb 함수 호출
        WebSlave.instance.SendMessage("CallWeb", param);

        Debug.Log("Brandon : Start cha xun : " + param.url);

    }

    public void ResultConfirmFromMiSDK(WebSlaveParam result)
    {
        Debug.Log("Pay success : " + result.return_value);
    }

}
