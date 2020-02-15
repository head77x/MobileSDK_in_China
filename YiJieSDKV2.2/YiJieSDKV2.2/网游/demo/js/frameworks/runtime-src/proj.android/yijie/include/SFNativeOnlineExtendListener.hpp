/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFNATIVEONLINE_EXTEND_LISTENER_HPP_
#define SFNATIVEONLINE_EXTEND_LISTENER_HPP_

#include <sys/types.h>

class SFNativeOnlineExtendListener
{
public:
	SFNativeOnlineExtendListener() {};
    virtual ~SFNativeOnlineExtendListener() {};
    virtual void onResponse(int index,const char* r, const char* remain) = 0;
};


#endif /* SFNATIVEONLINE_EXIT_CALLBACK_HPP_ */
