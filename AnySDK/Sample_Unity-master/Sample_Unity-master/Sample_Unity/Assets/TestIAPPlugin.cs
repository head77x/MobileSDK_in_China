using UnityEngine;
using System.Runtime.InteropServices;
using System;
using System.Collections;
using System.Collections.Generic;
using anysdk;


namespace anysdk {
	public class TestIAPPlugin : MonoBehaviour {

		private IntPtr  listenerIAP ;
		void Awake()
		{  
		}
		void Start()
		{
			AnySDKIAP.getInstance () .setListener (this,"IAPExternalCall");
		}
		void IAPExternalCall(string msg)
		{
			Debug.Log("IAPExternalCall("+ msg+")");
			Dictionary<string,string> dic = AnySDKUtil.stringToDictionary (msg);
			int code = Convert.ToInt32(dic["code"]);
			string result = dic["msg"];

			switch(code)
			{
			case (int)PayResultCode.kPaySuccess://支付成功回调
				break;
			case (int)PayResultCode.kPayFail://支付失败回调
				break;
			case (int)PayResultCode.kPayCancel://支付取消回调
				break;
			case (int)PayResultCode.kPayNetworkError://支付超时回调
				break;
			case (int)PayResultCode.kPayProductionInforIncomplete://支付信息不完整
				break;
				/**
		 * 新增加:正在进行中回调
		 * 支付过程中若SDK没有回调结果，就认为支付正在进行中
		 * 游戏开发商可让玩家去判断是否需要等待，若不等待则进行下一次的支付
		 */
			case (int)PayResultCode.kPayNowPaying:
				break;
			default:
				break;
			}
		}
		void OnDestroy() {
			
		}
		
		void OnGUI()
		{	
			GUI.color = Color.white;
			
			GUI.skin.button.fontSize = 30;
			if(GUI.Button(new Rect(5, 5, Screen.width - 10, 70),"payForProduct" ))
			{
				payForProduct();
			}
			
			if(GUI.Button(new Rect(5, 80, Screen.width - 10, 70),"getOrderId" ))
			{
				getOrderId();
			}
			if(GUI.Button(new Rect(5, 155, Screen.width - 10, 70),"return" ))
			{
				Destroy (GetComponent ("TestIAPPlugin" ));
				this.gameObject.AddComponent("Test");
			}
			
		
		}
		
			// Update is called once per frame
		void Update() {
			if(Input.GetKeyDown(KeyCode.Escape)||Input.GetKeyDown(KeyCode.Home))  
		    {  
		        Application.Quit(); 
				AnySDK.getInstance ().release ();
		    } 
		}
	
		/**
		 * 获取订单号
		 */
		void getOrderId() {
			string orderId = AnySDKIAP.getInstance().getOrderId();
			Debug.Log( "AnySDK@ getOrder id " + orderId ); 
		}
		
		/**
		 * 支付
		 */
		void payForProduct() {
			Dictionary<string, string> products = new Dictionary<string, string>();
			products["Product_Price"] = "1";
			products["Product_Id"] = "2";
			products["Product_Name"] = "豌豆荚测试a1";
			products["Server_Id"] = "13";
			products["Product_Count"] = "1";
			products["Role_Id"] = "1";
			products["Role_Name"] = "1";
			products["Role_Grade"] = "1";
			products["Role_Balance"] = "1";
			AnySDKIAP.getInstance().payForProduct( products );
		}
		
	}
}
