

var LoginLayer = cc.Layer.extend({
    sprite: null,
    mainwidget : null,
    xmlHttpRequest:null,
    gameNativeInterface: null,

    ctor: function () {
        this._super();
        cc.log("LoginLayer init!");
        this.init();
        return true;
    },


    //重点关注
    init: function () {
        var self = this;

        cc.log("LoginLayer init1!");
        //实例化易接SDK
        self.gameNativeInterface = new SFGameNativeInterface();

		cc.eventManager.addListener({ 
            event: cc.EventListener.KEYBOARD, 
            onKeyReleased: function(keyCode, event) { 
                if (keyCode == cc.KEY.back) {    //beta版本这里的back的keycode有误，也可以自行改为6 
                    cc.log("return button clicked. keycode:" + keyCode); 
                    self.yjUserExit();
                } 
                else if (keyCode == cc.KEY.menu) {    //beta版本这里的menu的keycode有误，也可以自行改为15 
                    cc.log("menu button clicked. keycode:" + keyCode); 
                } 
            }}, this);
			
        cc.log("LoginLayer init2!");
        var size = cc.winSize;
        cc.log("LoginLayer init3!");
        self.switchLoginLayer();
        cc.log("LoginLayer init4!");
        self.tipinlogoui("LoginLayer init1!");
		//设置初始化回调
        //this.gameNativeInterface.setInitCallback(self.initListener, self);
    },

    //重点关注
    userPay: function () {
        var self = this;
        var price = self.mainwidget.getChildByName("price").getString();
        var name = self.mainwidget.getChildByName("name").getString();
        if (price == null || price == "")
            return;
        if (name == null || name == "")
            return;

        /*部分渠道SDK不支持定额支付接口，即：用户在支付界面时可以修改支付金额，所以游戏支付成功的标准一定以服务支付回调回来的金额为准*/
        this.gameNativeInterface.setPayResultCallback(self.payListener, self);
        this.gameNativeInterface.pay(parseInt(price)/*道具价格单位分*/, name/*道具名称*/, 1 /*个数默认为1*/, "购买金币"/*此次支付透传参数*/,  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync"/*游戏接收支付回调地址*/);
    },

    //重点关注
    userPay100: function () {
        var self = this;

        /*部分渠道SDK不支持定额支付接口，即：用户在支付界面时可以修改支付金额，所以游戏支付成功的标准一定以服务支付回调回来的金额为准*/
        this.gameNativeInterface.setPayResultCallback(self.payListener, self);
        this.gameNativeInterface.pay(100/*道具价格单位分*/, "100金币"/*道具名称*/, 1 /*个数默认为1*/, "购买金币"/*此次支付透传参数*/,  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync"/*游戏接收支付回调地址*/);
        //注册扩展回调
        //this.gameNativeInterface.setExtendCallback(self.extendListener, self);
		//扩展接口
        //this.gameNativeInterface.extend("data",2);
    },

	//重点关注
    userPayExtend: function () {
        var self = this;
        var price = self.mainwidget.getChildByName("price").getString();
        var name = self.mainwidget.getChildByName("name").getString();
		var itemcode = self.mainwidget.getChildByName("itemcode").getString();
        var remain = self.mainwidget.getChildByName("remain").getString();
        //if (itemcode == null || itemcode == "")
            //return;
        /*支付扩展接口*/
        this.gameNativeInterface.setPayResultCallback(self.payListener, self);
        this.gameNativeInterface.payExtend(parseInt(price)/*道具价格单位分*/, name/*道具名称*/, itemcode/*商品编码*/,remain/*自定义*/,1 /*个数默认为1*/, "购买金币"/*此次支付透传参数*/,  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync"/*游戏接收支付回调地址*/);
    },
	
    //重点关注
    userCharge: function () {
        var self = this;
        var price = self.mainwidget.getChildByName("price").getString();
        var name = self.mainwidget.getChildByName("name").getString();
        if (price == null || price == "")
            return;
        if (name == null || name == "")
            return;

        /*非定额支付接口，即：用户在支付界面时可以修改支付金额，所以游戏支付成功的标准一定以服务支付回调回来的金额为准*/
        this.gameNativeInterface.setPayResultCallback(self.payListener, self);
        this.gameNativeInterface.charge(name/*道具名称*/, parseInt(price)/*价格单位分*/,1/*道具个数*/, "购买金币"/*此次支付透传参数*/,  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync"/*游戏接收支付回调地址*/);
    },

    //重点关注
    userCharge100: function () {
        var self = this;

        /*非定额支付接口，即：用户在支付界面时可以修改支付金额，所以游戏支付成功的标准一定以服务支付回调回来的金额为准*/
        this.gameNativeInterface.setPayResultCallback(self.payListener,self);
        this.gameNativeInterface.charge("100"/*道具名称*/, 100/*价格单位分*/,1/*道具个数*/, "购买金币"/*此次支付透传参数*/,  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/sync"/*游戏接收支付回调地址*/);
    },

    //重点关注
    login: function () {
        var self = this;

        //设置登陆回调
        self.gameNativeInterface.setLoginCallback(self.loginListener, self);
        cc.log("LoginLayer login!");
        //调用登陆接口
        self.gameNativeInterface.login("");
    },
	
	//重点关注
    logout: function () {
        var self = this;

        //设置登陆回调
        self.gameNativeInterface.setLoginCallback(self.loginListener, self);
        cc.log("LoginLayer logout!");
        //调用登陆接口
        self.gameNativeInterface.logout("");
    },

    //重点关注
    exitcallback: function (result, msg){
        var self = this;
        switch (result) {
            case YiJieExitResultCode.YJExitNoExiterProvide:
                //渠道SDK没有提供渠道界面， 游戏客户端可以在此处设计退出界面，亦或者直接调用  
				cc.director.end();
				cc.log("YJExitNoExiterProvide!");
				self.gameNativeInterface.onDestroy();
                break;
            case YiJieExitResultCode.YJExitSDKExit:
                if (msg == true) {
                    //渠道SDK退出界面上，用户选择退出
                    cc.director.end();
					cc.log("YJExitSDKExit!");
					self.gameNativeInterface.onDestroy();
                } else {
                    //渠道SDK退出界面上，用户选择取消
                }
                break;
        }
    },

    //重点关注
    loginListener: function(result, user, remain){
        var self = this;
        if  (result == YiJieLoginResultCode.YJLoginSuccess) {
            /*收到登陆成功消息后，请求登陆校验，具体流程如下：
               1  游戏客户端请求游戏服务器
               2  游戏服务器请求易接服务器
            */
            var appid = user.getProductCode(); /*易接平台用来标示应用的ID 格式如： {XXXXXXXX-XXXXXXXX}*/
            var sdkid = user.getChannelId(); /*易接平台标示的渠道的ID 格式如： {XXXXXXXX-XXXXXXXX}*/
            var userid = user.getChannelUserId(); /*渠道的用户ID， 游戏开发者可以根据 sdkid & userid 标示唯一用户, 部分渠道sdk的userid中可能包含特殊字符，如& 数据传输时请加密处理*/
            var token = user.getToken(); /*会话标示 部分渠道sdk的token中可能包含特殊字符，如& 数据传输时请加密处理*/
            var param = "app=" + appid + "&sdk=" + sdkid + "&uin=" +encodeURIComponent(userid) + "&sess=" + encodeURIComponent(token);
            self.logincheck(param);
        } else if (result == YiJieLoginResultCode.YJLoginFail) {
            self.tipinlogoui("登陆失败");
        } else if (result == YiJieLoginResultCode.YJLoginOut) {
			self.switchLoginLayer();
			self.tipinlogoui("切换账号");
            self.login();/*收到切换账号信息，游戏需主动调用此接口 切换账号*/
        }
    },

    //重点关注
    payListener: function(result, msg) {
        var self = this;
        switch (result) {
            case YiJiePayResultCode.YJPaySuccess:
                break;
            case YiJiePayResultCode.YJPayFail:
                break;
            case YiJiePayResultCode.YJPayOderNo:
                break;
        }
    },
    
     //重点关注  扩展类回调
    //extendListener: function(result,r,msg) {
       // var self = this;
		//switch (result) {
        //    case 1:
         //       break;
        //    case 2:
         //       break;
       // }
  //  },
   
   //重点关注  初始化回调
   //initListener: function(result,msg) {
   //    var self = this;
    //   self.tipinlogoui(result);
    //},

    //重点关注
    logincheck: function(param){
        var self = this;
        /*CP服务器地址:用作登录验证.因为有些渠道要求必须做登录验证，为了统一处理，所以只有登录验证成功之后才算真正的登陆成功
         * 登陆验证是由CP服务器实现的，供游戏客户端调用验证用户登录状态的接口。 游戏客户端和游戏服务器之间的登陆验证接口由CP自己定义
         */
        var xhr = cc.loader.getXMLHttpRequest();
		//自建测服
		//var cplogincheckurl =  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginZijian?" + param;
		//自建正服
		//var cplogincheckurl =  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginZijianP?" + param;
		//正服
		var cplogincheckurl =  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLoginP?" + param;
	    //测服
        //var cplogincheckurl =  "http://testomsdk.xiaobalei.com:5555/cp/user/paylog/checkLogin?" + param;
        xhr.open("GET", cplogincheckurl);
        xhr.setRequestHeader("Content-Type","text/xml");
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && (xhr.status >= 200 && xhr.status <= 207)) {
                var httpStatus = xhr.statusText;
                var response = xhr.responseText;
                self.tipinlogoui(response);
                if (response == "SUCCESS") {
                	self.tipinlogoui("登陆成功");
                    self.setRoleData();
					self.switchgamemainLayer();
                } else {
                    self.tipinlogoui("登陆校验失败" +response);
                }
            } else {
                self.tipinlogoui("连接登陆校验服务器异常");
            }
        };
        xhr.send();
    },

   //重点关注
   setRoleData: function() {
     this.gameNativeInterface.setRoleData("1"/*角色唯一标识*/, "法师"/*角色名*/,"30"/*角色等级*/,"1"/*区域唯一标识*/,"一区"/**/);
   },
   //重点关注
   setData: function() {
     this.gameNativeInterface.setData("user","data");
   },

    switchgamemainLayer: function() {
        var self = this;
        self.removeAllChildren();
        self.mainwidget = ccs.uiReader.widgetFromJsonFile(res.main_json);
        self.addChild(self.mainwidget, 100);

        var exit = self.mainwidget.getChildByName("exit");
        exit.addTouchEventListener(self.touchEventMain, self);

        var logout = self.mainwidget.getChildByName("logout");
        logout.addTouchEventListener(self.touchEventMain, self);

        var pay = self.mainwidget.getChildByName("pay");
        pay.addTouchEventListener(self.touchEventMain, self);

        var pay100 = self.mainwidget.getChildByName("pay100");
        pay100.addTouchEventListener(self.touchEventMain, self);

        var recharge = self.mainwidget.getChildByName("recharge");
        recharge.addTouchEventListener(self.touchEventMain, self);

        var recharge100 = self.mainwidget.getChildByName("recharge100");
        recharge100.addTouchEventListener(self.touchEventMain, self);
		
		var recharge_extend = self.mainwidget.getChildByName("recharge_extend");
        recharge_extend.addTouchEventListener(self.touchEventMain, self);
    },

    switchLoginLayer: function() {
        var self = this;
        self.removeAllChildren();
        self.mainwidget = ccs.uiReader.widgetFromJsonFile(res.res1_json);
        this.addChild(self.mainwidget, 100);

        var exit = self.mainwidget.getChildByName("exit");
        exit.addTouchEventListener(self.touchEvent, self);

        var login = self.mainwidget.getChildByName("login");
        login.addTouchEventListener(self.touchEvent, self);
        self.tipinlogoui("");
    },

    yjUserExit:function() {
        var self = this;
        self.gameNativeInterface.setExitCallback(self.exitcallback, self);
        self.gameNativeInterface.exit();
    },

    onLoginSuccess: function() {
        var self = this;
        self.switchgamemainLayer();
    },

    tipinlogoui: function(msg) {
        var self = this;
        var loginfo = self.mainwidget.getChildByName("loginfo");
        loginfo.setText(msg);
    }

    ,

    touchEventMain: function (sender, type) {
        var self = this;
        switch (type) {
            case ccui.Widget.TOUCH_BEGAN:
                break;
            case ccui.Widget.TOUCH_MOVED:
                break;
            case ccui.Widget.TOUCH_ENDED:
                var name = sender.getName();
                if (name == "exit"){
                    self.yjUserExit();
                } else if (name == "logout") {
                    self.logout();
                } else if (name == "pay") {
                    self.userPay();
                } else if (name == "pay100") {
                    self.userPay100();
                } else if (name == "recharge100") {
                    self.userCharge100();
                } else if (name == "recharge") {
                    self.userCharge();
                }else if (name == "recharge_extend") {
                    self.userPayExtend();
                }
                break;
            case ccui.Widget.TOUCH_CANCELED:
                break;
            default:
                break;
        }
    },

    touchEvent: function (sender, type) {
        switch (type) {
            case ccui.Widget.TOUCH_BEGAN:
                break;
            case ccui.Widget.TOUCH_MOVED:
                break;
            case ccui.Widget.TOUCH_ENDED:
                var name = sender.getName();
                if (name == "login") {
                    this.login();
                } else if (name == "exit"){
                    this.yjUserExit();
                }
                break;
            case ccui.Widget.TOUCH_CANCELED:
                break;
            default:
                break;
        }
    }
});

var HelloWorldScene = cc.Scene.extend({
    onEnter:function () {
        this._super();
        cc.log("LoginLayer onEnter!");
        var layer = new LoginLayer();
       this.addChild(layer);
    }
});

