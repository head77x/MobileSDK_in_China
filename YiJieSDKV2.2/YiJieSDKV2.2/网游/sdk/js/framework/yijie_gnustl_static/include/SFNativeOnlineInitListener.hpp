/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFNATIVEONLINE_INIT_LISTENER_HPP_
#define SFNATIVEONLINE_INIT_LISTENER_HPP_

#include <sys/types.h>

class SFNativeOnlineUser;

class SFNativeOnlineInitListener
{
public:
	SFNativeOnlineInitListener() {};
    virtual ~SFNativeOnlineInitListener() {};
    virtual void onResponse(const char* r, const char* remain) = 0;
};


#endif /* SFNATIVEONLINE_PAYRESULT_CALLBACK_HPP_ */
