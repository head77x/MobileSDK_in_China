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

bglayer = nil
--支付回调
function payCallback(jPrama)
	require "json"
	local data = json.decode(jPrama);
	print("yj payCallback ", jPrama)
	if data["result"] == "success" then--支付成功
		local payInfo = bglayer:getChildByName("payInfo")
		payInfo:setString("支付成功")
	elseif data["result"] == "fail" then--支付失败
		local payInfo = bglayer:getChildByName("payInfo")
		payInfo:setString("支付失败")
	elseif data["result"] == "cancel" then--支付取消
		local payInfo = bglayer:getChildByName("payInfo")
		payInfo:setString("支付取消")
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
		local payInfo = bglayer:getChildByName("payInfo")
		payInfo:setString("用户取消退出，继续游戏")
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
			local payInfo = bglayer:getChildByName("payInfo")
			payInfo:setString(prama)
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
		            if bglayer ~= nil then
			            if tag == 8 then--退出响应
			            	yijie:onExit(exitCallback)--退出游戏
			            elseif tag == 9 then--计费点0
			            	print("计费点9")
			            	yijie:pay("0", payCallback)--登出			            	
			            elseif tag == 10 then--计费点1
			            	print("计费点1")
			            	yijie:pay("1", payCallback)
		            	elseif tag == 11 then--计费点2
		            		print("计费点2")
		            		yijie:pay("2", payCallback)
		            	elseif tag == 12 then--音乐
		            		print("isMusicEnable")
		            		local musicEnable = yijie:isMusicEnable()
		            		print("音乐:", musicEnable)
		            		if musicEnable then
		            			setPayInfo("音乐:开")
		            		else 
		            			setPayInfo("音乐:关")
		            		end
			            end
		            end
		        elseif eventType == ccui.TouchEventType.canceled then
		            print("TouchEventType.canceled")
		        end
		end
		
		-- create login
		local function createLayerGame()
			local layerGame = ccs.GUIReader:getInstance():widgetFromJsonFile("offlineDemo_1.json")
			bglayer = layerGame:getChildByName("bg")
			--登陆按钮 tag 9
			local btnPay0 = bglayer:getChildByName("pay0")
			btnPay0:addTouchEventListener(btnTouchEventCallback)
			
			--登陆按钮 tag 10
			local btnPay1 = bglayer:getChildByName("pay1")
			btnPay1:addTouchEventListener(btnTouchEventCallback)
			
			--登陆按钮 tag 11
			local btnPay2 = bglayer:getChildByName("pay2")
			btnPay2:addTouchEventListener(btnTouchEventCallback)
			
			--登陆按钮 tag 12
			local btnMusic = bglayer:getChildByName("music")
			btnMusic:addTouchEventListener(btnTouchEventCallback)
			
			--退出按钮 tag 8
			local btnExit = bglayer:getChildByName("exit")
			btnExit:addTouchEventListener(btnTouchEventCallback)
			
			local payInfo = bglayer:getChildByName("payInfo")
			payInfo:setString("")
			return layerGame
		end
    -- run
    local sceneGame = cc.Scene:create()
    --登陆界面
    sceneGame:addChild(createLayerGame())
    
    local function initCallback(jPrama)
    		require "json"
				local data = json.decode(jPrama);
    
	    	if data["tag"] == "success" then --初始化成功
	      	setPayInfo("初始化成功!!")	
				elseif data["tag"] == "fail" then --初始化失败
					setPayInfo("初始化失败:"..data["value"])	
				end    			
    end
	
		yijie:onInit(initCallback)
		
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
