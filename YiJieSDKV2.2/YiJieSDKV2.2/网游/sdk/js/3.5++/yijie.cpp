#include "yijie.hpp"
#include "cocos2d_specifics.hpp"
#include "SFGameNativeInterface.hpp"
#include "SFNativeOnlineLoginListener.hpp"
#include "SFNativeOnlinePayResultListener.hpp"
#include "SFNativeOnlineUser.hpp"
#include "SFNativeOnlineExitListener.hpp"
#include "SFNativeOnlineInitListener.hpp"
#include "SFNativeOnlineExtendListener.hpp"
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

class SFNativeOnlineInitListenerImpl : public SFNativeOnlineInitListener
{
public:
	SFNativeOnlineInitListenerImpl() {
   JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
    _jsCallback.construct(cx, JS::NullHandleValue);
    _jsThisObj.construct(cx, JS::NullHandleValue);
	}

	~SFNativeOnlineInitListenerImpl() {
	_jsCallback.destroyIfConstructed();
    _jsThisObj.destroyIfConstructed();
	}
	virtual void onResponse(const char*r,const char*remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[2];
			valArr[0] = std_string_to_jsval(cx, r);
			valArr[1] = std_string_to_jsval(cx, remain);
			JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(2, valArr);
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,	thisObj, jsvalCallback, args, &retval);
			
		}
		
	}

	void setJSCallbackThis(JS::HandleValue jsThisObj) {
		if (!jsThisObj.isNullOrUndefined())
        _jsThisObj.ref() = jsThisObj;
		
	}
	void setJSCallbackFunc(JS::HandleValue func) {
		
		 if (!func.isNullOrUndefined())
        _jsCallback.ref() = func;
		
	}
	static SFNativeOnlineInitListenerImpl* __initlistenerinstance;
	static SFNativeOnlineInitListenerImpl* getInstance() {
		if (__initlistenerinstance == NULL) {
			__initlistenerinstance = new SFNativeOnlineInitListenerImpl();
		}
		return __initlistenerinstance;
	}
	static void purge() {
		if (__initlistenerinstance) {
			delete __initlistenerinstance;
			__initlistenerinstance = NULL;
		}
	}
private:
    mozilla::Maybe<JS::PersistentRootedValue> _jsCallback;
    mozilla::Maybe<JS::PersistentRootedValue> _jsThisObj;
};

SFNativeOnlineInitListenerImpl* SFNativeOnlineInitListenerImpl::__initlistenerinstance = NULL;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlineExtendListenerImpl : public SFNativeOnlineExtendListener
{
public:
	SFNativeOnlineExtendListenerImpl() {
		 JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
    _jsCallback.construct(cx, JS::NullHandleValue);
    _jsThisObj.construct(cx, JS::NullHandleValue);
	}
	~SFNativeOnlineExtendListenerImpl() {
	_jsCallback.destroyIfConstructed();
    _jsThisObj.destroyIfConstructed();
	}

	virtual void onResponse(int index,const char* r,const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[3];
			valArr[0] = INT_TO_JSVAL(index);
			valArr[1] = std_string_to_jsval(cx, r);
			valArr[2] = std_string_to_jsval(cx, remain);
            JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(3, valArr);
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
				thisObj, jsvalCallback, args, &retval);
			
		}
	}
	void setJSCallbackThis(JS::HandleValue jsThisObj) {
		if (!jsThisObj.isNullOrUndefined())
        _jsThisObj.ref() = jsThisObj;
	}

	void setJSCallbackFunc(JS::HandleValue func) {
		 if (!func.isNullOrUndefined())
        _jsCallback.ref() = func;
	}
	static SFNativeOnlineExtendListenerImpl* __extendlistenerinstance;
	static SFNativeOnlineExtendListenerImpl* getInstance() {
		if (__extendlistenerinstance == NULL) {
			__extendlistenerinstance = new SFNativeOnlineExtendListenerImpl();
		}
		return __extendlistenerinstance;
	}
	static void purge() {
		if (__extendlistenerinstance) {
			delete __extendlistenerinstance;
			__extendlistenerinstance = NULL;
		}
	}
private:
    mozilla::Maybe<JS::PersistentRootedValue> _jsCallback;
    mozilla::Maybe<JS::PersistentRootedValue> _jsThisObj;
};

