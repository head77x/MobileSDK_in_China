/*
 * @(#)NIAPUnityPluginActivity.java $version 2013. 4. 17.
 *
 * Copyright 2013 NHN Corp. All rights Reserved.
 * NHN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.nhn.android.appstore.iap.payment;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.naver.android.appstore.iap.NIAPHelper;
import com.naver.android.appstore.iap.NIAPHelper.OnInitializeFinishedListener;
import com.naver.android.appstore.iap.NIAPHelperErrorType;
import com.nhn.android.appstore.iap.payment.common.UnityPluginIAPConstant;
import com.unity3d.player.UnityPlayerActivity;

/**
 * NIAP SDK Java Wrapper 라이브러리
 */
public class NIAPUnityPluginActivity extends UnityPlayerActivity {
	private NIAPHelper niapHelper;	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		if (niapHelper != null) {
			Log.d("DEBUG", "release helper");
			niapHelper.terminate();
			niapHelper = null;
		}
	}

	/*
	 * - 결제 액티비티에서 넘어온 인텐트를 처리하는 메소드 오버라이딩(필수) - Override onActivityResult
	 * method for handling Purchase Activity's Intents (IMPORTANT - You have to
	 * override this method for receive other activity's intents)
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		// 아래 코드는 반드시 포함되어야 합니다.
		if (!niapHelper.handleActivityResult(requestCode, resultCode, data)) {
			// NIAPHelper가 구매 결과를 처리하지 않음.
			Log.d(NIAPUnityPluginUtil.NIAP_LOG_TAG, "NIAPHelper does not handle onActivityResult");
			super.onActivityResult(requestCode, resultCode, data);
		} else {
			// NIAPHelper가 구매 결과를 처리 완료.
			Log.d(NIAPUnityPluginUtil.NIAP_LOG_TAG, "NIAP Helper handles onActivityResult");
		}
	}

	/**
	 * niapHelper를 초기화 한다.
	 * 
	 * @param publicKey
	 */
	public void initialize(String publicKey) {
		niapHelper = new NIAPHelper(NIAPUnityPluginActivity.this, publicKey);
		niapHelper.initialize(new OnInitializeFinishedListener() {
			@Override
			public void onSuccess() {
				Log.i(NIAPUnityPluginUtil.NIAP_LOG_TAG, "niapHelper initialize  Success");
			}

			@Override
			public void onFail(NIAPHelperErrorType errorType) {
				if (errorType == NIAPHelperErrorType.NEED_INSTALL_OR_UPDATE_APPSTORE) {
					niapHelper
							.updateOrInstallAppstore(NIAPUnityPluginActivity.this);
				}
			}
		});
	}

	/**
	 * Unity에서 호출하는 인앱결제 메서드
	 * 
	 * @param requestParam
	 */
	public void callNIAPNativeExtension(String jsonRequestParam) {
		JSONObject requestParam = null;
		try {
			requestParam = new JSONObject(jsonRequestParam);
			String invokeMethod = requestParam.getString(UnityPluginIAPConstant.INVOKEMETHOD);

			if (UnityPluginIAPConstant.InvokeMethod.findBy(invokeMethod) == UnityPluginIAPConstant.InvokeMethod.INITIAP) {
				String publicKey = requestParam.getString(UnityPluginIAPConstant.Param.PUBLIC_KEY);
				initialize(publicKey);
			} else {
				NIAPUnityPluginUtil.runIAPRequestedMethod(jsonRequestParam, this, niapHelper);
			}
		} catch (JSONException e) {
			Log.e(UnityPluginIAPConstant.TAG_IAP, "IAP unknown error : " + e);
		}
	}

	/**
	 * 일반 텍스트 메시지 출력
	 * 
	 * @param message
	 *            : 출력할 메시지
	 */
	public void showMessage(final String message) {
		runOnUiThread(new Runnable() {
			@Override
			public void run() {
				Toast.makeText(getApplicationContext(), message,
						Toast.LENGTH_SHORT).show();
			}
		});
	}

}
