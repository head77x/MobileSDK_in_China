#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"
#include "ui/CocosGUI.h"
#include "extensions/cocos-ext.h"
#include "cocostudio/CocoStudio.h"
#include "network/HttpClient.h"
#include "SFGameNativeInterface.hpp"
#include "PayLayer.h";
USING_NS_CC;
USING_NS_CC_EXT;
using namespace cocos2d::ui;
class Login : public cocos2d::Layer
{
public:
    // there's no 'id' in cpp, so we recommend returning the class instance pointer
    static cocos2d::Scene* createScene();

    Layer * m_pUILayer;
    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init();  
	// a selector callback
	void btnLoginCallback(cocos2d::Ref* pSender, TouchEventType type);
	// a selector callback
	void btnExitCallback(cocos2d::Ref* pSender, TouchEventType type);
	/*登陆验证时调用*/
	void LoginCheck(const char* postData);
	/*登陆成功之后调用*/
	void onHttpRequestCompleted(cocos2d::network::HttpClient *sender, cocos2d::network::HttpResponse *response);

	static std::string urlencode(std::string str_source);

    void onKeyReleased(EventKeyboard::KeyCode keycode, Event* event);
//    virtual void keyBackClicked();//Android 返回键
    // implement the "static create()" method manually
    CREATE_FUNC(Login);
};

#endif // __HELLOWORLD_SCENE_H__