SFNativeOnlineExtendListenerImpl* SFNativeOnlineExtendListenerImpl::__extendlistenerinstance = NULL;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlineExitListenerImpl : public SFNativeOnlineExitListener
{
public:
	SFNativeOnlineExitListenerImpl(){
	JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
    _jsCallback.construct(cx, JS::NullHandleValue);
    _jsThisObj.construct(cx, JS::NullHandleValue);
	}

	~SFNativeOnlineExitListenerImpl() {
	 _jsCallback.destroyIfConstructed();
    _jsThisObj.destroyIfConstructed();
	}

	virtual void onNoExiterProvide() {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[1];
			valArr[0] = INT_TO_JSVAL(YJExitNoExiterProvide);
			JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(1, valArr);
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
					thisObj, jsvalCallback, args, &retval);
			
		}
	}

	virtual void onSDKExit(bool result) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(YJExitSDKExit);
			valArr[1] = BOOLEAN_TO_JSVAL(result);
           JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(2, valArr);			
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
					thisObj, jsvalCallback, args, &retval);
			
		}
	}

	void setJSCallbackThis(JS::HandleValue jsThisObj) {
		 if (!jsThisObj.isNullOrUndefined())
        _jsThisObj.ref() = jsThisObj;
	}

	void setJSCallbackFunc(JS::HandleValue func) {
		 if (!func.isNullOrUndefined())
        _jsCallback.ref() = func;
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
    mozilla::Maybe<JS::PersistentRootedValue> _jsCallback;
    mozilla::Maybe<JS::PersistentRootedValue> _jsThisObj;
};

SFNativeOnlineExitListenerImpl* SFNativeOnlineExitListenerImpl::__exitlistenerinstance = NULL;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlinePayResultListenerImpl: public SFNativeOnlinePayResultListener {
public:
	SFNativeOnlinePayResultListenerImpl() {
		 JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
    _jsCallback.construct(cx, JS::NullHandleValue);
    _jsThisObj.construct(cx, JS::NullHandleValue);
	}
	~SFNativeOnlinePayResultListenerImpl() {
	_jsCallback.destroyIfConstructed();
    _jsThisObj.destroyIfConstructed();
	}

	virtual void onFailed(const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(1);
			valArr[1] = std_string_to_jsval(cx, remain);
            JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(2, valArr);
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
					thisObj, jsvalCallback, args, &retval);
			
		}
	}

	virtual void onSuccess(const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(0);
			valArr[1] = std_string_to_jsval(cx, remain);
           JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(2, valArr);			
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
					thisObj, jsvalCallback, args, &retval);
			
		}
	}

	virtual void onOderNo(const char* orderNo) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
        JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
        JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(2);
			valArr[1] = std_string_to_jsval(cx, orderNo);
			JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(2, valArr);	
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
					thisObj, jsvalCallback, args, &retval);
		}
	}

	void setJSCallbackThis(JS::HandleValue jsThisObj) {
		 if (!jsThisObj.isNullOrUndefined())
        _jsThisObj.ref() = jsThisObj;
	}

	void setJSCallbackFunc(JS::HandleValue func) {
		 if (!func.isNullOrUndefined())
        _jsCallback.ref() = func;
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
   mozilla::Maybe<JS::PersistentRootedValue> _jsCallback;
    mozilla::Maybe<JS::PersistentRootedValue> _jsThisObj;
};

SFNativeOnlinePayResultListenerImpl* SFNativeOnlinePayResultListenerImpl::_payinstance = NULL;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
class SFNativeOnlineLoginListenerImpl : public SFNativeOnlineLoginListener
{
public:
	SFNativeOnlineLoginListenerImpl()
    {
		 JSContext* cx = ScriptingCore::getInstance()->getGlobalContext();
    _jsCallback.construct(cx, JS::NullHandleValue);
    _jsThisObj.construct(cx, JS::NullHandleValue);
    }
    ~SFNativeOnlineLoginListenerImpl()
    {
	_jsCallback.destroyIfConstructed();
    _jsThisObj.destroyIfConstructed();		
    }

