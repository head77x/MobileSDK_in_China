#include "yijie.hpp"
#include "cocos2d_specifics.hpp"
#include "SFGameNativeInterface.hpp"
#include "SFNativeOnlineLoginListener.hpp"
#include "SFNativeOnlinePayResultListener.hpp"
#include "SFNativeOnlineUser.hpp"
#include "SFNativeOnlineExitListener.hpp"
enum  {
	YJLoginSuccess = 0,
	YJLoginFail,
	YJLoginOut
} LoginResult;

enum  {
	YJPaySuccess = 0,
	YJPayFail,
	YJPayOderNo
} PayResult;

enum  {
	YJExitNoExiterProvide = 0,
	YJExitSDKExit
} OnlineExitResult;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlineExitListenerImpl : public SFNativeOnlineExitListener
{
public:
	SFNativeOnlineExitListenerImpl() :
			m_bNeedUnroot(JS_FALSE), _jsCallback(JSVAL_VOID), _jsThisObj(
					JSVAL_VOID) {
	}

	~SFNativeOnlineExitListenerImpl() {

	}

	virtual void onNoExiterProvide() {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj =
				JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);
		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[1];
			valArr[0] = INT_TO_JSVAL(YJExitNoExiterProvide);
			JS_AddValueRoot(cx, valArr);
			JS_CallFunctionValue(cx,
					thisObj, _jsCallback, 1, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}

	virtual void onSDKExit(JSBool result) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj =
				JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);
		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(YJExitSDKExit);
			valArr[1] = BOOLEAN_TO_JSVAL(result);
			JS_AddValueRoot(cx, valArr);
			JS_CallFunctionValue(cx,
					thisObj, _jsCallback, 2, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}

	void setJSCallbackThis(jsval jsThisObj) {
		_jsThisObj = jsThisObj;

		JSObject *thisObj = JSVAL_TO_OBJECT(jsThisObj);
		js_proxy *p = jsb_get_js_proxy(thisObj);
		if (!p) {
			JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
			m_bNeedUnroot = JS_TRUE;
			m_bNeedUnroot &= JS_AddValueRoot(cx, &jsThisObj);
		}
	}

	void setJSCallbackFunc(jsval func) {
		_jsCallback = func;
		JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
		// Root the callback function.
		JS_AddNamedValueRoot(cx, &_jsCallback,"JSCallbackWrapper_callback_func");
	}
	static SFNativeOnlineExitListenerImpl* __exitlistenerinstance;
	static SFNativeOnlineExitListenerImpl* getInstance() {
		if (__exitlistenerinstance == NULL) {
			__exitlistenerinstance = new SFNativeOnlineExitListenerImpl();
		}
		return __exitlistenerinstance;
	}
	static void purge() {
		if (__exitlistenerinstance) {
			delete __exitlistenerinstance;
			__exitlistenerinstance = NULL;
		}
	}
private:
	jsval _jsCallback;
	jsval _jsThisObj;
	JSBool m_bNeedUnroot;
};

