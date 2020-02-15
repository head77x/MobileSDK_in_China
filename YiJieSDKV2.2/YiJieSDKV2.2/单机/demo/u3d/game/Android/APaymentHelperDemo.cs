using UnityEngine;
using System.Collections;
using System.Text;
using System.Threading;
using System.Runtime.InteropServices;
using System;

public class APaymentHelperDemo : MonoBehaviour {
	Rect windowRect = new Rect(20, 20, 400, 600);
	string str = "show result";
	[DllImport ("sfunityoffline")]
    private static extern void onInit(IntPtr context); 
	[DllImport ("sfunityoffline")]
	private static extern void onInit_listener(IntPtr context,string gameObject, string listener); 
	[DllImport ("sfunityoffline")]
    private static extern void onExit(IntPtr context); 
	[DllImport ("sfunityoffline")]
	private static extern void onExitWithUI(IntPtr context, string gameObject, string runtimeScriptMethod);
	[DllImport ("sfunityoffline")]
	private static extern void pay (IntPtr context, string id, string gameObject, string runtimeScriptMethod);
	[DllImport ("sfunityoffline")]
	private static extern int isPaid (IntPtr context, string id);
	[DllImport ("sfunityoffline")]
	private static extern void viewMoreGames(IntPtr context); 
	[DllImport ("sfunityoffline")]
	private static extern int isMusicEnabled(IntPtr context);
	[DllImport ("sfunityoffline")]
	private static extern void onPause(IntPtr context);
	[DllImport ("sfunityoffline")]
	private static extern void onResume(IntPtr context);
	[DllImport ("sfunityoffline")]
	private static extern void setPaid(IntPtr context, string id);
	[DllImport ("sfunityoffline")]
	private static extern void extend(IntPtr context, string data,string gameObject, string listener);
	
    GUI.WindowFunction windowFunction;
    void OnGUI (){
        windowRect = GUI.Window(0, windowRect, DoMyWindow, str);
    }
	
	//bool startcheck;
	void DoMyWindow(int windowID) {
        if (GUI.Button(new Rect(10,20,300,60), "pay 0 test")){
          using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
				using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
            		pay(curActivity.GetRawObject(), "0", "Main Camera", "PayResult");
				}
			}
        }
		
		if (GUI.Button(new Rect(10,100,300,60), "pay 1 block")) {
			using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
				using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
					Debug.Log("PayResult=1");
            		pay(curActivity.GetRawObject(), "1", "Main Camera", "PayResult");
					Debug.Log("PayResult=2");
				}
			}
        }
				
		if (GUI.Button(new Rect(10,180,300,60), "viewMoreGames test")) {
			using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
				using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
            		viewMoreGames(curActivity.GetRawObject());
				}
			}
			}
			
		
			if (GUI.Button(new Rect(10,260,300,60), "onExitWithUI test")) {
				using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
					using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity"))	 {
					onExitWithUI(curActivity.GetRawObject(), "Main Camera", "ExitResult");
					}
				}
			}
		
			
		if (GUI.Button(new Rect(10,340,300,60), "isPaid test")) {
				using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
					using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
	            		int ret = isPaid(curActivity.GetRawObject(), "0");
						if (ret == 1) {
							str = "isPaid =  TRUE";
						} else {
							str = "isPaid =  FALSE";
						}
					}
				}
			}
		
		if (GUI.Button(new Rect(10,420,300,60), "is isMusicEnabled")) {
				using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
					using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
	            		int ret = isMusicEnabled(curActivity.GetRawObject());
						if (ret == 1) {
							str = "isMusicEnabled =  TRUE";
						} else {
							str = "isMusicEnabled =  FALSE";
						}

					}
				}
			}
		if (GUI.Button(new Rect(10,500,300,60), "extend")) {
			using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
				using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
					
					SFJSONObject temp =new SFJSONObject();
					temp.put("callbackcount","2");
					temp.put("callback1","callback1");
					temp.put("callback2","callback2");
					string ss = temp.toInlineString();
					SFJSONObject temp1 =new SFJSONObject();
					temp1.put("callbackmap",ss);
					temp1.put("extendcallback","extendCallback");
					string ll = temp1.toString();
					Debug.Log ("------------extend");
					extend (curActivity.GetRawObject(), "data" , "Main Camera", ll);
				}
			}
		}
		
            //long userId = APaymentHelper.Instance.getUserId();
			//str = userId.ToString("D");
        
    } 

	// Use this for initialization
	void Start () {
		windowFunction = DoMyWindow;
	}
	
	// Update is called once per frame
	void Update () {

	}

	void extendCallback(string result){
		str = " extend"+ result;
	}
	void callback1(string result){
		Debug.Log ("------------callback1=" + result);
		SFJSONObject sfjson = new SFJSONObject (result);
		string tag = (string)sfjson.get ("tag");
		string value = (string)sfjson.get ("value");
		Debug.Log ("tag:" + tag + " value:" + value);
		if (tag.Equals ("success")) {
			str ="callback1 success";
		} else {
			str ="callback1 fail";
		}
	}
	void callback2(string result){
		Debug.Log ("------------callback2=" + result);
		SFJSONObject sfjson = new SFJSONObject (result);
		string tag = (string)sfjson.get ("tag");
		string value = (string)sfjson.get ("value");
		Debug.Log ("tag:" + tag + " value:" + value);
		if (tag.Equals ("success")) {
			str ="callback2 success";
		} else {
			str ="callback2 fail";
		}
	}

	 void initResult(string result)
	{
		Debug.Log ("------------initResult=" + result);
		SFJSONObject sfjson = new SFJSONObject (result);
		string tag = (string)sfjson.get ("tag");
		string value = (string)sfjson.get ("value");
		Debug.Log ("tag:" + tag + " value:" + value);
		if (tag.Equals ("success")) {
			str ="initResult success";
		} else {
			str ="initResult fail";
		}
	}
	void ExitResult(string result){
		Debug.Log ("ExitResult:" + tag + " result:" + result);

		#if UNITY_EDITOR
		Debug.Log ("ExitResult ####### UNITY_EDITOR" );
		UnityEditor.EditorApplication.isPlaying = false ;
		#else
		Debug.Log ("ExitResult ####### Application.Quit " );
		Application.Quit ();
		#endif
	}
	void PayResult(string result)
	{
		Debug.Log("------------PayResult="+result);
		SFJSONObject sfjson = new SFJSONObject(result);
		string type = (string)sfjson.get("result");
		string customParams = (string)sfjson.get("customParams");
		
		if (APaymentHelper.PayResult.SUCCESS == type) {
			str = "pay result = pay success "+customParams;
		} else if (APaymentHelper.PayResult.FAILURE == type) {
			str = "pay result = pay failure"+customParams;
		}  else if (APaymentHelper.PayResult.CANCELED == type) {
			str = "pay result = pay cancel"+customParams; 
		}
	}
	
	void Awake ()
	{
		if (Application.platform == RuntimePlatform.Android){
				using (AndroidJavaClass unityPlayer = new AndroidJavaClass ("com.unity3d.player.UnityPlayer")) {
				using (AndroidJavaObject curActivity = unityPlayer.GetStatic<AndroidJavaObject>("currentActivity")) {
					onInit (curActivity.GetRawObject());
				    //str = "init";
					//onInit_listener(curActivity.GetRawObject(),"Main Camera","initResult");	
				}
			}
		}
	}
}
