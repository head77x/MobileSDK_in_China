#ifndef __yijie_h__
#define __yijie_h__

#include "jsapi.h"
#include "jsfriendapi.h"


extern JSClass  *jsb_SFGameNativeInterface_class;
extern JSObject *jsb_SFGameNativeInterface_prototype;
extern JSClass  *jsb_SFNativeOnlineUser_class;
extern JSObject *jsb_SFNativeOnlineUser_prototype;
extern JSClass  *jsb_SFNativeOnlineLoginListener_class;
extern JSObject *jsb_SFNativeOnlineLoginListener_prototype;

bool js_yijie_SFGameNativeInterface_constructor(JSContext *cx, uint32_t argc, jsval *vp);
void js_yijie_SFGameNativeInterface_finalize(JSContext *cx, JS::HandleObject obj);
void js_register_yijie_SFGameNativeInterface(JSContext *cx, JS::HandleObject global);
void register_all_yijie(JSContext* cx, JS::HandleObject obj);
bool js_yijie_SFGameNativeInterface_onResume(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_setRoleData(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_setData(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_logout(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_setExitCallback(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_pay(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_payExtend(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_charge(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_onDestroy(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_exit(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_setPayResultCallback(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_onStop(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_onPause(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_setLoginCallback(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_onCreate(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_onRestart(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_isMusicEnabled(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_login(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_SFGameNativeInterface(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_extend(JSContext *cx,uint32_t argc,jsval *vp);
bool js_yijie_SFGameNativeInterface_setInitCallback(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFGameNativeInterface_setExtendCallback(JSContext *cx, uint32_t argc, jsval *vp);

bool js_yijie_SFNativeOnlineUser_constructor(JSContext *cx, uint32_t argc, jsval *vp);
void js_yijie_SFNativeOnlineUser_finalize(JSContext *cx, JSObject *obj);
void js_register_yijie_SFNativeOnlineUser(JSContext *cx, JSObject *global);
bool js_yijie_SFNativeOnlineUser_getToken(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineUser_getId(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineUser_getProductCode(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineUser_getChannelId(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineUser_getChannelUserId(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineUser_getUserName(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineUser_SFNativeOnlineUser(JSContext *cx, uint32_t argc, jsval *vp);

bool js_yijie_SFNativeOnlineLoginListener_constructor(JSContext *cx, uint32_t argc, jsval *vp);
void js_yijie_SFNativeOnlineLoginListener_finalize(JSContext *cx, JS::HandleObject obj);
void js_register_yijie_SFNativeOnlineLoginListener(JSContext *cx, JS::HandleObject global);
void register_all_yijie(JSContext* cx, JS::HandleObject obj);
bool js_yijie_SFNativeOnlineLoginListener_onLoginFailed(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineLoginListener_onLoginSuccess(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineLoginListener_onLogout(JSContext *cx, uint32_t argc, jsval *vp);
bool js_yijie_SFNativeOnlineLoginListener_SFNativeOnlineLoginListener(JSContext *cx, uint32_t argc, jsval *vp);
#endif

