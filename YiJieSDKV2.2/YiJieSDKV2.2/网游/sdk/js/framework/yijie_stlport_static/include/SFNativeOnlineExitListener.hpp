/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFNATIVEONLINE_EXIT_LISTENER_HPP_
#define SFNATIVEONLINE_EXIT_LISTENER_HPP_

#include <sys/types.h>

class SFNativeOnlineExitListener
{
public:
	SFNativeOnlineExitListener() {};
    virtual ~SFNativeOnlineExitListener() {};
    virtual void onNoExiterProvide() = 0;
    virtual void onSDKExit(bool result) = 0;
};


#endif /* SFNATIVEONLINE_EXIT_CALLBACK_HPP_ */
