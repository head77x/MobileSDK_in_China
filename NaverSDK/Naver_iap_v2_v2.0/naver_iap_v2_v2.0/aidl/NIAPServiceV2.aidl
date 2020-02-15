package com.nhn.android.appstore.iap.service.v2;

/**
 * Naver Appstore In-App-Purchase AIDL Interface
 * @author Naver
 */
interface NIAPServiceV2 {
	/**
	 * 상품 정보를 가져온다.
	 * Provides details of a list of products 
	 */
	Bundle getProductDetails(String packageName, in Bundle queryProducts);
	
	/**
	 * 구매 Intent 정보를 가져온다.
	 * Returns pending intent for purhcase flow.
	 */
	Bundle getBuyIntent(String packageName, String productCode, String developerPayload);
	
	/**
	 * 아직 소모되지 않은 단건 구매 정보를 가져온다.
	 * Returns single owned purchase of user using 'paymentSeq' (id of purchase receipt).
	 */
	Bundle getSinglePurchase(String packageName, String paymentSeq);
	
	/**
	 * 아직 소모되지 않은 전체 구매 정보를 가져온다.
	 * Returns all owned purchases of user.
	 */
	Bundle getPurchases(String packageName);
	
	/**
	 * 구매 상품을 소모 한다.
	 * Consumes owned purchase of product.
	 */
	int consumePurchase(String packageName, String paymentSeq);
}