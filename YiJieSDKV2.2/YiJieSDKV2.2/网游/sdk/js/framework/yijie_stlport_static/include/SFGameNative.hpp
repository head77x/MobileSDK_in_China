/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFGAMENATIVE_HPP_
#define SFGAMENATIVE_HPP_
#include <jni.h>
#include <android/log.h>

#include "SFGameNativeInterface.hpp"

class SFGameNative {
public:
	static JNIEnv* mJNIEnv;
	static SFNativeOnlinePayResultListener* mSFNativeOnlinePayResultCallback;
	static SFNativeOnlineLoginListener* mSFNativeOnlineLoginCallback;
	static SFNativeOnlineExitListener* mSFNativeOnlineExitCallback;
	static SFNativeOnlineInitListener* mSFNativeOnlineInitCallback;
	static SFNativeOnlineExtendListener* mSFNativeOnlineExtendCallback;
	static const char* mtag;
	static const char* mvalue;

	static void init(JNIEnv* env);
	static void setPayResultCallback(SFNativeOnlinePayResultListener* callback);
	static void setLoginCallback(SFNativeOnlineLoginListener* callback);
	static void setExitCallback(SFNativeOnlineExitListener* callback);
	static void setInitCallback(SFNativeOnlineInitListener* callback);
	static void setExtendCallback(SFNativeOnlineExtendListener* callback);

	static void onCreate();
	static void onStop();
	static void onResume();
	static void onPause();
	static void onRestart();
	static void onDestroy();

	static void exit();
	static void login(const char* params);
	static void logout(const char* params);
	static void charge(const char* itemName, int unitPrice, int count,
			const char* callBackInfo, const char* callBackUrl);
	static void pay(int unitPrice, const char*  unitName,
			int count, const char*  callBackInfo, const char* callBackUrl);
	static void payExtend(int unitPrice, const char*  unitName,
			 const char*  itemCode, const char*  remain,int count, const char*  callBackInfo, const char* callBackUrl);
	static void setRoleData(const char* roleId, const char* roleName,
					const char* roleLevel, const char* zoneId, const char* zoneName);
	static bool isMusicEnabled();
	static void setData(const char* key, const char* value);
	const static char* extend(const char* key, int count);
};
#endif /* SFGAMENATIVE_HPP_ */