SFNativeOnlineExitListenerImpl* SFNativeOnlineExitListenerImpl::__exitlistenerinstance = NULL;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlinePayResultListenerImpl: public SFNativeOnlinePayResultListener {
public:
	SFNativeOnlinePayResultListenerImpl() :
			m_bNeedUnroot(JS_FALSE), _jsCallback(JSVAL_VOID), _jsThisObj(
					JSVAL_VOID) {
	}
	~SFNativeOnlinePayResultListenerImpl() {
	}

	virtual void onFailed(const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj = JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);
		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(1);
			valArr[1] = std_string_to_jsval(cx, remain);
			JS_AddValueRoot(cx, valArr);
			JS_CallFunctionValue(cx,
					thisObj, _jsCallback, 2, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}

	virtual void onSuccess(const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj =
				JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);
		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(0);
			valArr[1] = std_string_to_jsval(cx, remain);
			JS_AddValueRoot(cx, valArr);
			JS_CallFunctionValue(cx,
					thisObj, _jsCallback, 2, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}

	virtual void onOderNo(const char* orderNo) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj =
				JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);
		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(2);
			valArr[1] = std_string_to_jsval(cx, orderNo);
			JS_AddValueRoot(cx, valArr);
			JS_CallFunctionValue(cx,
					thisObj, _jsCallback, 2, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}

	void setJSCallbackThis(jsval jsThisObj) {
		_jsThisObj = jsThisObj;

		JSObject *thisObj = JSVAL_TO_OBJECT(jsThisObj);
		js_proxy *p = jsb_get_js_proxy(thisObj);
		if (!p) {
			JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
			m_bNeedUnroot = JS_TRUE;
			m_bNeedUnroot &= JS_AddValueRoot(cx, &jsThisObj);
		}
	}

	void setJSCallbackFunc(jsval func) {
		_jsCallback = func;
		JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
		// Root the callback function.
		JS_AddNamedValueRoot(cx, &_jsCallback,"JSCallbackWrapper_callback_func");
	}

	static SFNativeOnlinePayResultListenerImpl* _payinstance;
	static SFNativeOnlinePayResultListenerImpl* getInstance() {
		if (_payinstance == NULL) {
			_payinstance = new SFNativeOnlinePayResultListenerImpl();
		}
		return _payinstance;
	}
	static void purge() {
		if (_payinstance) {
			delete _payinstance;
			_payinstance = NULL;
		}
	}
private:
	jsval _jsCallback;
	jsval _jsThisObj;
	JSBool m_bNeedUnroot;
};

SFNativeOnlinePayResultListenerImpl* SFNativeOnlinePayResultListenerImpl::_payinstance = NULL;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlineLoginListenerImpl : public SFNativeOnlineLoginListener
{
public:
	SFNativeOnlineLoginListenerImpl():m_bNeedUnroot(JS_FALSE), _jsCallback(JSVAL_VOID), _jsThisObj(JSVAL_VOID)
    {
    }
    ~SFNativeOnlineLoginListenerImpl()
    {
    }

	virtual void onLogout(const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj =
				JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);

		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(YJLoginOut);
			valArr[1] = std_string_to_jsval(cx, remain);
			JS_AddValueRoot(cx, valArr);
			
			JS_CallFunctionValue(cx, thisObj, _jsCallback, 2, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}


    virtual void onLoginSuccess(SFNativeOnlineUser* user, const char* remain)
    {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS_ReportError(cx, "onLoginSuccess  _jsCallbackSFNativeOnlineUser");
		JSObject *thisObj = JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);

		if (thisObj == NULL) {
		}

		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[3];
			js_proxy_t *proxy = js_get_or_create_proxy(cx, user);
			valArr[0] = INT_TO_JSVAL(YJLoginSuccess);
			valArr[1] = OBJECT_TO_JSVAL(proxy->obj);
			valArr[2] = std_string_to_jsval(cx, remain);

			JS_AddValueRoot(cx, valArr);
			
			JS_CallFunctionValue(cx, thisObj, _jsCallback, 3, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		} else {
			 JS_ReportError(cx, "onLoginSuccess  _jsCallback != JSVAL_VOID ");
		}
	}

    virtual void onLoginFailed(const char* r, const char* remain)
    {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JSObject *thisObj =
				JSVAL_IS_VOID(_jsThisObj) ? NULL : JSVAL_TO_OBJECT(_jsThisObj);

		jsval retval;
		if (_jsCallback != JSVAL_VOID) {
			jsval valArr[3];
			valArr[0] = INT_TO_JSVAL(YJLoginFail);;
			valArr[1] = std_string_to_jsval(cx, r);
			valArr[2] = std_string_to_jsval(cx, remain);
			JS_AddValueRoot(cx, valArr);
			JS_CallFunctionValue(cx,
					thisObj, _jsCallback, 3, valArr, &retval);
			JS_RemoveValueRoot(cx, valArr);
		}
	}

    void setJSCallbackThis(jsval jsThisObj)
    {
        _jsThisObj = jsThisObj;

        JSObject *thisObj = JSVAL_TO_OBJECT(jsThisObj);
	    js_proxy *p = jsb_get_js_proxy(thisObj);
	    if (!p)
	    {
	        JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
	        m_bNeedUnroot = JS_TRUE;
	        m_bNeedUnroot &= JS_AddValueRoot(cx, &jsThisObj);
	    }
    }
    void setJSCallbackFunc(jsval func) {
    	_jsCallback = func;
    	JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
		// Root the callback function.
    	JS_AddNamedValueRoot(cx, &_jsCallback, "JSCallbackWrapper_callback_func");
	}

    static SFNativeOnlineLoginListenerImpl* _instance;
    static SFNativeOnlineLoginListenerImpl* getInstance(){
        if (_instance == NULL){
            _instance = new SFNativeOnlineLoginListenerImpl();
        }
        return _instance;
    }
    static void purge(){
        if (_instance)
        {
            delete _instance;
            _instance = NULL;
        }
    }
