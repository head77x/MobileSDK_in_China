/*
 * PayLayout.h
 *
 *  Created on: 2014-11-24
 *      Author: wanshaofeng
 */

#ifndef PAYLAYOUT_H_
#define PAYLAYOUT_H_
#include "cocos2d.h"
#include "ui/CocosGUI.h"
#include "extensions/cocos-ext.h"
#include "cocostudio/CocoStudio.h"
#include "network/HttpClient.h"
#include "SFGameNativeInterface.hpp"
#include "Login.h"
USING_NS_CC;
USING_NS_CC_EXT;
using namespace cocos2d::ui;
class PayLayer : public cocos2d::Layer , SFNativeOnlineExitCallback {
public:
	static cocos2d::Scene* createScene();
    Layer * m_pUILayer;
    virtual bool init();
    void onKeyReleased(EventKeyboard::KeyCode keycode,
    		cocos2d::Event *event);
    void menuPay100Callback(cocos2d::Ref* pSender, TouchEventType type);
    void menuRecharge100Callback(cocos2d::Ref* pSender, TouchEventType type);
    void menuPayCallback(cocos2d::Ref* pSender, TouchEventType type);
    void menuRechargeCallback(cocos2d::Ref* pSender, TouchEventType type);
    void menuRechargeExtendCallback(cocos2d::Ref* pSender, TouchEventType type);
    void menuExitCallback(cocos2d::Ref* pSender, TouchEventType type);
    void menuExtendCallback(cocos2d::Ref* pSender, TouchEventType type);//��չ�ӿ�
    void menuLogoutCallback(cocos2d::Ref* pSender, TouchEventType type);
    bool isNumber(std::string s);
    void onNoExiterProvide();
    void onSDKExit(bool result);
    CREATE_FUNC(PayLayer);
};

#endif /* PAYLAYOUT_H_ */
