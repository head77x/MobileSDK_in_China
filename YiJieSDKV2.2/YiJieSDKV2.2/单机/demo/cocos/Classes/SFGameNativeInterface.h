/*
 * SFGameNativeInterface.h
 *
 *  Created on: 2014-7-28
 *      Author: wanshaofeng
 */

#ifndef SFGAMENATIVEINTERFACE_H_
#define SFGAMENATIVEINTERFACE_H_

#include <sys/types.h>

class SFNativeGameExitCallBack {
public:
	SFNativeGameExitCallBack() {};
	virtual ~SFNativeGameExitCallBack() {};
	virtual void onGameExit(bool b) = 0;
};

class SFNativeIPayResulBack {
public:
	SFNativeIPayResulBack() {};
	virtual ~SFNativeIPayResulBack() {};
	virtual void onCanceled(const char* remain) = 0;
	virtual void onFailed(const char* remain) = 0;
	virtual void onSuccess(const char* remain) = 0;
};

class SFNativeIExtendResulBack {
public:
	SFNativeIExtendResulBack() {};
	virtual ~SFNativeIExtendResulBack() {};
	virtual void onResponse(int index,const char* tag,const char* value) = 0;
};

class SFNativeInitResulBack {
public:
	SFNativeInitResulBack() {};
	virtual ~SFNativeInitResulBack() {};
	virtual void onResponse(const char* tag,const char* value) = 0;
};

typedef void (SEL_CodeFun)(int result, const char* orderId, const char* payPoint,
		int price, const char* remain);

class SFGameNativeInterface {
public:
	static void setSFGameExitCallBack(SFNativeGameExitCallBack* exitCallBack);
	static void setSFIPayResulBack(SFNativeIPayResulBack* payCallBack);
	static void setSFInitResulBack(SFNativeInitResulBack* CallBack);
	static void setSFIExtendResulBack(SFNativeIExtendResulBack* CallBack);

	static void onDestroy();
	static void onExit();
	static void onInit();
	static void onPause();
	static void onResume();
	static bool isPaid(const char* id);
	static void pay(const char* id);
	static void recharge(int price,
			const char* chargeDesc, const char* sign);
	static void setPaid(const char* id);
	static bool isMusicEnabled();
	static void viewMoreGames();
	static long getUserId();
	static void setCodeFun(SEL_CodeFun* callback);
	const static char* extend(const char* key, int count);
};

#endif /* SFGAMENATIVEINTERFACE_H_ */