	virtual void onLogout(const char* remain) {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
         JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
         JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[2];
			valArr[0] = INT_TO_JSVAL(YJLoginOut);
			valArr[1] = std_string_to_jsval(cx, remain);
            JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(2, valArr);			
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET
			JS_CallFunctionValue(cx, thisObj, jsvalCallback, args, &retval);
			
		}
	}


    virtual void onLoginSuccess(SFNativeOnlineUser* user, const char* remain)
    {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		 JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
         JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
         JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[3];
			js_proxy_t *proxy = js_get_or_create_proxy(cx, user);
			valArr[0] = INT_TO_JSVAL(YJLoginSuccess);
			valArr[1] = OBJECT_TO_JSVAL(proxy->obj);
			valArr[2] = std_string_to_jsval(cx, remain);
           JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(3, valArr);
			
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET
			JS_CallFunctionValue(cx, thisObj, jsvalCallback, args, &retval);
			
		} else {
			 JS_ReportError(cx, "onLoginSuccess  !_jsCallback.isNullOrUndefined() ");
		}
	}

    virtual void onLoginFailed(const char* r, const char* remain)
    {
		JSContext *cx = ScriptingCore::getInstance()->getGlobalContext();
		 JS::RootedValue jsvalThis(cx, _jsThisObj.ref().get());
         JS::RootedValue jsvalCallback(cx, _jsCallback.ref().get());
         JS::RootedObject thisObj(cx, jsvalThis.toObjectOrNull());
		JS::RootedValue retval(cx);
		if (!jsvalCallback.isNullOrUndefined()) {
			jsval valArr[3];
			valArr[0] = INT_TO_JSVAL(YJLoginFail);;
			valArr[1] = std_string_to_jsval(cx, r);
			valArr[2] = std_string_to_jsval(cx, remain);
           JS::HandleValueArray args = JS::HandleValueArray::fromMarkedLocation(3, valArr);			
			JSB_AUTOCOMPARTMENT_WITH_GLOBAL_OBJCET JS_CallFunctionValue(cx,
					thisObj, jsvalCallback, args, &retval);	
		}
	}

    void setJSCallbackThis(JS::HandleValue jsThisObj)
    {
        if (!jsThisObj.isNullOrUndefined())
        _jsThisObj.ref() = jsThisObj;
    }
    void setJSCallbackFunc(JS::HandleValue func) {
    	 if (!func.isNullOrUndefined()){
			    _jsCallback.ref() = func;
		 }
     
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
    mozilla::Maybe<JS::PersistentRootedValue> _jsCallback;
    mozilla::Maybe<JS::PersistentRootedValue> _jsThisObj;
};
SFNativeOnlineLoginListenerImpl* SFNativeOnlineLoginListenerImpl::_instance = NULL;
//SFNativeOnlineLoginListenerImpl  end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template<class T>
static bool dummy_constructor(JSContext *cx, uint32_t argc, jsval *vp) {
	JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    JS::RootedValue initializing(cx);
    bool isNewValid = true;
    JS::RootedObject global(cx, args.thisv().toObjectOrNull());
	isNewValid = JS_GetProperty(cx, global, "initializing", &initializing) && initializing.isBoolean();
	if (isNewValid)
	{
		TypeTest<T> t;
		js_type_class_t *typeClass = nullptr;
		std::string typeName = t.s_name();
		auto typeMapIter = _js_global_type_map.find(typeName);
		CCASSERT(typeMapIter != _js_global_type_map.end(), "Can't find the class type!");
		typeClass = typeMapIter->second;
		CCASSERT(typeClass, "The value is null.");
       JS::RootedObject proto(cx, const_cast<JSObject*>(typeClass->proto.get()));
       JS::RootedObject parent(cx, const_cast<JSObject*>(typeClass->parentProto.get()));
       JS::RootedObject _tmp(cx, JS_NewObject(cx, typeClass->jsclass, proto, parent));
		//JSObject *_tmp = JS_NewObject(cx, typeClass->jsclass, typeClass->proto, typeClass->parentProto);
		args.rval().set(OBJECT_TO_JSVAL(_tmp));
		return true;
	}

    JS_ReportError(cx, "Don't use `new cc.XXX`, please use `cc.XXX.create` instead! ");
    return false;
}
/*

template<class T>
static bool dummy_constructor(JSContext *cx, uint32_t argc, jsval *vp) {
    JS::RootedValue initializing(cx);
    bool isNewValid = true;
    if (isNewValid)
    {
        TypeTest<T> t;
        js_type_class_t *typeClass = nullptr;
        std::string typeName = t.s_name();
        auto typeMapIter = _js_global_type_map.find(typeName);
        CCASSERT(typeMapIter != _js_global_type_map.end(), "Can't find the class type!");
        typeClass = typeMapIter->second;
        CCASSERT(typeClass, "The value is null.");

        JSObject *_tmp = JS_NewObject(cx, typeClass->jsclass, typeClass->proto, typeClass->parentProto);
        T* cobj = new T();
        js_proxy_t *pp = jsb_new_proxy(cobj, _tmp);
        JS_AddObjectRoot(cx, &pp->obj);
        JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(_tmp));
        return true;
    }

    return false;
}
*/

static bool empty_constructor(JSContext *cx, uint32_t argc, jsval *vp) {
    return false;
}

