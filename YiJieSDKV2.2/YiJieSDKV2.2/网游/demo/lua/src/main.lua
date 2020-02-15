require "Cocos2d"
require "Cocos2dConstants"
-- cclog
cclog = function(...)
    print(string.format(...))
end

-- for CCLuaEngine traceback
function __G__TRACKBACK__(msg)
    cclog("----------------------------------------")
    cclog("LUA ERROR: " .. tostring(msg) .. "\n")
    cclog(debug.traceback())
    cclog("----------------------------------------")
    return msg
end


layerLogin = nil
layerPay = nil 
--登陆回调
function loginCallback(jPrama)
	require "json"
	local data = json.decode(jPrama);
	print("yj loginCallback ", jPrama)
	if data["result"] == "success" then--登陆成功
		print("yj loginCallback 登陆成功")		
		local loginfo = layerLogin:getChildByName("loginfo")
		loginfo:setString("登陆验证中...")
		--登陆成功之后需要去服务器验证登陆是否成功
		loginCheck(data)
	elseif data["result"] == "fail" then--登陆失败
		local loginfo = layerLogin:getChildByName("loginfo")
		print("yj login fail loginfo:" , loginfo)
		loginfo:setString("登陆失败")
	elseif data["result"] == "logout" then--登出回调
		local loginfo = layerLogin:getChildByName("loginfo")
		loginfo:setString("退出登陆")
		layerLogin:setVisible(true)
		layerPay:setVisible(false)
		YijieInterface.new():login("login")
	end
end

--CP服务器地址，支付结果同步地址
--如果客户端不设置，将以在易接后台创建游戏时设置的数据同步地址进行同步
cpPaySyncUrl = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync"

--CP服务器地址:用作登录验证.因为有些渠道要求必须做登录验证，为了统一处理，所以只有登录验证成功之后才算真正的登陆成功
--登陆验证是由CP服务器实现的，供游戏客户端调用验证用户登录状态的接口。 游戏客户端和游戏服务器之间的登陆验证接口由CP自己定义 
--自建正服
--cpLoginCheckUrl = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginZijianP"
--自建测服
--cpLoginCheckUrl = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginZijian"
--测服
--cpLoginCheckUrl = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLogin"
--正服
cpLoginCheckUrl = "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginP"

--登陆验证
local function encodeURI(s)
    s = string.gsub(s, "([^%w%.%- ])", function(c) return string.format("%%%02X", string.byte(c)) end)
    return string.gsub(s, " ", "+")
end

function loginCheck(userInfo)
			local xhr = cc.XMLHttpRequest:new() -- http请求
      xhr.responseType = cc.XMLHTTPREQUEST_RESPONSE_STRING -- 响应类型
      local urlStr = cpLoginCheckUrl.."?app="..userInfo["productCode"]
      urlStr = urlStr.."&sdk="..userInfo["channelId"]
      urlStr = urlStr.."&uin="..encodeURI(userInfo["channelUserId"])
      urlStr = urlStr.."&sess="..encodeURI(userInfo["token"])
      print("yj loginCheck=", urlStr)
      xhr:open("GET", urlStr) -- 打开链接
 
      -- 状态改变时调用
      local function onReadyStateChange()
        -- 显示状态文本
        local reponse = string.upper(xhr.response)
        print("yj response = ", reponse)
        if (reponse == "SUCCESS") then
        --初始化易接接口
        	require "YijieInterface"
					local yijie = YijieInterface.new()
					--设置角色，必须设置，有些SDK不设置会导致购买失败
        	yijie:setRoleData("1", "猎人", "100", "1", "阿狸一区")
        	layerLogin:setVisible(false)
					layerPay:setVisible(true)					
        else--服务器验证失败，登陆失败处理
    			local loginfo = layerLogin:getChildByName("loginfo")
					loginfo:setString("验证失败")
        end
      end
 
      -- 注册脚本回调方法
      xhr:registerScriptHandler(onReadyStateChange)
      xhr:send() -- 发送请求	
end

--支付回调
function payCallback(jPrama)
	require "json"
	local data = json.decode(jPrama);
	print("yj payCallback ", jPrama)
	if data["result"] == "success" then--支付成功
		local payInfo = layerPay:getChildByName("payInfo")
		payInfo:setString("支付成功")
		--print("yj payCallback 支付成功：", data["remain"])
	elseif data["result"] == "oderno" then--获得订单号
		local payInfo = layerPay:getChildByName("payInfo")
		payInfo:setString(data["remain"])
		--print("yj payCallback 订单号", data["remain"])
	elseif data["result"] == "fail" then--支付失败
		local payInfo = layerPay:getChildByName("payInfo")
		payInfo:setString("支付失败")
		--print("yj payCallback 支付失败", data["remain"])
	end