private:
    jsval _jsCallback;
    jsval _jsThisObj;
    JSBool m_bNeedUnroot;
};
SFNativeOnlineLoginListenerImpl* SFNativeOnlineLoginListenerImpl::_instance = NULL;
//SFNativeOnlineLoginListenerImpl  end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template<class T>
static JSBool dummy_constructor(JSContext *cx, uint32_t argc, jsval *vp) {
	TypeTest<T> t;
	T* cobj = new T();
	cocos2d::CCObject *_ccobj = dynamic_cast<cocos2d::CCObject *>(cobj);
	if (_ccobj) {
		_ccobj->autorelease();
	}
	js_type_class_t *p;
	uint32_t typeId = t.s_id();
	HASH_FIND_INT(_js_global_type_ht, &typeId, p);
	assert(p);
	JSObject *_tmp = JS_NewObject(cx, p->jsclass, p->proto, p->parentProto);
	js_proxy_t *pp = jsb_new_proxy(cobj, _tmp);
	JS_AddObjectRoot(cx, &pp->obj);
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(_tmp));
	CCLog("222");
	return JS_TRUE;
}

static JSBool empty_constructor(JSContext *cx, uint32_t argc, jsval *vp) {
	return JS_TRUE;
}

static JSBool js_is_native_obj(JSContext *cx, JS::HandleObject obj, JS::HandleId id, JS::MutableHandleValue vp)
{
    vp.set(BOOLEAN_TO_JSVAL(JS_TRUE));
    return JS_TRUE;    
}
JSClass  *jsb_SFGameNativeInterface_class;
JSObject *jsb_SFGameNativeInterface_prototype;