static bool js_is_native_obj(JSContext *cx, uint32_t argc, jsval *vp)
{
    JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    args.rval().setBoolean(true);
    return true;    
}
JSClass  *jsb_SFGameNativeInterface_class;
JSObject *jsb_SFGameNativeInterface_prototype;

bool js_yijie_SFGameNativeInterface_onResume(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_onResume : Invalid Native Object");
    if (argc == 0) {
        cobj->onResume();
        //args.rval().setUndefined();
		args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onResume : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFGameNativeInterface_setRoleData(JSContext *cx, uint32_t argc, jsval *vp)
{
    JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	JSObject *obj = args.thisv().toObjectOrNull();
    bool ok = true;
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_setRoleData : Invalid Native Object");
    if (argc == 5) {
        const char* arg0;
        const char* arg1;
        const char* arg2;
        const char* arg3;
        const char* arg4;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, args.get(0), &arg0_tmp); arg0 = arg0_tmp.c_str();
        std::string arg1_tmp; ok &= jsval_to_std_string(cx, args.get(1), &arg1_tmp); arg1 = arg1_tmp.c_str();
        std::string arg2_tmp; ok &= jsval_to_std_string(cx, args.get(2), &arg2_tmp); arg2 = arg2_tmp.c_str();
        std::string arg3_tmp; ok &= jsval_to_std_string(cx, args.get(3), &arg3_tmp); arg3 = arg3_tmp.c_str();
        std::string arg4_tmp; ok &= jsval_to_std_string(cx, args.get(4), &arg4_tmp); arg4 = arg4_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_setRoleData : Error processing arguments");
        cobj->setRoleData(arg0, arg1, arg2, arg3, arg4);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setRoleData : wrong number of arguments: %d, was expecting %d", argc, 5);
    return false;
}
bool js_yijie_SFGameNativeInterface_setData(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	 JSObject *obj = args.thisv().toObjectOrNull();
    bool ok = true;
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_setData : Invalid Native Object");
    if (argc == 2) {
        const char* arg0;
        const char* arg1;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, args.get(0), &arg0_tmp); arg0 = arg0_tmp.c_str();
        std::string arg1_tmp; ok &= jsval_to_std_string(cx, args.get(1), &arg1_tmp); arg1 = arg1_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_setData : Error processing arguments");
        cobj->setData(arg0, arg1);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setData : wrong number of arguments: %d, was expecting %d", argc, 2);
    return false;
}

bool js_yijie_SFGameNativeInterface_extend(JSContext *cx, uint32_t argc, jsval *vp)
{
		
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
 JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_extend : Invalid Native Object");
    if (argc == 2) {
    	const char* arg0;
        int arg1;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, args.get(0), &arg0_tmp); arg0 = arg0_tmp.c_str();
        ok &= jsval_to_int32(cx, args.get(1), (int32_t *)&arg1);
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_extend : Error processing arguments");

        const char* ret = cobj->extend(arg0, arg1);
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx,ret);
        //JS_SET_RVAL(cx, vp, jsret);
		args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_extend : wrong number of arguments: %d, was expecting %d", argc, 2);
    return false;
}

bool js_yijie_SFGameNativeInterface_logout(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
     JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_logout : Invalid Native Object");
    if (argc == 1) {
        const char* arg0;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, args.get(0), &arg0_tmp); arg0 = arg0_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_logout : Error processing arguments");
        cobj->logout(arg0);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_logout : wrong number of arguments: %d, was expecting %d", argc, 1);
    return false;
}
bool js_yijie_SFGameNativeInterface_setExitCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
	  JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
	js_proxy_t *proxy = jsb_get_js_proxy(obj);
	SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
	JSB_PRECONDITION2( cobj, cx, false, "Invalid Native Object");
	if (argc != 2)
	{
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setLoginCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
		return false;
	}
	SFNativeOnlineExitListenerImpl* listener = SFNativeOnlineExitListenerImpl::getInstance();
	listener->setJSCallbackFunc( args.get(0) );
	listener->setJSCallbackThis( args.get(1) );
	cobj->setExitCallback(listener);
	return true;
}


bool js_yijie_SFGameNativeInterface_setExtendCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
	JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    JSObject *obj = args.thisv().toObjectOrNull();
	js_proxy_t *proxy = jsb_get_js_proxy(obj);
	SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
	JSB_PRECONDITION2( cobj, cx, false, "Invalid Native Object");
	if (argc != 2)
	{
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setExtendCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
		return false;
	}
	SFNativeOnlineExtendListenerImpl* listener = SFNativeOnlineExtendListenerImpl::getInstance();
	listener->setJSCallbackFunc( args.get(0) );
	listener->setJSCallbackThis( args.get(1) );
	cobj->setExtendCallback(listener);
	return true;
}

