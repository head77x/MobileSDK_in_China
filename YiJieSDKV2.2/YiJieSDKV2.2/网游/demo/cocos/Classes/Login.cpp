#include "Login.h"

USING_NS_CC;

Text* loginfo = NULL;

//自建服务器
//const char* CP_LOGIN_CHECK_URL = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginZijian";
//自建服务器 正服
//const char* CP_LOGIN_CHECK_URL = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginZijianP";
//test
//const char* CP_LOGIN_CHECK_URL = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLogin";

/*CP服务器地址:用作登录验证.因为有些渠道要求必须做登录验证，为了统一处理，所以只有登录验证成功之后才算真正的登陆成功
 * 登陆验证是由CP服务器实现的，供游戏客户端调用验证用户登录状态的接口。 游戏客户端和游戏服务器之间的登陆验证接口由CP自己定义
 */
const char* CP_LOGIN_CHECK_URL =
		"http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginP";

/*游戏登陆回调类*/
class SFNativeOnlineLoginCallbackImpl: public SFNativeOnlineLoginCallback, cocos2d::Ref{
public:
	Login* mLogin;
	SFNativeOnlineLoginCallbackImpl(Login* login) {
		mLogin = login;
	}

	/*SDK账户登出，如有游戏有账户切换功能，可在此做再次登陆操作*/
	virtual void onLogout(const char* remain) {
		stringstream ss;
		ss << "账户登出";
		ss << remain << ';';
		Director::getInstance()->replaceScene(Login::createScene());
		SFGameNativeInterface::login("login");
		if (loginfo != NULL) {
			loginfo->setString(ss.str());
		}

	}

	/*SDK登陆成功回调，此回调为客户端返回，需要去游戏服务器验证是否真正登陆成功*/
	virtual void onLoginSuccess(SFNativeOnlineUser* user, const char* remain) {
		if (loginfo != NULL) {
			  loginfo->setString("登陆验证中");
		}

		stringstream url;
		url << CP_LOGIN_CHECK_URL;
		url << "?app=" << user->productCode;
		url << "&sdk=" << user->channelId;
		/*对userId做url编码转换*/
		url << "&uin=" << Login::urlencode(user->channelUserId);
		/*对token做url编码转换*/
		url << "&sess=" << Login::urlencode(user->token);

		std::string urlS = url.str();

		char *cstr = new char[urlS.length() + 1];
		strcpy(cstr, urlS.c_str());

		LoginCheck(cstr);
		log("%s", cstr);
		delete[] cstr;
	}

	/*登陆失败回调*/
	virtual void onLoginFailed(const char* r, const char* remain) {
		if (loginfo != NULL)
			loginfo->setString("登陆失败");
	}

	void LoginCheck(const char* postData) {
		cocos2d::network::HttpRequest* request =
				new cocos2d::network::HttpRequest();

		request->setUrl(postData);
		request->setRequestType(cocos2d::network::HttpRequest::Type::GET);
		request->setResponseCallback(this,
				httpresponse_selector(SFNativeOnlineLoginCallbackImpl::onHttpRequestCompleted));
		request->setTag("SFLOGIN");
		cocos2d::network::HttpClient::getInstance()->send(request);
		request->release();
	}


	void onHttpRequestCompleted(cocos2d::network::HttpClient *sender,
			cocos2d::network::HttpResponse *response) {
		if (!response) {
			if (loginfo != NULL)
				loginfo->setString("未知错误，校验失败！");
			return;

		}

		if (0 != strlen(response->getHttpRequest()->getTag())) {
			log("%s completed", response->getHttpRequest()->getTag());
		}

		long statusCode = response->getResponseCode();
		char statusString[64] = { };

		sprintf(statusString, "HTTP Status Code: %ld, tag = %s", statusCode,
				response->getHttpRequest()->getTag());
		log("response code: %ld", statusCode);

		if (!response->isSucceed()) {
			if (loginfo != NULL)
			loginfo->setString("校验失败！");
			log("response failed");
			log("error buffer: %s", response->getErrorBuffer());
			return;

		}

		std::vector<char>* buffer = response->getResponseData();
		log("Http Test, dump data: %s", buffer);
		const char* success = "success";
		if (buffer->size() != strlen(success)) {
			if (loginfo != NULL)
			loginfo->setString("校验失败！");
			return;
		}
		for (unsigned int i = 0; i < buffer->size(); i++) {
			if ((*buffer)[i] != (*(success + i))
					&& (*buffer)[i] != (*(success + i)) - 0x20) {
				if (loginfo != NULL)
				loginfo->setString("校验失败！");
				return;
			}
			log("%c", (*buffer)[i]);
		}
		log("\n");
		if (loginfo != NULL)
			loginfo->setString("");
		  /* 部分渠道如UC渠道，要对游戏人物数据进行统计，而且为接入规范，调用时间：在游戏角色登录成功后调用
		   *  static void setRoleData(String roleId，
		   *  	String roleName, String roleLevel, String zoneId, String zoneName)
		   *
		   *  @param roleId    角色唯一标识
		   *  @param roleName  角色名
		   *  @param roleLevel 角色等级
		   *  @param zoneId    区域唯一标识
		   *  @param zoneName  区域名称
		   *  */
		SFGameNativeInterface::setRoleData("1", "猎人", "100", "1", "阿狸一区");

		loginfo = NULL;
		Director::getInstance()->replaceScene(PayLayer::createScene());
	}


