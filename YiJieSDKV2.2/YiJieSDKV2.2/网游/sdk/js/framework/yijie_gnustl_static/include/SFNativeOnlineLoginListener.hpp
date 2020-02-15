/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFNATIVEONLINE_LOGIN_LISTENER_HPP_
#define SFNATIVEONLINE_LOGIN_LISTENER_HPP_

#include <sys/types.h>

class SFNativeOnlineUser;

class SFNativeOnlineLoginListener
{
public:
	SFNativeOnlineLoginListener() {};
    virtual ~SFNativeOnlineLoginListener() {};
    virtual void onLogout(const char* remain) = 0;
    virtual void onLoginSuccess(SFNativeOnlineUser* user, const char* remain) = 0;
    virtual void onLoginFailed(const char* r, const char* remain) = 0;
};


#endif /* SFNATIVEONLINE_PAYRESULT_CALLBACK_HPP_ */
