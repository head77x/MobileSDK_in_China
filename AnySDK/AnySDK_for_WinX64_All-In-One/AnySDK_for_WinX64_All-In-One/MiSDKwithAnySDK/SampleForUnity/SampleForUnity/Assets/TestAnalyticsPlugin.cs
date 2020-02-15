using UnityEngine;
using System.Collections.Generic;
using System.Collections;
using System;

namespace anysdk {
	public class TestAnalyticsPlugin : MonoBehaviour {
	
		
		private GUIStyle fontStyle;
		
		void Awake()
		{
			fontStyle = new GUIStyle();
			fontStyle.alignment = TextAnchor.MiddleCenter;
	        fontStyle.fontSize = 40;   
		}
		
		void OnDestroy() {
			
		}
		
		void OnGUI()
		{	
			
			if(GUI.Button(new Rect(100,100,Screen.width - 200,80),"startSession" ))
			{
				startSession();
			}
			
			if(GUI.Button(new Rect(100,200,Screen.width - 200,80),"stopSession" ))
			{
				stopSession();
			}
			
			if(GUI.Button(new Rect(100,300,Screen.width - 200,80),"setSessionContinueMillis" ))
			{
				setSessionContinueMillis( );
			}
			
			if(GUI.Button(new Rect(100,400,Screen.width - 200,80),"logError" ))
			{
				AnySDKAnalytics.logError( "100", "test test test" );
			}
			
			if(GUI.Button(new Rect(100,500,Screen.width - 200,80),"logEvent" ))
			{
				logEvent();
			}
			
			if(GUI.Button(new Rect(100,600,Screen.width - 200,80),"logTimedEventBegin" ))
			{
				logTimedEventBegin();
			}
			
			if(GUI.Button(new Rect(100,700,Screen.width - 200,80),"logTimedEventEnd" ))
			{
				logTimedEventEnd();
			}
			
			if(GUI.Button(new Rect(100,800,Screen.width - 200,80),"setCaptureUncaughtException" ))
			{
				setCaptureUncaughtException( );
			}
		}
		
			// Update is called once per frame
		void Update() {
			if(Input.GetKeyDown(KeyCode.Escape)||Input.GetKeyDown(KeyCode.Home))  
		    {  
		        Application.Quit();  
		    } 
		}
		
		/**
		 * 用于跟踪用户使用中的打开应用和页面跳转的数据
		 */
		void startSession() {
			AnySDKAnalytics.startSession();
		}
		
		/**
		 * 用于跟踪用户离开页面和退出应用的数据
		 */
		void stopSession() {
			AnySDKAnalytics.stopSession();
		}
		
		/**
		 * 实现在应用程序中埋点来统计用户的点击行为
		 */
		void logEvent() {
			Dictionary<string,string> dic = new Dictionary<string,string>();
			dic["100"] = "Page1 open";
			dic["角色名称"]="yonghu";
			dic["登陆时间"]="2014";
			AnySDKAnalytics.logEvent( "10", dic );
		}
		
		/**
		 * 当用户两次使用之间过长时，将被认为是两个的独立的session(启动)
		 */
		void setSessionContinueMillis() {
			AnySDKAnalytics.setSessionContinueMillis( 2000L );
		}
		
		/**
		 * 收集应用错误日志
		 */
		void setCaptureUncaughtException() {
			AnySDKAnalytics.setCaptureUncaughtException( true );
		}
		
		/**
		 * 记录事件的开始时间
		 */
		void logTimedEventBegin() {
			AnySDKAnalytics.logTimedEventBegin( "10" );
		}
		
		/**
		 * 记录事件的结束时间
		 */
		void logTimedEventEnd() {
			AnySDKAnalytics.logTimedEventEnd( "10" );
		}
	}
}