	void callLogin(float fDelta) {
		log("callLogin :%d" , fDelta);
		SFGameNativeInterface::login("login");
	}
};

/*游戏初始化回调类*/
//class SFNativeOnlineInitCallbackImpl: public SFNativeOnlineInitCallback {
//	virtual void onResponse(const char* r, const char* remain) {
//			stringstream ss;
//			ss << "初始化:";
//			ss << r << ',' << remain << ';';
//			if (loginfo != NULL)
//				loginfo->setString(ss.str());
//			log("初始化：%s", r);
//	}
//};



/*游戏退出回调类*/
class SFNativeOnlineExitCallbackImpl: public SFNativeOnlineExitCallback {
	/*SDK没有退出界面时，走此方法，可以自定义退出界面*/
	virtual void onNoExiterProvide() {
		Director::getInstance()->end();
		SFGameNativeInterface::onDestroy();
	}

	/*SDK有退出界面时调用此方法
	 * result
	 * 		true：退出
	 * 		false：取消退出*/
	virtual void onSDKExit(bool result) {
		if (!result)
			return;
		log("onSDKExit: onSDKExit onSDKExit onSDKExit onSDKExit");
		sprintf("onSDKExit", "onSDKExit");
		Director::getInstance()->end();
		SFGameNativeInterface::onDestroy();
	}

};

SFNativeOnlineLoginCallbackImpl* loginCallback = NULL;

//SFNativeOnlineInitCallbackImpl* initCallback =
//		 new SFNativeOnlineInitCallbackImpl();

SFNativeOnlineExitCallbackImpl* exitCallback =
		new SFNativeOnlineExitCallbackImpl();

Scene* Login::createScene() {
	// 'scene' is an autorelease object
	auto scene = Scene::create();

	// 'layer' is an autorelease object
	auto layer = Login::create();

	// add layer as a child to scene
	scene->addChild(layer);

	return scene;
}

// on "init" you need to initialize your instance
bool Login::init() {
	//////////////////////////////
	// 1. super init first
	if (!Layer::init()) {
		return false;
	}

	Size visibleSize = Director::getInstance()->getVisibleSize();
	Vec2 origin = Director::getInstance()->getVisibleOrigin();
    // 注册初始化回调
//	SFGameNativeInterface::setInitCallback(initCallback);

	/////////////////////////////
	// 2. add a menu item with "X" image, which is clicked to quit the program
	//    you may modify it.

	// add a "close" icon to exit the progress. it's an autorelease object
	m_pUILayer = Layer::create();
	auto myLayout = cocostudio::GUIReader::getInstance()->widgetFromJsonFile(
			"splashUI_1.json");
	m_pUILayer->addChild(myLayout);
	addChild(m_pUILayer);

	Button* loginBtn = dynamic_cast<Button*>(myLayout->getChildByName("login"));
	Button* exitBtn = dynamic_cast<Button*>(myLayout->getChildByName("exit"));
	loginfo = dynamic_cast<Text*>(myLayout->getChildByName("loginfo"));
	exitBtn->addTouchEventListener(this,
			toucheventselector(Login::btnExitCallback));
	loginBtn->addTouchEventListener(this,
			toucheventselector(Login::btnLoginCallback));
	loginfo->setString("");

	auto listener = EventListenerKeyboard::create();
	listener->onKeyReleased = CC_CALLBACK_2(Login::onKeyReleased, this);
	this->getEventDispatcher()->addEventListenerWithSceneGraphPriority(listener, this);
	loginCallback = new SFNativeOnlineLoginCallbackImpl(this);

	/*设置登陆回调*/
	SFGameNativeInterface::setLoginCallback(loginCallback);
	return true;
}


void Login::onKeyReleased(EventKeyboard::KeyCode keycode,
		cocos2d::Event *event) {
	if (keycode == EventKeyboard::KeyCode::KEY_ESCAPE) //返回
	{
		/*设置退出回调*/
		SFGameNativeInterface::setExitCallback(exitCallback);
		/*调用SDK退出方法*/
		SFGameNativeInterface::exit();
	}
	else if (keycode == EventKeyboard::KeyCode::KEY_MENU)
	{

	}
}