end


--退出回调
function exitCallback(jPrama)
	print("yj exitCallback end")
	print("yj exitCallback ", jPrama)
	require "json"
	local data = json.decode(jPrama);	
	print("yj exitCallback data[result]", data["result"])
	if data["result"] == "exit" then--退出游戏
		print("yj exitCallback exit")
		os.exit()
	elseif data["result"] == "noExit" then--用户取消退出，继续游戏
		print("yj exitCallback noExit")
	elseif data["result"] == "noProvide" then--使用游戏本身的退出界面
		print("yj exitCallback noProvide")
		--使用游戏自己的退出
		os.exit()
	end
end


local function main()
    collectgarbage("collect")
    -- avoid memory leak
    collectgarbage("setpause", 100)
    collectgarbage("setstepmul", 5000)
	cc.FileUtils:getInstance():addSearchResolutionsOrder("src");
	cc.FileUtils:getInstance():addSearchResolutionsOrder("res");
	local schedulerID = 0
    --support debug
    local targetPlatform = cc.Application:getInstance():getTargetPlatform()
    if (cc.PLATFORM_OS_IPHONE == targetPlatform) or (cc.PLATFORM_OS_IPAD == targetPlatform) or 
       (cc.PLATFORM_OS_ANDROID == targetPlatform) or (cc.PLATFORM_OS_WINDOWS == targetPlatform) or
       (cc.PLATFORM_OS_MAC == targetPlatform) then
        cclog("result is ")
		--require('debugger')()
        
    end
    require "hello2"
    cclog("result is " .. myadd(1, 1))

    ---------------

    local visibleSize = cc.Director:getInstance():getVisibleSize()
    local origin = cc.Director:getInstance():getVisibleOrigin()		


		local function setPayInfo(prama)
			local payInfo = layerPay:getChildByName("payInfo")
			payInfo:setString(prama)
		end
		
		local function getPrice()
			local price = layerPay:getChildByName("price")
			local n = tonumber(price:getStringValue());
			if n then
				return n
			else
				return 0
			end 
		end
		
	  local function getPayName()
			local nameLabel = layerPay:getChildByName("name")			
			local name = nameLabel:getStringValue()
			if name == nil then
				name = ""
			end
			return name;
		end
		
		local function getPayCode()
			local codeLabel = layerPay:getChildByName("itemcode")			
			local code = codeLabel:getStringValue()
			if code == nil then
				code = ""
			end
			return code;
		end
		
		local function getPayCustomInfo()
			local remainLabel = layerPay:getChildByName("remain")			
			local remain = remainLabel:getStringValue()
			if remain == nil then
				remain = ""
			end
			return remain;
		end
		
		--获取lua易接接口，此接口不能作为全局变量使用
		require "YijieInterface"
		local yijie = YijieInterface.new()
		
		-- 按钮事件处理
		local function btnTouchEventCallback(sender,eventType)
						local tag = sender:getTag();
						print("tag:", tag)
		        if eventType == ccui.TouchEventType.began then
		            print("TouchEventType.began")
		        elseif eventType == ccui.TouchEventType.moved then
		            print("TouchEventType.moved")
		        elseif eventType == ccui.TouchEventType.ended then
		            print("TouchEventType.ended")
		            if layerLogin ~= nil and layerPay ~= nil then
			            if tag == 14 then --登录响应
			            	yijie:login("login")--登陆
			            elseif tag == 16 or tag == 6 then--退出响应
			            	yijie:exit(exitCallback)--退出游戏
			            elseif tag == 7 then--登出响应
			            	print("logout")
			            	yijie:logout("logout")--登出
			            elseif tag == 8 then--定额支付100金币
			            	print("pay100")
			            	yijie:pay(100, "金币", 1, "购买金币", cpPaySyncUrl, payCallback)
		            	elseif tag == 9 then--非定额支付100金币
		            		print("charge100")
		            		yijie:charge("金币", 100, 1, "购买金币", cpPaySyncUrl, payCallback)
		            	elseif tag == 17 then--定额支付
		            		print("pay")
		            		local price = getPrice()
		            		local name = getPayName()
		            		if price > 0 and name ~= "" then
		            			yijie:pay(price, name, 1, "购买金币", cpPaySyncUrl, payCallback)
		            		elseif price > 0 then
		            			setPayInfo("请输入商品名称")
		            		else
		            			setPayInfo("请正确输入商品价格")
		            		end
		            	elseif tag == 10 then--非定额支付
		            		print("charge")
		            		local price = getPrice()
		            		local name = getPayName()
		            		if price > 0 and name ~= "" then
		            			yijie:charge(name, price, 1, "购买金币", cpPaySyncUrl, payCallback)
		            		elseif price > 0 then
		            			setPayInfo("请输入商品名称")
		            		else
		            			setPayInfo("请正确输入商品价格")
		            		end
		            	elseif tag == 22 then--支付扩展
		            		print("pay extend")
		            		local price = getPrice()
		            		local name = getPayName()
		            		local code = getPayCode()
		            		local remain = getPayCustomInfo()
		            		yijie:payExtend(price, name, code, remain, 1, "购买金币", cpPaySyncUrl, payCallback)
						end
		            end
		        elseif eventType == ccui.TouchEventType.canceled then
		            print("TouchEventType.canceled")
		        end
		end
		
		-- create login
		local function createLayerLogin()
			layerLogin = ccs.GUIReader:getInstance():widgetFromJsonFile("splashUI_1.json")
			--登陆按钮 tag 14
			local btnLogin = layerLogin:getChildByName("login")
			btnLogin:addTouchEventListener(btnTouchEventCallback)
			
			--退出按钮 tag 16
			local btnExit = layerLogin:getChildByName("exit")
			btnExit:addTouchEventListener(btnTouchEventCallback)
			
			local loginfo = layerLogin:getChildByName("loginfo")
			loginfo:setString("")
			return layerLogin
		end

		-- create pay
		local function createLayerPay()
			layerPay = ccs.GUIReader:getInstance():widgetFromJsonFile("mainUI_1.json")
			--登出按钮 tag 7
			local btnLogout = layerPay:getChildByName("logout")
			btnLogout:addTouchEventListener(btnTouchEventCallback)
			
			--定额100金币  tag 8
			local btnPay100 = layerPay:getChildByName("pay100")
			btnPay100:addTouchEventListener(btnTouchEventCallback)
			
			--非定额100金币 tag 9
			local btnCharge100 = layerPay:getChildByName("recharge100")
			btnCharge100:addTouchEventListener(btnTouchEventCallback)
			
			--定额 tag 17
			local btnPay = layerPay:getChildByName("pay")
			btnPay:addTouchEventListener(btnTouchEventCallback)
			
			--非定额 tag 10
			local btnCharge = layerPay:getChildByName("recharge")
			btnCharge:addTouchEventListener(btnTouchEventCallback)
			
			--支付扩展 tag 22
			local btnPayExtend = layerPay:getChildByName("recharge_extend")
			btnPayExtend:addTouchEventListener(btnTouchEventCallback)
			
			--退出 tag 6
			local btnExit = layerPay:getChildByName("exit")
			btnExit:addTouchEventListener(btnTouchEventCallback)
			
			layerPay:setVisible(false)
			return layerPay
		end
		
		--SDK初始化回调
		local function sdkInitCallbackFunc(jPrama)
			require "json"
			local data = json.decode(jPrama);	
			local loginfo = layerLogin:getChildByName("loginfo")
			if data["tag"] == "success" then
				loginfo:setString("SDK初始化成功！")
			elseif data["tag"] == "fail" then
				loginfo:setString("SDK初始化失败！")
			end		
		end
		
	
	

	

    -- run
    local sceneGame = cc.Scene:create()
    --登陆界面
    sceneGame:addChild(createLayerLogin())
    --支付界面
    sceneGame:addChild(createLayerPay())
    --注册SDK初始化回调
    yijie:setSDKInitListener(sdkInitCallbackFunc)
    --注册登陆回调
    yijie:setLoginListener(loginCallback)
	
		--监听手机返回键
    local key_listener = cc.EventListenerKeyboard:create()
     
    --返回键回调
    local function key_return(keycode)
         print("exit")
        --结束游戏
		 print(keycode)
        if keycode == 6 then
            --return 
		 yijie:exit(exitCallback)--退出游戏
        end
        
    end
     
    --lua中得回调，分清谁绑定，监听谁，事件类型是什么
    key_listener:registerScriptHandler(key_return,cc.Handler.EVENT_KEYBOARD_RELEASED)
    local eventDispatch = sceneGame:getEventDispatcher()
    eventDispatch:addEventListenerWithSceneGraphPriority(key_listener,sceneGame)
   	
	
	
	if cc.Director:getInstance():getRunningScene() then
		cc.Director:getInstance():replaceScene(sceneGame)
	else
		cc.Director:getInstance():runWithScene(sceneGame)
	end
	
end


local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    error(msg)
end


