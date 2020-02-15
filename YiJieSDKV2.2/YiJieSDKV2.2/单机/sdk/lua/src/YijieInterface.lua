
YijieInterface = class()

local luaj = require "luaj"
local className = "com/snowfish/cn/ganga/offline/basic/SFLuaAdapter"

--强制计费点是否付费
function YijieInterface:isPaid(payId)
	print("yj call isPaid ", payId)
	local signs = "(Ljava/lang/String;)Z"
	local methodName = "isPaid"
	local args = {payId}
	local ok,ret = luaj.callStaticMethod(className, methodName, args, signs)
	if not ok then
		print("isPaid error")
		return false
	else
		print("isPaid ret:", ret)
		return ret
	end
end



--设置强制计费点付费标志
function YijieInterface:setPaid(payid)
	print("yj call setPaid ", payid)
	local signs = "(Ljava/lang/String;)V"
	local methodName = "setPaid"
	local args = {payid}
	luaj.callStaticMethod(className, methodName, args, signs)
end

--计费点支付
function YijieInterface:pay(payid, callbackFunc)
	print("yj call pay ", payid)
	local signs = "(Ljava/lang/String;I)V"
	local methodName = "pay"
	local args = {payid, callbackFunc}
	luaj.callStaticMethod(className, methodName, args, signs)
end

--充值
function YijieInterface:recharge(price, chargeDesc, sign, callbackFunc)
	print("yj call recharge ", price, chargeDesc, sign, callbackFunc)
	local signs = "(ILjava/lang/String;Ljava/lang/String;I)V"
	local methodName = "recharge"
	local args = {price, chargeDesc, sign, callbackFunc}
	luaj.callStaticMethod(className, methodName, args, signs)
end


--退出函数
function YijieInterface:onExit(exitCallback)
	print("yj call onExit ")
	local signs = "(I)V"
	local methodName = "onExit"
	local args = {exitCallback}
	luaj.callStaticMethod(className, methodName, args, signs)
end


--音乐开关
function YijieInterface:isMusicEnable()
	print("yj call isMusicEnable ")
	local signs = "()Z"
	local methodName = "isMusicEnabled"
	local args = {}
	local ok,ret = luaj.callStaticMethod(className, methodName, args, signs)
	if not ok then
		print("isMusicEnable error")
		return false
	else
		print("isMusicEnable ret:", ret)
		return ret
	end
end


--更多游戏接口
function YijieInterface:viewMoreGames()
	print("yj call viewMoreGames ")
	local signs = "()V"
	local methodName = "viewMoreGames"
	local args = {}
	luaj.callStaticMethod(className, methodName, args, signs)
end


--支付接口
function YijieInterface:getUserId()
	print("yj call getUserId ")
	local signs = "()Ljava/lang/String;"
	local methodName = "getUserId"
	local args = {}
	local ok,ret = luaj.callStaticMethod(className, methodName, args, signs)
	if not ok then
		print("getUserId error")
		return false
	else
		print("getUserId :", ret)
		return ret
	end
end


--SDK初始化接口
function YijieInterface:onInit(callbackFunc)
	print("yj call onInit ", callbackFunc)
	local signs = "(I)V"
	local methodName = "onInit"
	local args = {callbackFunc}
	luaj.callStaticMethod(className, methodName, args, signs)
end


--扩展接口  返回时json例如：{"index":0, "tag":"testTag", "value":"3"}
function YijieInterface:extend(data, count, callbackFunc)
	print("yj call extend ", data,count, callbackFunc)
	local signs = "(Ljava/lang/String;II)V"
	local methodName = "extend"
	local args = {data, count, callbackFunc}
	local ok, ret = luaj.callStaticMethod(className, methodName, args, signs)
	if not ok then
		print("extend error")
		return nil
	else
		print("extend ret", ret)
		return ret
	end
end