bool js_yijie_SFGameNativeInterface_setInitCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
	 JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    JSObject *obj = args.thisv().toObjectOrNull();
	js_proxy_t *proxy = jsb_get_js_proxy(obj);
	SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
	JSB_PRECONDITION2( cobj, cx, false, "Invalid Native Object");
	if (argc != 2)
	{
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setInitCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
		return false;
	}
	SFNativeOnlineInitListenerImpl* listener = SFNativeOnlineInitListenerImpl::getInstance();
	listener->setJSCallbackFunc( args.get(0) );
	listener->setJSCallbackThis( args.get(1) );
	cobj->setInitCallback(listener);
	return true;
}

bool js_yijie_SFGameNativeInterface_pay(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
 JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_pay : Invalid Native Object");
    if (argc == 5) {
        int arg0;
        const char* arg1;
        int arg2;
        const char* arg3;
        const char* arg4;
        ok &= jsval_to_int32(cx, args.get(0), (int32_t *)&arg0);
        std::string arg1_tmp; ok &= jsval_to_std_string(cx, args.get(1), &arg1_tmp); arg1 = arg1_tmp.c_str();
        ok &= jsval_to_int32(cx, args.get(2), (int32_t *)&arg2);
        std::string arg3_tmp; ok &= jsval_to_std_string(cx, args.get(3), &arg3_tmp); arg3 = arg3_tmp.c_str();
        std::string arg4_tmp; ok &= jsval_to_std_string(cx, args.get(4), &arg4_tmp); arg4 = arg4_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_pay : Error processing arguments");
        cobj->pay(arg0, arg1, arg2, arg3, arg4);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_pay : wrong number of arguments: %d, was expecting %d", argc, 5);
    return false;
}
bool js_yijie_SFGameNativeInterface_charge(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
    JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_charge : Invalid Native Object");
    if (argc == 5) {
        const char* arg0;
        int arg1;
        int arg2;
        const char* arg3;
        const char* arg4;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, args.get(0), &arg0_tmp); arg0 = arg0_tmp.c_str();
        ok &= jsval_to_int32(cx, args.get(1), (int32_t *)&arg1);
        ok &= jsval_to_int32(cx, args.get(2), (int32_t *)&arg2);
        std::string arg3_tmp; ok &= jsval_to_std_string(cx, args.get(3), &arg3_tmp); arg3 = arg3_tmp.c_str();
        std::string arg4_tmp; ok &= jsval_to_std_string(cx, args.get(4), &arg4_tmp); arg4 = arg4_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_charge : Error processing arguments");
        cobj->charge(arg0, arg1, arg2, arg3, arg4);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_charge : wrong number of arguments: %d, was expecting %d", argc, 5);
    return false;
}

bool js_yijie_SFGameNativeInterface_onDestroy(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_onDestroy : Invalid Native Object");
    if (argc == 0) {
        cobj->onDestroy();
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onDestroy : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}

bool js_yijie_SFGameNativeInterface_payExtend(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
     JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_payExtend : Invalid Native Object");
    if (argc == 7) {
        int arg0;
        const char* arg1;
		const char* arg2;
		const char* arg3;
        int arg4;
        const char* arg5;
        const char* arg6;
        ok &= jsval_to_int32(cx, args.get(0), (int32_t *)&arg0);
        std::string arg1_tmp; ok &= jsval_to_std_string(cx, args.get(1), &arg1_tmp); arg1 = arg1_tmp.c_str();
		std::string arg2_tmp; ok &= jsval_to_std_string(cx, args.get(2), &arg2_tmp); arg2 = arg2_tmp.c_str();
		std::string arg3_tmp; ok &= jsval_to_std_string(cx, args.get(3), &arg3_tmp); arg3 = arg3_tmp.c_str();
        ok &= jsval_to_int32(cx, args.get(4), (int32_t *)&arg4);
        std::string arg5_tmp; ok &= jsval_to_std_string(cx, args.get(5), &arg5_tmp); arg5 = arg5_tmp.c_str();
        std::string arg6_tmp; ok &= jsval_to_std_string(cx, args.get(6), &arg6_tmp); arg6 = arg6_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_payExtend : Error processing arguments");
        cobj->payExtend(arg0, arg1, arg2, arg3, arg4,arg5,arg6);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_payExtend : wrong number of arguments: %d, was expecting %d", argc, 7);
    return false;
}

bool js_yijie_SFGameNativeInterface_exit(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_exit : Invalid Native Object");
    if (argc == 0) {
        cobj->exit();
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_exit : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}

bool js_yijie_SFGameNativeInterface_setPayResultCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
	  JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
	js_proxy_t *proxy = jsb_get_js_proxy(obj);
	SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
	JSB_PRECONDITION2( cobj, cx, false, "Invalid Native Object");
	if (argc != 2)
	{
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setLoginCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
		return false;
	}
	SFNativeOnlinePayResultListenerImpl* listener = SFNativeOnlinePayResultListenerImpl::getInstance();
	listener->setJSCallbackFunc( args.get(0) );
	listener->setJSCallbackThis( args.get(1) );
	cobj->setPayResultCallback(listener);
	return true;
}

bool js_yijie_SFGameNativeInterface_onStop(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_onStop : Invalid Native Object");
    if (argc == 0) {
        cobj->onStop();
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onStop : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}

bool js_yijie_SFGameNativeInterface_onPause(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_onPause : Invalid Native Object");
    if (argc == 0) {
        cobj->onPause();
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onPause : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}

bool js_yijie_SFGameNativeInterface_setLoginCallback(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "Invalid Native Object");
    if (argc != 2)
    {
		JS_ReportError(cx, "js_yijie_SFGameNativeInterface_setLoginCallback : wrong number of arguments: %d, was expecting %d", argc, 0);
    	return false;
    }

	SFNativeOnlineLoginListenerImpl* listener = SFNativeOnlineLoginListenerImpl::getInstance();
    listener->setJSCallbackFunc(args.get(0) );
    listener->setJSCallbackThis( args.get(1) );
    cobj->setLoginCallback(listener);
	return true;
}


bool js_yijie_SFGameNativeInterface_onCreate(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_onCreate : Invalid Native Object");
    if (argc == 0) {
        cobj->onCreate();
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onCreate : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFGameNativeInterface_onRestart(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_onRestart : Invalid Native Object");
    if (argc == 0) {
        cobj->onRestart();
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_onRestart : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFGameNativeInterface_isMusicEnabled(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	   JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_isMusicEnabled : Invalid Native Object");
    if (argc == 0) {
        bool ret = cobj->isMusicEnabled();
        jsval jsret = JSVAL_NULL;
        jsret = BOOLEAN_TO_JSVAL(ret);
 //       JS_SET_RVAL(cx, vp, jsret);
		args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_isMusicEnabled : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFGameNativeInterface_login(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
    JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFGameNativeInterface* cobj = (SFGameNativeInterface *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFGameNativeInterface_login : Invalid Native Object");
    if (argc == 1) {
        const char* arg0;
        std::string arg0_tmp; ok &= jsval_to_std_string(cx, args.get(0), &arg0_tmp); arg0 = arg0_tmp.c_str();
        JSB_PRECONDITION2(ok, cx, false, "js_yijie_SFGameNativeInterface_login : Error processing arguments");
        cobj->login(arg0);
        args.rval().setUndefined();
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFGameNativeInterface_login : wrong number of arguments: %d, was expecting %d", argc, 1);
    return false;
}
bool js_yijie_SFGameNativeInterface_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
    bool ok = true;
    SFGameNativeInterface* cobj = new (std::nothrow) SFGameNativeInterface();
    TypeTest<SFGameNativeInterface> t;
    js_type_class_t *typeClass = nullptr;
    std::string typeName = t.s_name();
    auto typeMapIter = _js_global_type_map.find(typeName);
    CCASSERT(typeMapIter != _js_global_type_map.end(), "Can't find the class type!");
    typeClass = typeMapIter->second;
    CCASSERT(typeClass, "The value is null.");
	 JS::RootedObject proto(cx, const_cast<JSObject*>(typeClass->proto.get()));
     JS::RootedObject parent(cx, const_cast<JSObject*>(typeClass->parentProto.get()));
     JS::RootedObject obj(cx, JS_NewObject(cx, typeClass->jsclass, proto, parent));
    //JSObject *obj = JS_NewObject(cx, typeClass->jsclass, typeClass->proto, typeClass->parentProto);
     args.rval().set(OBJECT_TO_JSVAL(obj));
    // link the native object with the javascript object
    js_proxy_t* p = jsb_new_proxy(cobj, obj);
    if (JS_HasProperty(cx, obj, "_ctor", &ok) && ok)
        ScriptingCore::getInstance()->executeFunctionWithOwner(OBJECT_TO_JSVAL(obj), "_ctor", args);
    return true;
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

void js_register_yijie_SFGameNativeInterface(JSContext *cx, JS::HandleObject global) {
    jsb_SFGameNativeInterface_class = (JSClass *)calloc(1, sizeof(JSClass));
    jsb_SFGameNativeInterface_class->name = "SFGameNativeInterface";
    jsb_SFGameNativeInterface_class->addProperty = JS_PropertyStub;
    jsb_SFGameNativeInterface_class->delProperty = JS_DeletePropertyStub;
    jsb_SFGameNativeInterface_class->getProperty = JS_PropertyStub;
    jsb_SFGameNativeInterface_class->setProperty = JS_StrictPropertyStub;
    jsb_SFGameNativeInterface_class->enumerate = JS_EnumerateStub;
    jsb_SFGameNativeInterface_class->resolve = JS_ResolveStub;
    jsb_SFGameNativeInterface_class->convert = JS_ConvertStub;
    jsb_SFGameNativeInterface_class->finalize = js_SFGameNativeInterface_finalize;
    jsb_SFGameNativeInterface_class->flags = JSCLASS_HAS_RESERVED_SLOTS(2);

    static JSPropertySpec properties[] = {
		JS_PSG("__nativeObj", js_is_native_obj, JSPROP_ENUMERATE | JSPROP_PERMANENT),
        JS_PS_END
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
        JS_FN("extend", js_yijie_SFGameNativeInterface_extend, 2, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setExtendCallback", js_yijie_SFGameNativeInterface_setExtendCallback, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("setInitCallback", js_yijie_SFGameNativeInterface_setInitCallback, 1, JSPROP_PERMANENT | JSPROP_ENUMERATE),
		JS_FN("setData", js_yijie_SFGameNativeInterface_setData, 2, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FN("payExtend", js_yijie_SFGameNativeInterface_payExtend, 7, JSPROP_PERMANENT | JSPROP_ENUMERATE),
        JS_FS_END
    };

    JSFunctionSpec *st_funcs = NULL;

    jsb_SFGameNativeInterface_prototype = JS_InitClass(
        cx, global,
         JS::NullPtr(), // parent proto
        jsb_SFGameNativeInterface_class,
        js_yijie_SFGameNativeInterface_constructor, 0, // constructor
        properties,
        funcs,
        NULL, // no static properties
        st_funcs);
    // make the class enumerable in the registered namespace
//  bool found;
//FIXME: Removed in Firefox v27 
//  JS_SetPropertyAttributes(cx, global, "SFGameNativeInterface", JSPROP_ENUMERATE | JSPROP_READONLY, &found);

    // add the proto and JSClass to the type->js info hash table
    TypeTest<SFGameNativeInterface> t;
    js_type_class_t *p;
    std::string typeName = t.s_name();
    if (_js_global_type_map.find(typeName) == _js_global_type_map.end())
    {
        p = (js_type_class_t *)malloc(sizeof(js_type_class_t));
        p->jsclass = jsb_SFGameNativeInterface_class;
        p->proto = jsb_SFGameNativeInterface_prototype;
        p->parentProto = NULL;
        _js_global_type_map.insert(std::make_pair(typeName, p));
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//SFNativeOnlineUser

JSClass  *jsb_SFNativeOnlineUser_class;
JSObject *jsb_SFNativeOnlineUser_prototype;

bool js_yijie_SFNativeOnlineUser_getToken(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFNativeOnlineUser_getToken : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getToken();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
		args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getToken : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFNativeOnlineUser_getId(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFNativeOnlineUser_getId : Invalid Native Object");
    if (argc == 0) {
        long long ret = cobj->getId();
        jsval jsret = JSVAL_NULL;
        jsret = long_long_to_jsval(cx, ret);
        args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getId : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFNativeOnlineUser_getProductCode(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFNativeOnlineUser_getProductCode : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getProductCode();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getProductCode : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFNativeOnlineUser_getChannelId(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFNativeOnlineUser_getChannelId : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getChannelId();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getChannelId : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFNativeOnlineUser_getChannelUserId(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFNativeOnlineUser_getChannelUserId : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getChannelUserId();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getChannelUserId : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFNativeOnlineUser_getUserName(JSContext *cx, uint32_t argc, jsval *vp)
{
      JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	  JSObject *obj = args.thisv().toObjectOrNull();
    js_proxy_t *proxy = jsb_get_js_proxy(obj);
    SFNativeOnlineUser* cobj = (SFNativeOnlineUser *)(proxy ? proxy->ptr : NULL);
    JSB_PRECONDITION2( cobj, cx, false, "js_yijie_SFNativeOnlineUser_getUserName : Invalid Native Object");
    if (argc == 0) {
        std::string ret = cobj->getUserName();
        jsval jsret = JSVAL_NULL;
        jsret = std_string_to_jsval(cx, ret);
        args.rval().set(jsret);
        return true;
    }

    JS_ReportError(cx, "js_yijie_SFNativeOnlineUser_getUserName : wrong number of arguments: %d, was expecting %d", argc, 0);
    return false;
}
bool js_yijie_SFNativeOnlineUser_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
     JS::CallArgs args = JS::CallArgsFromVp(argc, vp);
	 //JSObject *obj = args.thisv().toObjectOrNull();
    bool ok = true;
    SFNativeOnlineUser* cobj = new (std::nothrow) SFNativeOnlineUser();
    TypeTest<SFNativeOnlineUser> t;
    js_type_class_t *typeClass = nullptr;
    std::string typeName = t.s_name();
    auto typeMapIter = _js_global_type_map.find(typeName);
    CCASSERT(typeMapIter != _js_global_type_map.end(), "Can't find the class type!");
    typeClass = typeMapIter->second;
    CCASSERT(typeClass, "The value is null.");
    JS::RootedObject proto(cx, const_cast<JSObject*>(typeClass->proto.get()));
    JS::RootedObject parent(cx, const_cast<JSObject*>(typeClass->parentProto.get()));
    JS::RootedObject obj(cx, JS_NewObject(cx, typeClass->jsclass, proto, parent));
    //JSObject *obj = JS_NewObject(cx, typeClass->jsclass, typeClass->proto, typeClass->parentProto);
    args.rval().set(OBJECT_TO_JSVAL(obj));
    // link the native object with the javascript object
    jsb_new_proxy(cobj, obj);
    if (JS_HasProperty(cx, obj, "_ctor", &ok) && ok)
         ScriptingCore::getInstance()->executeFunctionWithOwner(OBJECT_TO_JSVAL(obj), "_ctor", args);
    return true;
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

void js_register_yijie_SFNativeOnlineUser(JSContext *cx, JS::HandleObject global) {
    jsb_SFNativeOnlineUser_class = (JSClass *)calloc(1, sizeof(JSClass));
    jsb_SFNativeOnlineUser_class->name = "SFNativeOnlineUser";
    jsb_SFNativeOnlineUser_class->addProperty = JS_PropertyStub;
    jsb_SFNativeOnlineUser_class->delProperty = JS_DeletePropertyStub;
    jsb_SFNativeOnlineUser_class->getProperty = JS_PropertyStub;
    jsb_SFNativeOnlineUser_class->setProperty = JS_StrictPropertyStub;
    jsb_SFNativeOnlineUser_class->enumerate = JS_EnumerateStub;
    jsb_SFNativeOnlineUser_class->resolve = JS_ResolveStub;
    jsb_SFNativeOnlineUser_class->convert = JS_ConvertStub;
    jsb_SFNativeOnlineUser_class->finalize = js_SFNativeOnlineUser_finalize;
    jsb_SFNativeOnlineUser_class->flags = JSCLASS_HAS_RESERVED_SLOTS(2);

    static JSPropertySpec properties[] = {
        JS_PSG("__nativeObj", js_is_native_obj, JSPROP_ENUMERATE | JSPROP_PERMANENT),
        JS_PS_END
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
        JS::NullPtr(), // parent proto
        jsb_SFNativeOnlineUser_class,
        js_yijie_SFNativeOnlineUser_constructor, 0, // constructor
        properties,
        funcs,
        NULL, // no static properties
        st_funcs);
    // make the class enumerable in the registered namespace
//  bool found;
//FIXME: Removed in Firefox v27
//  JS_SetPropertyAttributes(cx, global, "SFNativeOnlineUser", JSPROP_ENUMERATE | JSPROP_READONLY, &found);

    // add the proto and JSClass to the type->js info hash table
    TypeTest<SFNativeOnlineUser> t;
    js_type_class_t *p;
    std::string typeName = t.s_name();
    if (_js_global_type_map.find(typeName) == _js_global_type_map.end())
    {
        p = (js_type_class_t *)malloc(sizeof(js_type_class_t));
        p->jsclass = jsb_SFNativeOnlineUser_class;
        p->proto = jsb_SFNativeOnlineUser_prototype;
        p->parentProto = NULL;
        _js_global_type_map.insert(std::make_pair(typeName, p));
    }
}

//SFNativeOnlineUser end
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void register_all_yijie(JSContext* cx, JS::HandleObject obj) {
	 js_register_yijie_SFNativeOnlineUser(cx, obj);
	 js_register_yijie_SFGameNativeInterface(cx, obj);
}

