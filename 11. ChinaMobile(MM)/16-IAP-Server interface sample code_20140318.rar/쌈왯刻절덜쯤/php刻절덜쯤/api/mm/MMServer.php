<?php
/**
 * M-Market计费平台
 * 外部接口Demo
 * 接收MMarket平台服务器通知接口
 * 
 */

 /**
  *  加载 MMarket.class.php 
  */
require_once dirname(__FILE__).'/MMarket.class.php';

/**
 *  创建 class MMarket
 */
$MMarket = new MMarket();


/**
 *  接收POST数据
 */

$PostData = file_get_contents("php://input");

/**
 *  开发者服务器向MMarket 平台返回的状态说明
 *  $hRet:
	  		0		成功
			1		其他错误,未知错误
			2		网络异常（该错误指内部子系统之间调用出错）
			9010	繁忙
			9015	拒绝消息，服务器无法完成请求的服务
			9018	外部网元的网络错误
			4000	无效的MsgType 
			4003	无效的APPID
			4004	无效的PayCode
			4005	无效的MD5Sign
  */

if($PostData){
	$ArrayData = $MMarket->XmlToData($PostData);//xml数据转换为数组
	if(is_array($ArrayData)){
		
		/**
		 * 根据订单通知数据，根据应用,获取应用AppKey
		 * 
		 */		
		$AppKey ='CBE3C3C0454416C1' ; //to do

		/**
		 * 验证签名信息
		 */
		$flag=$MMarket->ValidSign($ArrayData,$AppKey);        
        if($flag==true){
		   
			//开发者进行订单数据处理,并返回处理结果给MMarket 平台
			//to do 
			$hRet = 0; //成功
			echo $MMarket->SyncAppOrderResp($hRet);//向M-Market平台返回结果
			exit;

        }else{
			$hRet = 4005; //无效的MD5Sign
			echo $MMarket->SyncAppOrderResp($hRet);//向M-Market平台返回结果
			exit;
		}		
	}
}
?>