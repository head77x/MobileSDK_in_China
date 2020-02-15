/*
 * @(#)NIAPUnityPluginUtil.java $version 2014. 11. 26.
 *
 * Copyright 2014 NHN Corp. All rights Reserved.
 * NHN PROPRIETARY/CONFIDENTIAL. Use is subject to license terms.
 */
package com.nhn.android.appstore.iap.payment;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

import com.naver.android.appstore.iap.InvalidProduct;
import com.naver.android.appstore.iap.NIAPHelper;
import com.naver.android.appstore.iap.NIAPHelper.ConsumeListener;
import com.naver.android.appstore.iap.NIAPHelper.GetProductDetailsListener;
import com.naver.android.appstore.iap.NIAPHelper.GetPurchasesListener;
import com.naver.android.appstore.iap.NIAPHelper.GetSinglePurchaseListener;
import com.naver.android.appstore.iap.NIAPHelper.RequestPaymentListener;
import com.naver.android.appstore.iap.NIAPHelperErrorType;
import com.naver.android.appstore.iap.NIAPHelperException;
import com.naver.android.appstore.iap.Product;
import com.naver.android.appstore.iap.Purchase;
import com.nhn.android.appstore.iap.payment.common.ManagerHelperBase;
import com.nhn.android.appstore.iap.payment.common.UnityPluginIAPConstant;
import com.unity3d.player.UnityPlayerActivity;

public class NIAPUnityPluginUtil extends ManagerHelperBase {
	public static final String NIAP_LOG_TAG = "NIAP_UNITY";
	
	/**
	 * 네이버 인앱 V2 RequestedMethod
	 * @param jsonRequestParam : 실행시킬 method 명
	 * @param activity : activity
	 * @param niapHelper : niapHelper 
	 */
	public static void runIAPRequestedMethod(String jsonRequestParam, UnityPlayerActivity activity, NIAPHelper niapHelper) {
		JSONObject requestParam = null;
		try {
			requestParam = new JSONObject(jsonRequestParam);
			String invokeMethod = requestParam.getString(UnityPluginIAPConstant.INVOKEMETHOD);
			
			switch (UnityPluginIAPConstant.InvokeMethod.findBy(invokeMethod)) {					
				case GET_PRODUCT_INFOS:
					JSONArray jsonArray = requestParam.getJSONArray(UnityPluginIAPConstant.Param.PRODUCT_CODES);
					getProductDetails(jsonArrayToList(jsonArray), activity, niapHelper);
				break;
				case REQUEST_PAYMENT:
					String productCode = requestParam.getString(UnityPluginIAPConstant.Param.PRODUCT_CODE);
	    			int niapRequestCode = requestParam.getInt(UnityPluginIAPConstant.Param.PAYMENT_REQUEST_CODE);
	    			String payLoad = requestParam.getString(UnityPluginIAPConstant.Param.PAYLOAD);
	    			requestPayment(productCode, niapRequestCode, payLoad, activity, niapHelper);
				break;
				case REQUEST_CONSUME:
					String purchaseAsJsonText = requestParam.getString(UnityPluginIAPConstant.Param.PURCHASE_JSONTEXT);	    			
	    			String signature = requestParam.getString(UnityPluginIAPConstant.Param.SIGNATURE);
					consumeAsync(purchaseAsJsonText, signature, activity, niapHelper);
				break;
				case GET_PURCHASES:
					requestPurchases(activity, niapHelper);
				break;
				case GET_SINGLEPURCHASE:
					String paymentSeq = requestParam.getString(UnityPluginIAPConstant.Param.PAYMENTSEQ);
					requestSinglePurchase(paymentSeq, activity, niapHelper);
				break;
				default:
					Log.e(NIAP_LOG_TAG, "IAP unknown invoke method : " + invokeMethod);
				break;
			}
		} catch (Exception e) {
			Log.e(NIAP_LOG_TAG, "IAP unity java bridge error has occured!", e);
		}
	}
	
