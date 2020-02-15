/*
 * NativeGLApplication.hpp
 *
 *  Created on: 2013-5-20
 *      Author: starlight
 */

#ifndef SFNATIVEONLINEUSER_HPP_
#define SFNATIVEONLINEUSER_HPP_

#include <sys/types.h>
#include <string>
class SFNativeOnlineUser {
public:
	SFNativeOnlineUser();
	virtual ~SFNativeOnlineUser();

	virtual long long getId();

	virtual std::string getChannelId();

	virtual std::string getChannelUserId();

	virtual std::string getUserName();

	virtual std::string getToken();

	virtual std::string getProductCode();

public:
	long long id;
	std::string channelId;
	std::string channelUserId;
	std::string channelUserName;
	std::string token;
	std::string productCode;
};

#endif /* SFNATIVEONLINEUSER_HPP_ */