void Login::btnExitCallback(cocos2d::Ref* pSender, TouchEventType type) {

	switch (type) {
	case TouchEventType::TOUCH_EVENT_BEGAN:
		break;
	case TouchEventType::TOUCH_EVENT_MOVED:
		break;
	case TouchEventType::TOUCH_EVENT_ENDED:
		log("menuExitCallback menuExitCallback");
		/*设置退出回调*/
		SFGameNativeInterface::setExitCallback(exitCallback);
		/*调用SDK退出方法*/
		SFGameNativeInterface::exit();
		break;
	case TouchEventType::TOUCH_EVENT_CANCELED:
		break;
	default:
		break;
	}

}

//void Login::LoginCheck(const char* postData) {
//	cocos2d::network::HttpRequest* request =
//			new cocos2d::network::HttpRequest();
//
//	request->setUrl(postData);
//	request->setRequestType(cocos2d::network::HttpRequest::Type::GET);
//	request->setResponseCallback(this,
//			httpresponse_selector(Login::onHttpRequestCompleted));
//	request->setTag("SFLOGIN");
//	cocos2d::network::HttpClient::getInstance()->send(request);
//	request->release();
//}
//
//void Login::onHttpRequestCompleted(cocos2d::network::HttpClient *sender,
//		cocos2d::network::HttpResponse *response) {
//	if (!response) {
//		loginfo->setString("未知错误，校验失败！");
//		return;
//
//	}
//
//	if (0 != strlen(response->getHttpRequest()->getTag())) {
//		log("%s completed", response->getHttpRequest()->getTag());
//	}
//
//	long statusCode = response->getResponseCode();
//	char statusString[64] = { };
//
//	sprintf(statusString, "HTTP Status Code: %ld, tag = %s", statusCode,
//			response->getHttpRequest()->getTag());
//	log("response code: %ld", statusCode);
//
//	if (!response->isSucceed()) {
//		loginfo->setString("校验失败！");
//		log("response failed");
//		log("error buffer: %s", response->getErrorBuffer());
//		return;
//
//	}
//
//	std::vector<char>* buffer = response->getResponseData();
//	log("Http Test, dump data: %s", buffer);
//	const char* success = "success";
//	if (buffer->size() != strlen(success)) {
//		loginfo->setString("校验失败！");
//		return;
//	}
//	for (unsigned int i = 0; i < buffer->size(); i++) {
//		if ((*buffer)[i] == (*(success + i))
//				|| (*buffer)[i] == (*(success + i)) - 0x20) {
//
//		} else {
//			loginfo->setString("校验失败！");
//			return;
//		}
//		log("%c", (*buffer)[i]);
//	}
//	log("\n");
//
//	loginfo->setString("");
//	  /* 部分渠道如UC渠道，要对游戏人物数据进行统计，而且为接入规范，调用时间：在游戏角色登录成功后调用
//	   *  static void setRoleData(String roleId，
//	   *  	String roleName, String roleLevel, String zoneId, String zoneName)
//	   *
//	   *  @param roleId    角色唯一标识
//	   *  @param roleName  角色名
//	   *  @param roleLevel 角色等级
//	   *  @param zoneId    区域唯一标识
//	   *  @param zoneName  区域名称
//	   *  */
//	SFGameNativeInterface::setRoleData("1", "猎人", "100", "1", "阿狸一区");
//
//	loginfo = NULL;
//	Director::getInstance()->replaceScene(PayLayer::createScene());
//}
void Login::btnLoginCallback(cocos2d::Ref* pSender, TouchEventType type) {
	switch (type) {
	case TouchEventType::TOUCH_EVENT_BEGAN:
		break;
	case TouchEventType::TOUCH_EVENT_MOVED:
		break;
	case TouchEventType::TOUCH_EVENT_ENDED:
		/*设置登陆回调*/
		SFGameNativeInterface::setLoginCallback(loginCallback);
		/*调用登陆接口*/
		SFGameNativeInterface::login("login");
		break;
	case TouchEventType::TOUCH_EVENT_CANCELED:
		break;
	default:
		break;
	}

}


std::string Login::urlencode(std::string str_source) {
	char const *in_str = str_source.c_str();
	int in_str_len = strlen(in_str);
	int out_str_len = 0;
	std::string out_str;
	register unsigned char c;
	unsigned char *to, *start;
	unsigned char const *from, *end;
	unsigned char hexchars[] = "0123456789ABCDEF";

	from = (unsigned char *) in_str;
	end = (unsigned char *) in_str + in_str_len;
	start = to = (unsigned char *) malloc(3 * in_str_len + 1);

	while (from < end) {
		c = *from++;

		if (c == ' ') {
			*to++ = '+';
		} else if ((c < '0' && c != '-' && c != '.') || (c < 'A' && c > '9')
				|| (c > 'Z' && c < 'a' && c != '_') || (c > 'z' && c != '~')) {
			to[0] = '%';
			to[1] = hexchars[c >> 4];
			to[2] = hexchars[c & 15];
			to += 3;
		} else {
			*to++ = c;
		}
	}
	*to = 0;

	out_str_len = to - start;
	out_str = (char *) start;
	free(start);
	return out_str;
}