	/**
	 * 인앱 상품 리스트를 가져온다. 
	 * @param productCodeList : 인앱상품 code List
	 * @param activity : activity
	 * @param niapHelper : niapHelper
	 */
	public static void getProductDetails(final ArrayList<String> productCodeList, final UnityPlayerActivity activity, final NIAPHelper niapHelper) {
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				niapHelper.getProductDetailsAsync(productCodeList, new GetProductDetailsListener() {
					@Override
					public void onSuccess(final List<Product> validProducts, List<InvalidProduct> invalidProducts) {
						
						JSONArray validProductList = new JSONArray();						
						for (Product product : validProducts) {
							JSONObject productJson = new JSONObject();
							try {								
								productJson.put("productCode", product.getProductCode());
								productJson.put("productName", product.getProductName());
								productJson.put("productType", product.getProductType().toString());
								productJson.put("productPrice", product.getProductPrice());
								productJson.put("sellPrice", product.getSellPrice());								
								productJson.put("advantage", product.getAdvantage().getMileage());
								productJson.put("productStatus", product.getProductStatus().toString());
								productJson.put("offerCancelableYn", product.getOfferCancelableYn());
								productJson.put("discount", product.getDiscount().getPrice());
								validProductList.put(productJson);
							} catch (JSONException e) {
								Log.e(NIAP_LOG_TAG, "requestProductInfos JSONException", e);		
							}
						}
						sendSuccess(UnityPluginIAPConstant.InvokeMethod.GET_PRODUCT_INFOS, validProductList.toString());											
					}			
					
					@Override
					public void onFail(final NIAPHelperErrorType errorType) {			
						sendFailure(UnityPluginIAPConstant.InvokeMethod.GET_PRODUCT_INFOS, errorType);				
					}
				});
			}		
		});
	}
	
	/**
	 * 결제를 요청한다. 
	 * @param productCode : 인앱상품 code
	 * @param niapRequestCode : 결제 Activity간 통신을 위한 Request 코드 
	 * @param payLoad : 상품 구매가 완료되었을 경우 처음 결제시 전달한 Payload를 체크하여 정상적인 구매 요청건인지 개발사 validation을 거친 후
	 *           1. 소모성 상품인 경우 바로 소진시킨다(consumeAsync API 사용)
	 *           2. 영구성 상품인 경우 혜택을 적용시킨다(비즈니스 로직) 
	 * @param activity : activity
	 * @param niapHelper : niapHelper
	 */
	public static void requestPayment(String productCode, int niapRequestCode, String payLoad, UnityPlayerActivity activity, NIAPHelper niapHelper) {		
		niapHelper.requestPayment(activity, productCode, payLoad, niapRequestCode, 
				new RequestPaymentListener() {
			@Override
			public void onSuccess(Purchase purchase) {	
				sendPurchaseSuccess(UnityPluginIAPConstant.InvokeMethod.REQUEST_PAYMENT, purchase);				
			}
			
			@Override
			public void onFail(NIAPHelperErrorType errorType) {						
				sendFailure(UnityPluginIAPConstant.InvokeMethod.REQUEST_PAYMENT, errorType);				
			}
			
			@Override
			public void onCancel() {
				sendCancel(UnityPluginIAPConstant.InvokeMethod.REQUEST_PAYMENT);				
			}
		});			
	}
	
	/**
	 * 구매한 상품이 소모성 상품일 경우 바로 소진시킨다.
	 * @param purchaseAsJsonText
	 * @param signature
	 */
	public static void consumeAsync(final String purchaseAsJsonText, final String signature, UnityPlayerActivity activity, final NIAPHelper niapHelper) {		
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				try {
					final Purchase purchase = Purchase.parseFromJson(purchaseAsJsonText, signature);
				
					niapHelper.consumeAsync(purchase, new ConsumeListener() {
						@Override
						public void onSuccess(Purchase purchase) {
							sendSuccess(UnityPluginIAPConstant.InvokeMethod.REQUEST_CONSUME, purchase.toString());					
						}
						
						@Override
						public void onFail(NIAPHelperErrorType errorType) {
							sendFailure(UnityPluginIAPConstant.InvokeMethod.REQUEST_CONSUME, errorType);	
						}
					});
				} catch (NIAPHelperException e) {
					Log.e(NIAP_LOG_TAG, purchaseAsJsonText, e);
				}
			}
		});
	}
	
	
	/**
	 * 구매내역 List 를 가져온다. 
	 */
	public static void requestPurchases(UnityPlayerActivity activity, final NIAPHelper niapHelper) {
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				niapHelper.getPurchasesAsync(new GetPurchasesListener() {
					@Override
					public void onSuccess(List<Purchase> purchases) {				
						JSONArray purchaseList = new JSONArray();
						if(purchases != null) {											
							for (Purchase purchase : purchases) {							
								purchaseList.put(converToJsonByPurchase(purchase));
							}					
						}
						sendSuccess(UnityPluginIAPConstant.InvokeMethod.GET_PURCHASES, purchaseList.toString());						
					}
					
					@Override
					public void onFail(NIAPHelperErrorType errorType) {
						sendFailure(UnityPluginIAPConstant.InvokeMethod.GET_PURCHASES, errorType);	
					}
				});
			}
		});
	}
	
	/**
	 * 특정 구매내역 정보를 가져온다.
	 * @param paymentSeq : 결제 번호
	 */
	public static void requestSinglePurchase(final String paymentSeq, UnityPlayerActivity activity, final NIAPHelper niapHelper) {
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {
				niapHelper.getSinglePurchaseAsync(paymentSeq, new GetSinglePurchaseListener() {
					@Override
					public void onSuccess(Purchase purchase) {
						
						sendSuccess(UnityPluginIAPConstant.InvokeMethod.GET_SINGLEPURCHASE, purchase.toString());
					}
					@Override
					public void onFail(NIAPHelperErrorType errorType) {
						sendFailure(UnityPluginIAPConstant.InvokeMethod.GET_SINGLEPURCHASE, errorType);		
					}
				});
			}
		});
	}


	private static JSONObject converToJsonByPurchase(Purchase purchase) {
		try {	
			JSONObject purchaseJson = new JSONObject();
			purchaseJson.put("paymentSeq", purchase.getPaymentSeq());
			purchaseJson.put("purchaseToken", purchase.getPurchaseToken());
			purchaseJson.put("purchaseType", purchase.getPurchaseType().toString());
			purchaseJson.put("environment", purchase.getEnvironment().toString());
			purchaseJson.put("packageName", purchase.getPackageName());
			purchaseJson.put("appName", purchase.getAppName());
			purchaseJson.put("productCode", purchase.getProductCode());
			purchaseJson.put("paymentTime", purchase.getPaymentTime());
			purchaseJson.put("developerPayload", purchase.getDeveloperPayload());
			purchaseJson.put("nonce", purchase.getNonce());
			purchaseJson.put("signature", purchase.getSignature());
			purchaseJson.put("originalPurchaseAsJsonText", purchase.getOriginalPurchaseAsJsonText());	
			
			return purchaseJson;
		} catch (JSONException e) {
			Log.e(NIAP_LOG_TAG, "converToJsonByPurchase JSONException", e);
			return null;
		}
	}
	
	private static ArrayList<String> jsonArrayToList(JSONArray jsonArray) throws JSONException {
		ArrayList<String> list = new ArrayList<String>();
		
		if (jsonArray == null) {
			return list;
		}
		
		for (int i = 0; i < jsonArray.length(); i++) {
			list.add(jsonArray.get(i).toString());
		}
		
		return list;
	}
}
