/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFNATIVEONLINE_PAYRESULT_LISTENER_HPP_
#define SFNATIVEONLINE_PAYRESULT_LISTENER_HPP_

#include <sys/types.h>

class SFNativeOnlinePayResultListener
{
public:
	SFNativeOnlinePayResultListener() {};
   virtual ~SFNativeOnlinePayResultListener() {};
   virtual void onFailed(const char* remain) = 0;
   virtual void onSuccess(const char* remain) = 0;
   virtual void onOderNo(const char* orderNo) = 0;
};


#endif /* SFNATIVEONLINE_PAYRESULT_CALLBACK_HPP_ */
