/*
 * PayLayout.cpp
 *
 *  Created on: 2014-11-24
 *      Author: wanshaofeng
 */

#include "PayLayer.h"
/*const char* CP_PAY_CHECK_URL =
		"http://testomsdk.xiaobalei.com:5555/cp/user/paylog/get?orderId=";*/

/*CP服务器地址，支付结果同步地址
 * 如果客户端不设置，将以在易接后台创建游戏时设置的数据同步地址进行同步
 * */
const char* CP_PAY_SYNC_URL =
		"http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync";

TextField* textPrice = NULL;
TextField* textName = NULL;
TextField* textitemCode = NULL;
TextField* textremain = NULL;
Text* textPayInfo = NULL;

//
class SFNativeOnlinePayResultCallbackImpl: public SFNativeOnlinePayResultCallback {

	virtual void onFailed(const char* remain) {
		stringstream ss;
		ss << "支付失败:";
		ss << remain << ';';
		textPayInfo->setString(ss.str());
	}
	virtual void onSuccess(const char* remain) {

		stringstream ss;
		ss << "支付成功:";
		ss << remain << ';';
		textPayInfo->setString(ss.str());
	}
	virtual void onOderNo(const char* orderNo) {
		stringstream ss;
		ss << "订单号:";
		ss << orderNo << ';';
		textPayInfo->setString(ss.str());
	}

};
//扩展接口回调
//class SFNativeOnlineExtendCallbackImpl: public SFNativeOnlineExtendCallback {
//
//	virtual void onResponse(int index ,const char* r, const char* remain){
//		if(index==1){
//			stringstream ss;
//			ss << "扩展回调1:";
//			ss << r <<','<<remain<< ';';
//			textPayInfo->setString(ss.str());
//		}
//		if(index==2)
//		{
//			stringstream ss;
//			ss << "扩展回调2:";
//			ss << r <<','<<remain<< ';';
//			textPayInfo->setString(ss.str());
//		}
//
//	}
//
//};

Scene* PayLayer::createScene() {
	// 'scene' is an autorelease object
	auto scene = Scene::create();

	// 'layer' is an autorelease object
	auto layer = PayLayer::create();

	// add layer as a child to scene
	scene->addChild(layer);

	return scene;
}

SFNativeOnlinePayResultCallbackImpl payCallback =
		SFNativeOnlinePayResultCallbackImpl();

//SFNativeOnlineExtendCallbackImpl extendCallback =
//		SFNativeOnlineExtendCallbackImpl();

bool PayLayer::init() {
	//////////////////////////////
	// 1. super init first
	if (!Layer::init()) {
		return false;
	}

//	Size visibleSize = Director::getInstance()->getVisibleSize();
//	Vec2 origin = Director::getInstance()->getVisibleOrigin();

//	auto director = Director::getInstance();
//	auto glview = director->getOpenGLView();
//	glview->setFrameSize(visibleSize.width, visibleSize.height);
//	glview->setDesignResolutionSize(480, 320, ResolutionPolicy::EXACT_FIT);
	/////////////////////////////
	// 2. add a menu item with "X" image, which is clicked to quit the program
	//    you may modify it.

	// add a "close" icon to exit the progress. it's an autorelease object
	m_pUILayer = Layer::create();
	auto myLayout = cocostudio::GUIReader::getInstance()->widgetFromJsonFile(
			"mainUI_1.json");
	m_pUILayer->addChild(myLayout);
	addChild(m_pUILayer);

	Button* btnPay100 =
			dynamic_cast<Button*>(myLayout->getChildByName("pay100"));
	Button* btnRecharge100 =
			dynamic_cast<Button*>(myLayout->getChildByName("recharge100"));
	Button* btnPay = dynamic_cast<Button*>(myLayout->getChildByName("pay"));
	Button* btnRecharge = dynamic_cast<Button*>(myLayout->getChildByName(
			"recharge"));
	Button* btnRecharge_extend = dynamic_cast<Button*>(myLayout->getChildByName(
			"recharge_extend"));
	Button* btnExit = dynamic_cast<Button*>(myLayout->getChildByName("exit"));
	Button* btnLogout =
			dynamic_cast<Button*>(myLayout->getChildByName("logout"));
	textPrice = dynamic_cast<TextField*>(myLayout->getChildByName("price"));
	textName = dynamic_cast<TextField*>(myLayout->getChildByName("name"));
	textitemCode = dynamic_cast<TextField*>(myLayout->getChildByName("itemcode"));
	textremain = dynamic_cast<TextField*>(myLayout->getChildByName("remain"));
	textPayInfo = dynamic_cast<Text*>(myLayout->getChildByName("payInfo"));
//	loginCallback = new SFNativeOnlineLoginCallbackImpl(this);

	btnPay100->addTouchEventListener(this,
			toucheventselector(PayLayer::menuPay100Callback));
//	btnExtend->addTouchEventListener(this,
//			toucheventselector(PayLayer::menuExtendCallback));
	btnRecharge100->addTouchEventListener(this,
			toucheventselector(PayLayer::menuRecharge100Callback));
	btnPay->addTouchEventListener(this,
			toucheventselector(PayLayer::menuPayCallback));
	btnRecharge->addTouchEventListener(this,
			toucheventselector(PayLayer::menuRechargeCallback));
	btnRecharge_extend->addTouchEventListener(this,
				toucheventselector(PayLayer::menuRechargeExtendCallback));
	btnExit->addTouchEventListener(this,
			toucheventselector(PayLayer::menuExitCallback));
	btnLogout->addTouchEventListener(this,
			toucheventselector(PayLayer::menuLogoutCallback));

	auto listener = EventListenerKeyboard::create();
	listener->onKeyReleased = CC_CALLBACK_2(PayLayer::onKeyReleased, this);
	this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(listener, this);
	SFGameNativeInterface::setExitCallback(this);

	return true;
}

