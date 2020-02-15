/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFGAMENATIVEINTERFACE_HPP_
#define SFGAMENATIVEINTERFACE_HPP_

#include <sys/types.h>

class SFGameNativeInterface;
class SFNativeOnlinePayResultListener;
class SFNativeOnlineLoginListener;
class SFNativeOnlineExitListener;
class SFNativeOnlineInitListener;
class SFNativeOnlineExtendListener;

class SFGameNativeInterface {
public:
	SFGameNativeInterface() {};
    virtual ~SFGameNativeInterface() {};
	void setPayResultCallback(SFNativeOnlinePayResultListener* callback);
	void setLoginCallback(SFNativeOnlineLoginListener* callback);
	void setExitCallback(SFNativeOnlineExitListener* callback);
	void setInitCallback(SFNativeOnlineInitListener* callback);
	void setExtendCallback(SFNativeOnlineExtendListener* callback);

	void onCreate();
	void onStop();
	void onResume();
	void onPause();
	 void onRestart();
	void onDestroy();

	void exit();
	void login(const char* params);
	void logout(const char* params);
	void charge(const char* itemName, int unitPrice, int count,
			const char* callBackInfo, const char* callBackUrl);
	void pay(int unitPrice, const char*  unitName,
			int count, const char*  callBackInfo, const char* callBackUrl);
    void payExtend(int unitPrice, const char*  unitName,
				 const char*  itemCode, const char*  remain,int count, const char*  callBackInfo, const char* callBackUrl);
	void setRoleData(const char* roleId, const char* roleName,
					const char* roleLevel, const char* zoneId, const char* zoneName);
	bool isMusicEnabled();
	void setData(const char* key, const char* value);
	const static char* extend(const char* key, int count);
};

#endif /* SFGAMENATIVEINTERFACE_HPP_ */
