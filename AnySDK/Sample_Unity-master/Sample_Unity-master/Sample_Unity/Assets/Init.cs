using UnityEngine;
using System.Collections;
using System.Runtime.InteropServices;
using System;
using System.Text;
using anysdk;

public class Init
{
	private static Init _instance;
	private string appKey = "AEE563E8-C007-DC32-5535-0518D941D6C2";
	private string appSecret = "b9fada2f86e3f73948f52d9673366610";
	private string privateKey = "0EE38DB7E37D13EBC50E329483167860";
	
	private string oauthLoginServer = "http://oauth.anysdk.com/api/OauthLoginDemo/Login.php";
	
	public static Init getInstance() {
		if( null == _instance ) {
			_instance = new Init();
		}
		return _instance;
	}
	
	Init()
	{
		AnySDK.getInstance ().init (appKey, appSecret, privateKey, oauthLoginServer);

		AnySDK.getInstance ().loadALLPlugin ();


	}
	
	
}