void PayLayer::onKeyReleased(EventKeyboard::KeyCode keycode,
		cocos2d::Event *event) {
	log("onKeyReleased key code : %d", keycode);
	if (keycode == EventKeyboard::KeyCode::KEY_ESCAPE) //返回
	{
		/*设置退出回调*/
		SFGameNativeInterface::setExitCallback(this);
		/*调用SDK退出方法*/
		SFGameNativeInterface::exit();
	}
	else if (keycode == EventKeyboard::KeyCode::KEY_MENU)
	{

	}
}

void PayLayer::menuPay100Callback(cocos2d::Ref* pSender, TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		SFGameNativeInterface::setPayResultCallback(&payCallback);
		SFGameNativeInterface::pay(100, "100金币", 1, "购买金币", CP_PAY_SYNC_URL);
	}
}
void PayLayer::menuRecharge100Callback(cocos2d::Ref* pSender, TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		SFGameNativeInterface::setPayResultCallback(&payCallback);
		SFGameNativeInterface::charge("100金币",100, 1, "购买金币", CP_PAY_SYNC_URL);
	}
}
void PayLayer::menuPayCallback(cocos2d::Ref* pSender, TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		std::string price = textPrice->getStringValue();
		std::string name = textName->getStringValue();

		if (isNumber(price)) {
			int pri = atoi(price.c_str());
			/*设置支付回调*/
			if (pri <= 0) {
				textPayInfo->setText("金额需大于0");
				return;
			}
			SFGameNativeInterface::setPayResultCallback(&payCallback);
			/* pay定额计费接口
			 * static void pay(int unitPrice, const char*  unitName,
			 * 		int count, const char*  callBackInfo, const char* callBackUrl);
			 *
			 *  @param unitPrice     当前商品需要支付金额，单位为人民币分
			 *  @param itemName      虚拟货币名称
			 *  @param count         用户选择购买道具界面的默认道具数量。（总价 count*unitPrice）
			 *  @param callBackInfo  由游戏开发者定义传入的字符串，会与支付结果一同发送给游戏服务器，游戏服务器可通过该字段判断交易的详细内容（金额角色等）
			 *  @param callBackUrl   将支付结果通知给游戏服务器时的通知地址url，交易结束后，系统会向该url发送http请求，通知交易的结果金额callbackInfo等信息
			*/
			SFGameNativeInterface::pay(pri, name.c_str(), 1, "购买金币",
					CP_PAY_SYNC_URL);
		} else {
			textPayInfo->setText("请输入金额！");
			textPrice->setText("");
		}
	}
}
void PayLayer::menuRechargeCallback(cocos2d::Ref* pSender,
		TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		std::string price = textPrice->getStringValue();
		std::string name = textName->getStringValue();
		if (isNumber(price)) {
			int pri = atoi(price.c_str());
			if (pri <= 0) {
				textPayInfo->setText("金额需大于0");
				return;
			}
			/*设置支付回调*/
			SFGameNativeInterface::setPayResultCallback(&payCallback);
			/* charge非定额计费接口
			 * public static void charge(String itemName, int unitPrice,
			 *          int count,String callBackInfo, String callBackUrl,SFOnlinePayResultListener payResultListener)
			 *
			 *  @param itemName      虚拟货币名称
			 *  @param unitPrice     游戏道具单位价格，单位为人民币分
			 *  @param count         用户选择购买道具界面的默认道具数量。（总价 count*unitPrice）
			 *  @param callBackInfo  由游戏开发者定义传入的字符串，会与支付结果一同发送给游戏服务器，游戏服务器可通过该字段判断交易的详细内容（金额角色等）
			 *  @param callBackUrl   将支付结果通知给游戏服务器时的通知地址url，交易结束后，系统会向该url发送http请求，通知交易的结果金额callbackInfo等信息
			*/
			SFGameNativeInterface::charge(name.c_str(), pri, 1, "购买金币",
					CP_PAY_SYNC_URL);
		} else {
			textPayInfo->setText("请输入金额！");
			textPrice->setText("");
		}
	}
}
void PayLayer::menuRechargeExtendCallback(cocos2d::Ref* pSender,
		TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		std::string price = textPrice->getStringValue();
		std::string name = textName->getStringValue();
		std::string itemCode = textitemCode->getStringValue();
	    std::string remain = textremain->getStringValue();
		if (!itemCode.empty()) {
			int pri = atoi(price.c_str());
//			if (pri <= 0) {
//				textPayInfo->setText("金额需大于0");
//				return;
//			}
//			if(itemCode.empty()){
//				textPayInfo->setText("请输入 商品编码！");
//				return;
//			}
			/*设置支付回调*/
			SFGameNativeInterface::setPayResultCallback(&payCallback);
			/* charge非定额计费接口
			 * 	static void payExtend(int unitPrice, const char*  unitName,
			 *const char*  itemCode, const char*  remain,int count, const char*  callBackInfo, const char* callBackUrl);
			  * @param unitPrice        定额支付总金额，单位为人民币分
			  * @param unitName     虚拟货币名称
			  * @param itemCode     商品编码
			  * @param remain      自定义参数
			  * @param count       购买虚拟货币数量
			  * @param callBackInfo由游戏开发者定义传入的字符串，回与支付结果一同发送给游戏服务器，游戏服务器可通过该字段判断交易的详细内容（金额 角色等）
			  * @param callBackUrl  该比支付结果通知给游戏服务器时的通知地址url，交易结束后，系统会向该url发送http请求，通知交易的结果金额callbackInfo等信息
			*/

			SFGameNativeInterface::payExtend(pri, name.c_str(), itemCode.c_str(),remain.c_str(), 1, "购买金币",CP_PAY_SYNC_URL);
		} else {
			textPayInfo->setText("请输入 商品编码！");
			textPrice->setText("");
		}
	}
}
void PayLayer::menuExitCallback(cocos2d::Ref* pSender, TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		/*设置退出回调*/
		SFGameNativeInterface::setExitCallback(this);
		/*调用SDK退出接口*/
		SFGameNativeInterface::exit();
	}
}
void PayLayer::menuLogoutCallback(cocos2d::Ref* pSender, TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		/*调用SDK登出接口*/
		SFGameNativeInterface::logout("LoginOut");
		Director::getInstance()->replaceScene(Login::createScene());
	}
}

/*void PayLayer::menuExtendCallback(cocos2d::Ref* pSender, TouchEventType type) {
	if (type == TouchEventType::TOUCH_EVENT_ENDED) {
		//设置扩展回调
		SFGameNativeInterface::setExtendCallback(&extendCallback);
		//调用SDK扩展接口
		SFGameNativeInterface::extend("data",2);
	}
}*/


bool PayLayer::isNumber(std::string s) {
	const char* c = s.c_str();
	int len = 0;
	while (*c != 0) {
		if (*c > '9' || *c < '0') {
			return false;
		}
		c++;
		len++;
	}

	return len > 0 ? true : false;
}

/*SDK没有退出界面时，走此方法，可以自定义退出界面*/
void PayLayer::onNoExiterProvide() {
	Director::getInstance()->end();
	SFGameNativeInterface::onDestroy();
}

/*SDK有退出界面时调用此方法
 * result
 * 		true：退出
 * 		false：取消退出*/
void PayLayer::onSDKExit(bool result) {

	if (!result) {
		return;
	}

	log("onSDKExit: onSDKExit onSDKExit onSDKExit onSDKExit");
	sprintf("onSDKExit", "onSDKExit");

	Director::getInstance()->end();
	SFGameNativeInterface::onDestroy();

}