JSBool js_yijie_SFGameNativeInterface_onResume(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_onResume : Invalid Native Object");
    if (argc == 0) {
        cobj->onResume();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onResume : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_setRoleData(JSContext *cx, uint32_t argc, jsval *vp)
{
    jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_setRoleData : Invalid Native Object");
    if (argc == 5) {
        const char* arg0;
        const char* arg1;
        const char* arg2;
        const char* arg3;
        const char* arg4;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, argv[0], &arg0_tmp); arg0 = arg0_tmp.c_str();
        std::string arg1_tmp; ok &= jsval_to_std_string(cx, argv[1], &arg1_tmp); arg1 = arg1_tmp.c_str();
        std::string arg2_tmp; ok &= jsval_to_std_string(cx, argv[2], &arg2_tmp); arg2 = arg2_tmp.c_str();
        std::string arg3_tmp; ok &= jsval_to_std_string(cx, argv[3], &arg3_tmp); arg3 = arg3_tmp.c_str();
        std::string arg4_tmp; ok &= jsval_to_std_string(cx, argv[4], &arg4_tmp); arg4 = arg4_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_setRoleData : Error processing arguments");
        cobj->setRoleData(arg0, arg1, arg2, arg3, arg4);
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setRoleData : wrong number of arguments: %d, was expecting %d", argc, 5);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_logout(JSContext *cx, uint32_t argc, jsval *vp)
{
    jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_logout : Invalid Native Object");
    if (argc == 1) {
        const char* arg0;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, argv[0], &arg0_tmp); arg0 = arg0_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_logout : Error processing arguments");
        cobj->logout(arg0);
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_logout : wrong number of arguments: %d, was expecting %d", argc, 1);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_setExitCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
	JSObject *obj = JS_THIS_OBJECT(cx, vp);
	js_proxy_t *proxy = jsb_get_js_proxy(obj);
	SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
	JSB_PRECONDITION2( cobj, cx, JS_FALSE, "Invalid Native Object");
	if (argc != 2)
	{
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setLoginCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
		return JS_FALSE;
	}
	jsval *argv = JS_ARGV(cx, vp);
	SFNativeOnlineExitListenerImpl* listener = SFNativeOnlineExitListenerImpl::getInstance();
	listener->setJSCallbackFunc( argv[0] );
	listener->setJSCallbackThis( argv[1] );
	cobj->setExitCallback(listener);
	return JS_TRUE;
}
JSBool js_yijie_SFGameNativeInterface_pay(JSContext *cx, uint32_t argc, jsval *vp)
{
    jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_pay : Invalid Native Object");
    if (argc == 5) {
        int arg0;
        const char* arg1;
        int arg2;
        const char* arg3;
        const char* arg4;
        ok &= jsval_to_int32(cx, argv[0], (int32_t *)&arg0);
        std::string arg1_tmp; ok &= jsval_to_std_string(cx, argv[1], &arg1_tmp); arg1 = arg1_tmp.c_str();
        ok &= jsval_to_int32(cx, argv[2], (int32_t *)&arg2);
        std::string arg3_tmp; ok &= jsval_to_std_string(cx, argv[3], &arg3_tmp); arg3 = arg3_tmp.c_str();
        std::string arg4_tmp; ok &= jsval_to_std_string(cx, argv[4], &arg4_tmp); arg4 = arg4_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_pay : Error processing arguments");
        cobj->pay(arg0, arg1, arg2, arg3, arg4);
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_pay : wrong number of arguments: %d, was expecting %d", argc, 5);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_charge(JSContext *cx, uint32_t argc, jsval *vp)
{
    jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_charge : Invalid Native Object");
    if (argc == 5) {
        const char* arg0;
        int arg1;
        int arg2;
        const char* arg3;
        const char* arg4;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, argv[0], &arg0_tmp); arg0 = arg0_tmp.c_str();
        ok &= jsval_to_int32(cx, argv[1], (int32_t *)&arg1);
        ok &= jsval_to_int32(cx, argv[2], (int32_t *)&arg2);
        std::string arg3_tmp; ok &= jsval_to_std_string(cx, argv[3], &arg3_tmp); arg3 = arg3_tmp.c_str();
        std::string arg4_tmp; ok &= jsval_to_std_string(cx, argv[4], &arg4_tmp); arg4 = arg4_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_charge : Error processing arguments");
        cobj->charge(arg0, arg1, arg2, arg3, arg4);
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_charge : wrong number of arguments: %d, was expecting %d", argc, 5);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_onDestroy(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_onDestroy : Invalid Native Object");
    if (argc == 0) {
        cobj->onDestroy();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onDestroy : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_exit(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_exit : Invalid Native Object");
    if (argc == 0) {
        cobj->exit();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_exit : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}

JSBool js_yijie_SFGameNativeInterface_setPayResultCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
	JSObject *obj = JS_THIS_OBJECT(cx, vp);
	js_proxy_t *proxy = jsb_get_js_proxy(obj);
	SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
	JSB_PRECONDITION2( cobj, cx, JS_FALSE, "Invalid Native Object");
	if (argc != 2)
	{
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setLoginCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
		return JS_FALSE;
	}
	jsval *argv = JS_ARGV(cx, vp);
	SFNativeOnlinePayResultListenerImpl* listener = SFNativeOnlinePayResultListenerImpl::getInstance();
	listener->setJSCallbackFunc( argv[0] );
	listener->setJSCallbackThis( argv[1] );
	cobj->setPayResultCallback(listener);
	return JS_TRUE;
}

JSBool js_yijie_SFGameNativeInterface_onStop(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_onStop : Invalid Native Object");
    if (argc == 0) {
        cobj->onStop();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onStop : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}

JSBool js_yijie_SFGameNativeInterface_onPause(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_onPause : Invalid Native Object");
    if (argc == 0) {
        cobj->onPause();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onPause : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}

JSBool js_yijie_SFGameNativeInterface_setLoginCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "Invalid Native Object");
    if (argc != 2)
    {
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setLoginCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
    	return JS_FALSE;
    }

	jsval *argv = JS_ARGV(cx, vp);
	SFNativeOnlineLoginListenerImpl* listener = SFNativeOnlineLoginListenerImpl::getInstance();
    listener->setJSCallbackFunc( argv[0] );
    listener->setJSCallbackThis( argv[1] );
    cobj->setLoginCallback(listener);
	return JS_TRUE;
}


JSBool js_yijie_SFGameNativeInterface_onCreate(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_onCreate : Invalid Native Object");
    if (argc == 0) {
        cobj->onCreate();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onCreate : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_onRestart(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_onRestart : Invalid Native Object");
    if (argc == 0) {
        cobj->onRestart();
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onRestart : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_isMusicEnabled(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_isMusicEnabled : Invalid Native Object");
    if (argc == 0) {
        JSBool ret = cobj->isMusicEnabled();
        jsval jsret = JSVAL_NULL;
        jsret = BOOLEAN_TO_JSVAL(ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_isMusicEnabled : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_login(JSContext *cx, uint32_t argc, jsval *vp)
{
    jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_login : Invalid Native Object");
    if (argc == 1) {
        const char* arg0;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, argv[0], &arg0_tmp); arg0 = arg0_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, JS_FALSE, "js_yijie_SFGameNativeInterface_login : Error processing arguments");
        cobj->login(arg0);
        JS_SET_RVAL(cx, vp, JSVAL_VOID);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_login : wrong number of arguments: %d, was expecting %d", argc, 1);
    return JS_FALSE;
}
JSBool js_yijie_SFGameNativeInterface_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    SFGameNativeInterface* cobj = new (std::nothrow) SFGameNativeInterface();
		cocos2d::CCObject *_ccobj = dynamic_cast<cocos2d::CCObject *>(cobj);
		if (_ccobj) {
			_ccobj->autorelease();
		}
		TypeTest<SFGameNativeInterface> t;
		js_type_class_t *p;
		uint32_t typeId = t.s_id();
		HASH_FIND_INT(_js_global_type_ht, &typeId, p);
		assert(p);
		JSObject *_tmp = JS_NewObject(cx, p->jsclass, p->proto, p->parentProto);
		js_proxy_t *pp = jsb_new_proxy(cobj, _tmp);
		JS_AddObjectRoot(cx, &pp->obj);
		JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(_tmp));

    // link the native object with the javascript object
    js_proxy_t* p_proxy = jsb_new_proxy(cobj, pp->obj);
    if (JS_HasProperty(cx, pp->obj, "_ctor", &ok) && ok)
        ScriptingCore::getInstance()->executeFunctionWithOwner(OBJECT_TO_JSVAL(pp->obj), "_ctor", argc, argv);
    return JS_TRUE;
}

void js_SFGameNativeInterface_finalize(JSFreeOp *fop, JSObject *obj) {
    CCLOGINFO("jsbindings: finalizing JS object %p (SFGameNativeInterface)", obj);
    js_proxy_t* nproxy;
    js_proxy_t* jsproxy;
    jsproxy = jsb_get_js_proxy(obj);
    if (jsproxy) {
        nproxy = jsb_get_native_proxy(jsproxy->ptr);

        SFGameNativeInterface *nobj = static_cast<SFGameNativeInterface *>(nproxy->ptr);
        if (nobj)
            delete nobj;
        
        jsb_remove_proxy(nproxy, jsproxy);
    }
}

void js_register_yijie_SFGameNativeInterface(JSContext *cx, JSObject *global) {
    jsb_SFGameNativeInterface_class = (JSClass *)calloc(1, sizeof(JSClass));
    jsb_SFGameNativeInterface_class->name = "SFGameNativeInterface";
    jsb_SFGameNativeInterface_class->addProperty = JS_PropertyStub;
    jsb_SFGameNativeInterface_class->delProperty = JS_PropertyStub;
    jsb_SFGameNativeInterface_class->getProperty = JS_PropertyStub;
    jsb_SFGameNativeInterface_class->setProperty = JS_StrictPropertyStub;
    jsb_SFGameNativeInterface_class->enumerate = JS_EnumerateStub;
    jsb_SFGameNativeInterface_class->resolve = JS_ResolveStub;
    jsb_SFGameNativeInterface_class->convert = JS_ConvertStub;
    jsb_SFGameNativeInterface_class->finalize = js_SFGameNativeInterface_finalize;
    jsb_SFGameNativeInterface_class->flags = JSCLASS_HAS_RESERVED_SLOTS(2);

    static JSPropertySpec properties[] = {
        {"__nativeObj", 0, JSPROP_ENUMERATE | JSPROP_PERMANENT, JSOP_WRAPPER(js_is_native_obj), JSOP_NULLWRAPPER},
        {0, 0, 0, JSOP_NULLWRAPPER, JSOP_NULLWRAPPER}
    };

    static JSFunctionSpec funcs[] = {
        JS_FN("onResume", js_yijie_SFGameNativeInterface_onResume, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setRoleData", js_yijie_SFGameNativeInterface_setRoleData, 5, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("logout", js_yijie_SFGameNativeInterface_logout, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setExitCallback", js_yijie_SFGameNativeInterface_setExitCallback, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("pay", js_yijie_SFGameNativeInterface_pay, 5, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("charge", js_yijie_SFGameNativeInterface_charge, 5, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("onDestroy", js_yijie_SFGameNativeInterface_onDestroy, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("exit", js_yijie_SFGameNativeInterface_exit, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setPayResultCallback", js_yijie_SFGameNativeInterface_setPayResultCallback, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("onStop", js_yijie_SFGameNativeInterface_onStop, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("onPause", js_yijie_SFGameNativeInterface_onPause, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setLoginCallback", js_yijie_SFGameNativeInterface_setLoginCallback, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("onCreate", js_yijie_SFGameNativeInterface_onCreate, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("onRestart", js_yijie_SFGameNativeInterface_onRestart, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("isMusicEnabled", js_yijie_SFGameNativeInterface_isMusicEnabled, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("login", js_yijie_SFGameNativeInterface_login, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FS_END
    };

    JSFunctionSpec *st_funcs = NULL;

    jsb_SFGameNativeInterface_prototype = JS_InitClass(
        cx, global,
        NULL, // parent proto
        jsb_SFGameNativeInterface_class,
        js_yijie_SFGameNativeInterface_constructor, 0, // constructor
        properties,
        funcs,
        NULL, // no static properties
        st_funcs);
    // make the class enumerable in the registered namespace
//  JSBool found;
//FIXME: Removed in Firefox v27 
//  JS_SetPropertyAttributes(cx, global, "SFGameNativeInterface", JSPROP_ENUMERATE | JSPROP_READONLY, &found);

    // add the proto and JSClass to the type->js info hash table
    TypeTest<SFGameNativeInterface> t;
    js_type_class_t *p;
    uint32_t typeId = t.s_id();
	  HASH_FIND_INT(_js_global_type_ht, &typeId, p);
    if (!p) {
			p = (js_type_class_t *)malloc(sizeof(js_type_class_t));
			p->type = typeId;
			p->jsclass = jsb_SFGameNativeInterface_class;
			p->proto = jsb_SFGameNativeInterface_prototype;
			p->parentProto = jsb_SFGameNativeInterface_prototype;
			HASH_ADD_INT(_js_global_type_ht, type, p);
	}
    
    	

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//SFNativeOnlineUser

JSClass  *jsb_SFNativeOnlineUser_class;
JSObject *jsb_SFNativeOnlineUser_prototype;

JSBool js_yijie_SFNativeOnlineUser_getToken(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFNativeOnlineUser_getToken : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getToken();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getToken : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFNativeOnlineUser_getId(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFNativeOnlineUser_getId : Invalid Native Object");
    if (argc == 0) {
        long long ret = cobj->getId();
        jsval jsret = JSVAL_NULL;
        jsret = long_long_to_jsval(cx, ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getId : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFNativeOnlineUser_getProductCode(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFNativeOnlineUser_getProductCode : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getProductCode();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getProductCode : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFNativeOnlineUser_getChannelId(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFNativeOnlineUser_getChannelId : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getChannelId();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getChannelId : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFNativeOnlineUser_getChannelUserId(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFNativeOnlineUser_getChannelUserId : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getChannelUserId();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getChannelUserId : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFNativeOnlineUser_getUserName(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *obj = JS_THIS_OBJECT(cx, vp);
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, JS_FALSE, "js_yijie_SFNativeOnlineUser_getUserName : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getUserName();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        JS_SET_RVAL(cx, vp, jsret);
        return JS_TRUE;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getUserName : wrong number of arguments: %d, was expecting %d", argc, 0);
    return JS_FALSE;
}
JSBool js_yijie_SFNativeOnlineUser_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
        	
        	jsval *argv = JS_ARGV(cx, vp);
    JSBool ok = JS_TRUE;
    SFNativeOnlineUser* cobj = new (std::nothrow) SFNativeOnlineUser();
		cocos2d::CCObject *_ccobj = dynamic_cast<cocos2d::CCObject *>(cobj);
		if (_ccobj) {
			_ccobj->autorelease();
		}
		TypeTest<SFNativeOnlineUser> t;
		js_type_class_t *p;
		uint32_t typeId = t.s_id();
		HASH_FIND_INT(_js_global_type_ht, &typeId, p);
		assert(p);
		JSObject *_tmp = JS_NewObject(cx, p->jsclass, p->proto, p->parentProto);
		js_proxy_t *pp = jsb_new_proxy(cobj, _tmp);
		JS_AddObjectRoot(cx, &pp->obj);
		JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(_tmp));

    // link the native object with the javascript object
    js_proxy_t* p_proxy = jsb_new_proxy(cobj, pp->obj);
    if (JS_HasProperty(cx, pp->obj, "_ctor", &ok) && ok)
        ScriptingCore::getInstance()->executeFunctionWithOwner(OBJECT_TO_JSVAL(pp->obj), "_ctor", argc, argv);
    return JS_TRUE;
}



void js_SFNativeOnlineUser_finalize(JSFreeOp *fop, JSObject *obj) {
    CCLOGINFO("jsbindings: finalizing JS object %p (SFNativeOnlineUser)", obj);
    js_proxy_t* nproxy;
    js_proxy_t* jsproxy;
    jsproxy = jsb_get_js_proxy(obj);
    if (jsproxy) {
        nproxy = jsb_get_native_proxy(jsproxy->ptr);

        SFNativeOnlineUser *nobj = static_cast<SFNativeOnlineUser *>(nproxy->ptr);
        if (nobj)
            delete nobj;

        jsb_remove_proxy(nproxy, jsproxy);
    }
}

void js_register_yijie_SFNativeOnlineUser(JSContext *cx, JSObject *global) {
    jsb_SFNativeOnlineUser_class = (JSClass *)calloc(1, sizeof(JSClass));
    jsb_SFNativeOnlineUser_class->name = "SFNativeOnlineUser";
    jsb_SFNativeOnlineUser_class->addProperty = JS_PropertyStub;
    jsb_SFNativeOnlineUser_class->delProperty = JS_PropertyStub;
    jsb_SFNativeOnlineUser_class->getProperty = JS_PropertyStub;
    jsb_SFNativeOnlineUser_class->setProperty = JS_StrictPropertyStub;
    jsb_SFNativeOnlineUser_class->enumerate = JS_EnumerateStub;
    jsb_SFNativeOnlineUser_class->resolve = JS_ResolveStub;
    jsb_SFNativeOnlineUser_class->convert = JS_ConvertStub;
    jsb_SFNativeOnlineUser_class->finalize = js_SFNativeOnlineUser_finalize;
    jsb_SFNativeOnlineUser_class->flags = JSCLASS_HAS_RESERVED_SLOTS(2);

    static JSPropertySpec properties[] = {
        {"__nativeObj", 0, JSPROP_ENUMERATE | JSPROP_PERMANENT, JSOP_WRAPPER(js_is_native_obj), JSOP_NULLWRAPPER},
        {0, 0, 0, JSOP_NULLWRAPPER, JSOP_NULLWRAPPER}
    };

    static JSFunctionSpec funcs[] = {
        JS_FN("getToken", js_yijie_SFNativeOnlineUser_getToken, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("getId", js_yijie_SFNativeOnlineUser_getId, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("getProductCode", js_yijie_SFNativeOnlineUser_getProductCode, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("getChannelId", js_yijie_SFNativeOnlineUser_getChannelId, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("getChannelUserId", js_yijie_SFNativeOnlineUser_getChannelUserId, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("getUserName", js_yijie_SFNativeOnlineUser_getUserName, 0, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FS_END
    };

    JSFunctionSpec *st_funcs = NULL;

    jsb_SFNativeOnlineUser_prototype = JS_InitClass(
        cx, global,
        NULL, // parent proto
        jsb_SFNativeOnlineUser_class,
        js_yijie_SFNativeOnlineUser_constructor, 0, // constructor
        properties,
        funcs,
        NULL, // no static properties
        st_funcs);
    // make the class enumerable in the registered namespace
//  JSBool found;
//FIXME: Removed in Firefox v27
//  JS_SetPropertyAttributes(cx, global, "SFNativeOnlineUser", JSPROP_ENUMERATE | JSPROP_READONLY, &found);

    // add the proto and JSClass to the type->js info hash table
    TypeTest<SFNativeOnlineUser> t;
    js_type_class_t *p;
    uint32_t typeId = t.s_id();
	  HASH_FIND_INT(_js_global_type_ht, &typeId, p);
    if (!p) {
			p = (js_type_class_t *)malloc(sizeof(js_type_class_t));
			p->type = typeId;
			p->jsclass = jsb_SFNativeOnlineUser_class;
			p->proto = jsb_SFNativeOnlineUser_prototype;
			p->parentProto = jsb_SFNativeOnlineUser_prototype;
			HASH_ADD_INT(_js_global_type_ht, type, p);
	}
   
}

//SFNativeOnlineUser end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void register_all_yijie(JSContext* cx, JSObject* obj) {
	 js_register_yijie_SFNativeOnlineUser(cx, obj);
	 js_register_yijie_SFGameNativeInterface(cx, obj);
}

