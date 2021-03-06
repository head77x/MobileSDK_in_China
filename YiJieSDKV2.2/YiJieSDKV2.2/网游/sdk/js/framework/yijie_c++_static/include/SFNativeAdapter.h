/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class com_snowfish_cn_ganga_base_SFNativeAdapter */

#ifndef _Included_com_snowfish_cn_ganga_base_SFNativeAdapter
#define _Included_com_snowfish_cn_ganga_base_SFNativeAdapter
#ifdef __cplusplus
extern "C" {
#endif
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONCREATE
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONCREATE 1L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_STOP
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_STOP 2L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONRESUME
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONRESUME 3L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONPAUSE
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONPAUSE 4L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONRESTART
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONRESTART 5L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONDESTROY
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_ONDESTROY 6L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_EXIT
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_EXIT 7L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_LOGIN
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_LOGIN 8L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_LOGOUT
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_LOGOUT 9L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_CHARGE
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_CHARGE 10L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_PAY
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_PAY 11L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_SETROLEDATA
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_SETROLEDATA 12L
#undef com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_SETDATA
#define com_snowfish_cn_ganga_base_SFNativeAdapter_MSG_SETDATA 13L


/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    initNative
 * Signature: (Ljava/lang/Object;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_initNative(
		JNIEnv * env, jclass self);
/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onLogout
 * Signature: (Ljava/lang/Object;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onLogout(
		JNIEnv * env, jclass self, jstring);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onLoginSuccess
 * Signature: (Lcom/snowfish/cn/ganga/helper/SFOnlineUser;Ljava/lang/Object;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onLoginSuccess(
		JNIEnv * env, jclass self, jobject, jstring);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onLoginFailed
 * Signature: (Ljava/lang/String;Ljava/lang/Object;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onLoginFailed(
		JNIEnv * env, jclass self, jstring, jstring);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onFailed
 * Signature: (Ljava/lang/String;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onFailed(
		JNIEnv * env, jclass self, jstring);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onSuccess
 * Signature: (Ljava/lang/String;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onSuccess(
		JNIEnv * env, jclass self, jstring);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onOderNo
 * Signature: (Ljava/lang/String;)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onOderNo(
		JNIEnv * env, jclass self, jstring);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onNoExiterProvide
 * Signature: ()V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onNoExiterProvide(
		JNIEnv *, jclass);

/*
 * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
 * Method:    onSDKExit
 * Signature: (Z)V
 */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onSDKExit(
		JNIEnv * env, jclass self, jboolean);


 /*
   * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
   * Method:    onExtendResponse
   * Signature: ()V
   */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onExtendResponse(
 		  JNIEnv * env, jclass self,jint,jstring,jstring );

   /*
    * Class:     com_snowfish_cn_ganga_base_SFNativeAdapter
    * Method:    onInitResponse
    * Signature: ()V
    */JNIEXPORT void JNICALL Java_com_snowfish_cn_ganga_base_SFNativeAdapter_onInitResponse(
  		  JNIEnv * env, jclass self,jstring,jstring );

 jobject getJobjectFiledValue(JNIEnv * env, jobject juser, char* name, char* sig);

 jlong getJlongFiledValue(JNIEnv * env, jobject juser, char* name, char* sig);
#ifdef __cplusplus
}
#endif

class SFNativeAdapter {
public:
	SFNativeAdapter();
	virtual ~SFNativeAdapter();
};
#endif

