package com.naver.android.appstore.iap.official.sample;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.naver.android.appstore.iap.InvalidProduct;
import com.naver.android.appstore.iap.NIAPHelper;
import com.naver.android.appstore.iap.NIAPHelper.ConsumeListener;
import com.naver.android.appstore.iap.NIAPHelper.GetProductDetailsListener;
import com.naver.android.appstore.iap.NIAPHelper.GetPurchasesListener;
import com.naver.android.appstore.iap.NIAPHelper.GetSinglePurchaseListener;
import com.naver.android.appstore.iap.NIAPHelper.OnInitializeFinishedListener;
import com.naver.android.appstore.iap.NIAPHelper.RequestPaymentListener;
import com.naver.android.appstore.iap.NIAPHelperErrorType;
import com.naver.android.appstore.iap.Product;
import com.naver.android.appstore.iap.Purchase;
import com.nhn.android.appstore.iap.v2.sample.R;

public class MainActivity extends Activity implements OnClickListener {

	// 로깅용 태그
	// Tag for Logging
	protected static final String TAG = "IapOfficialSample/MainActivity";

	// 네이버 앱스토어 인앱결제 Helper 클래스 선언
	// Declare NaverInAppPurchaseHelper Class Instance
	private NIAPHelper niapHelper = null;

	// 앱스토어 개발자 센터에서 지급된 서명 인증키
	// Verification Key that provides from Developer Center
	private static final String BASE64_PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCNWUuwdj32WHZVImkoXRM27cDj1RmMkLAFIZ8U/JPfV0q5GwgAtsBnb5AZZB0ZT3aLM2HqnRNqDO4HFFiLtVAh6OwGIQ/evJ6C8caAa9ZdCKHn0u84f2Gxm/Zu+rAtw6Um8Wp2BOEJCn54EXBT1FnHu2L3w5QZB/JpQWxfFAZvuwIDAQAB";

	// 소모성 상품코드
	// Consumable Product Code
	private static final String PRODUCT_CODE_CONSUMABLE_JEWEL_50 = "1000013114";

	// 영구성 상품코드
	// Permanent Product Code
	private static final String PRODUCT_CODE_PERMANENT_GOLDEN_ANVIL = "1000013115";

	// 기간제 상품코드
	// Periodic Product Code
	private static final String PRODUCT_CODE_PERIODIC_SHIELD = "1000013116";

	// 상품 정보 조회에 사용될 상품코드 리스트
	// Product List for getProductDetails
	private static ArrayList<String> PRODUCT_CODE_LIST;

	// 결제 Activity간 통신을 위한 Request 코드 - 개발사 임의로 수정 가능
	// Request code for communication between the Payment Activity - Developers can freely modify
	private static final int NIAP_REQUEST_CODE = 100;

	// UI 객체 선언
	// Declare UI Instance for business logic
	private ImageView reinforceImg;
	private ImageView buyImg;
	private ImageView upgradeImg;
	private ImageView borrowImg;
	private ImageView anvilImg;

	private TextView jewelCountTxt;
	private TextView attackRateTxt;
	private TextView percentTxt;
	private TextView itemListTxt;

	private ProgressDialog reinforceProgressDialog;

	// 게임 비즈니스 데이터
	// business Data
	private int mJewels;
	private int mCurrentAttackRate;
	private int mCurrentPercent;
	private boolean mHasGoldenAnvil = false;
	private final long mShieldDueTime = 60000L;
	private String mShieldPaymentSeq = null;
	private String userId = "user001";

	private Handler mHandler = new Handler();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		// 게임 데이터 로딩
		// Load business data
		loadData();

		// 인앱결제 Helper 클래스 인스턴스 생성
		// Create NIAP Helper Instance
		niapHelper = new NIAPHelper(this, BASE64_PUBLIC_KEY);

		// 인앱결제 Helper 클래스 초기화
		// Initialize NIAP Helper Instance
		niapHelper.initialize(onInitializeFinishedListener);

		// 게임 데이터 초기화
		// initialize business logic
		initButton();
		updateUi();
		saveData();
	}

	/*
	 * - NIAPHelper Initialize 콜백 리스너.
	 */
	/*
	 * - NIAPHelper Initialize Callback Listener.
	 */
	OnInitializeFinishedListener onInitializeFinishedListener = new OnInitializeFinishedListener() {
		@Override
		public void onSuccess() {

			// 리스너 호출 시점에 액티비티가 종료되었을경우 리스너도 종료한다.
			// If activity terminated during callback listener, quit it.
			if (niapHelper == null)
				return;

			// 사용자가 결제한 리스트를 불러와서 처리한다.
			/*
			 * 인앱결제Helper 클래스에서 제공하는 getPurchasesAsync를 사용하여 구매데이터를 셋팅한다.
			 * getPurchasesAsync의 콜백메소드인 getAllPurchasesListener 에서는
			 * 1. 사용자가 지금까지 결제했던 모든 상품정보를 읽어와서
			 * 2. 영구성 상품 구매내역이 있는경우 영구성 상품 구매 플래그를 셋팅하고
			 * 3. 기존 구매하고 consume으로 소진하지 않은 소모성 상품이 존재하는 경우 이를 consume한 후 혜택 지급과
			 * 같은 관한 비즈니스 로직을 실행한다.
			 */
			// When NIAPHelper initialize finished, call getPurchasesAsync API for Process logics that depends on user's purchased product.
			niapHelper.getPurchasesAsync(getPurchasesListener);

			// 상품 정보 조회를 위하여 리스트에 상품코드를 담는다.
			// Add product code to list for getProductDetailsAsync.
			PRODUCT_CODE_LIST = new ArrayList<String>();
			PRODUCT_CODE_LIST.add(PRODUCT_CODE_CONSUMABLE_JEWEL_50);
			PRODUCT_CODE_LIST.add(PRODUCT_CODE_PERMANENT_GOLDEN_ANVIL);
			PRODUCT_CODE_LIST.add(PRODUCT_CODE_PERIODIC_SHIELD);

			// 상품 정보를 조회한다.
			// Call getProductDetailsAsync API if you want product's detail information.
			niapHelper.getProductDetailsAsync(PRODUCT_CODE_LIST, getProductDetailsListener);

			// 단건 상품의 구매정보를 조회한다.
			// 개별 구매정보를 조회할때는 구매완료후 전달되는 PaymentSeq가 필요하다.
			// 샘플 앱에서는 구현상의 편의를 위해 최초 앱 초기화 시에만 미리 설정된 기간제형 상품의 구매 정보를 조회하지만,
			// 실제 앱에서 구현시에는 필요한 주기마다 호출하여 만료 처리를 하도록 한다.
			// you can call specific purchase information directly by getSinglePurchaseAsync API.
			// When you call getSinglePurchaseAsync, you need PaymentSeq which has been returned from payment API result.
			// In this sample app, It calls this API at once on initializing for convenient implementation,
			// but your app should call it on demand to check duration of periodic product.
			if (mShieldPaymentSeq != null) {
				niapHelper.getSinglePurchaseAsync(mShieldPaymentSeq, getPurchaseListener);
			}

			Toast.makeText(MainActivity.this, "NIAPHelper initialize finished", Toast.LENGTH_SHORT).show();
			Log.d(TAG, "initialize finished.");
		}

		@Override
		public void onFail(NIAPHelperErrorType errorType) {
			if (errorType == NIAPHelperErrorType.NEED_INSTALL_OR_UPDATE_APPSTORE) {
				// 사용자의 단말기에 네이버앱스토어앱이 설치되지 않았거나 구버전이 설치되어있을경우 설치를 유도한다.
				// If user does not install NAVER APPSTORE APP or has old version, induce user to install.
				niapHelper.updateOrInstallAppstore(MainActivity.this);
			} else {
				// 기타 Helper 초기화 오류가 발생할 경우 처리
				// When other NIAPHelper initial error has been occurred.
				complain("NIAPHelper initialize failed", errorType);
			}

		}
	};

	/*
	 * - NIAPHelper 상품정보 조회API 콜백 리스너.
	 * 네이버 앱스토어 개발자센터에서 등록한 상품정보를 불러와 상품명이나 상품가격등을 셋팅하는데 사용한다.
	 */
	/*
	 * - NIAPHelper getProductDetailsAsync API Callback Listener.
	 * You can load product's detail information from NAVER APPSTORE DEV CENTER for getting product's name or price.
	 */
	GetProductDetailsListener getProductDetailsListener = new GetProductDetailsListener() {
		@Override
		public void onSuccess(List<Product> validProductList, List<InvalidProduct> inValidProductList) {
			// 상품정보를 성공적으로 불러오면 화면에 상품명과 가격을 표시한다.
			// When API call finished successfully, display product's name and price.
			for (Product validProduct : validProductList) {
				itemListTxt.setText(itemListTxt.getText() + " " + validProduct.getProductName() + "(KRW" + validProduct.getSellPrice() + ") ");
			}
		}

		@Override
		public void onFail(NIAPHelperErrorType errorType) {
			complain("error has occurred on getProductDetails.", errorType);

		}
	};

	/*
	 * - NIAPHelper 상품소진(consumeAsync) API 콜백 리스너.
	 * 소모성 상품 소진요청 후 콜백으로 실행되며,
	 * 정상적으로 상품 소진이 완료되면 아이템 지급이나 혜택 적용 등의 비즈니스 코드를 실행한다.
	 */
	/*
	 * - NIAPHelper consumeAsunc API Callback Listener.
	 * This Listener runs as callback request exhausted after consuming products.
	 * From here, you can supply gifts or provide items that depends on business logic.
	 */
	ConsumeListener consumeListener = new ConsumeListener() {
		@Override
		public void onSuccess(Purchase purchase) {
			// 정상적으로 상품이 소진된경우 아이템을 지급한다.
			// When consumption is successfully complete, provide items.
			if (purchase.getProductCode().equals(PRODUCT_CODE_CONSUMABLE_JEWEL_50)) {
				mJewels = mJewels + 50;
				saveData();
				updateUi();
			}
		}

		@Override
		public void onFail(NIAPHelperErrorType errorType) {
			if (errorType == NIAPHelperErrorType.PRODUCT_NOT_OWNED) {
				// 유저가 상품을 소유하지 않아서 소진할 수 없는 경우.
				// Can not consume because user does not have product.
				complain("You don't have product.", errorType);

			} else {
				// 기타 상품 소진과정중 에러 발생시 로그출력
				// If error occurred while consuming, logging it.
				complain("consumeAsync failed", errorType);
			}
		}
	};

	/*
	 * - NIAPHelper 상품구매(requestPayment) API 콜백 리스너.
	 * 상품 구매가 완료되면 Payload를 체크하여 정상적인 구매 요청건인지 개발사 validation을 거친 후
	 * 1. 소모성 상품인 경우 바로 소진시킨다(consumeAsync API 사용)
	 * 2. 영구성 상품인 경우 혜택을 적용시킨다(비즈니스 로직)
	 */
	/*
	 * - NIAPHelper requestPayment API Callback Listener.
	 * This Listener runs as callback request exhausted after purchase products.
	 * From here, you have to validate Payload and
	 * 1. If purchased product is consumable product, consume it.
	 * 2. If purchased product is permanent product, supply gifts that depends on business logic.
	 */
	RequestPaymentListener requestPaymentListener = new RequestPaymentListener() {
		@Override
		public void onSuccess(Purchase purchase) {

			if (niapHelper == null)
				return;

			// payload를 체크하여 정상적인 거래요청인지 확인한다.
			// Verify Payload.
			if (!verifyDeveloperPayload(userId, purchase)) {
				complain("Error has occurred while purchasing. Payload verification failed.");
				return;
			}
			
			//결제 signature 확인 (niapHelper 내부 결제 과정중, 이미 같은 로직이 구현되어 있다. 이 코드는 signature 검증로직 참고용으로 실제 앱 구현시에는 제외해도 무관하다.)
			boolean isSignatureVerified = isValidSignature(purchase.getSignature(), purchase.getOriginalPurchaseAsJsonText());
			if (!isSignatureVerified) {
				complain("Error has occurred while purchasing. Signature verification failed.");
				return;
			}

			if (purchase.getProductCode().equals(PRODUCT_CODE_CONSUMABLE_JEWEL_50)) {
				// 구매한 상품이 소모성 상품일 경우 바로 소진시킨다.
				// If purchased product is consumable product, consume it
				alert("Thank you for buying Jewels");
				niapHelper.consumeAsync(purchase, consumeListener);
			} else if (purchase.getProductCode().equals(PRODUCT_CODE_PERMANENT_GOLDEN_ANVIL)) {
				// 구매한 상품이 영구성 상품일 경우 소진시키지 않고 혜택을 지급한다.
				// If purchased product is permanent product, supply gifts that depends on business logic. Do not consume it.
				alert("Thank you for buying Golden Anvil");
				mHasGoldenAnvil = true;
			} else if (purchase.getProductCode().equals(PRODUCT_CODE_PERIODIC_SHIELD)) {
				alert("Thank you for lending Shield");
				mShieldPaymentSeq = purchase.getPaymentSeq();
			}
			saveData();
			updateUi();
		}

		@Override
		public void onFail(NIAPHelperErrorType errorType) {
			if (errorType == NIAPHelperErrorType.SIGNATURE_VERIFICATION_ERROR) {
				// 구매 서명 검증키가 변조된 경우. 개발사 서버등으로 로그를 전송하여 검증키가 변조된 원인을 찾아서 대응하여야 한다.
				// If purchase signature verification has been failed, you should log it on your owned server for find why this error has been occurred.
				complain("Purchase signature verification has been failed", errorType);
			} else if (errorType == NIAPHelperErrorType.PURCHASE_PROCESS_NOT_WORKED) {
				// 구매 과정 중 네이버앱스토어앱 내부 문제로 결제가 실패한 경우. 개발사 서버등으로 로그를 전송하여 앱스토어 담당자에게 전달하여 원인을 파악한다.
				// This case may be caused by because of NAVER APPSTORE APP's internal error. You should log it on your own server and, deliver it to NAVER APPSTORE to find problem.
				complain("There is some problem on NAVER APPSTORE.", errorType);
			} else if (errorType == NIAPHelperErrorType.NETWORK_ERROR) {
				// 구매 과정 중 네트워크 오류로 결제에 실패한 경우
				// This case may be caused by because of network connection problem.
				complain("There is some network problem on purchasing. Please retry.", errorType);
			} else if (errorType == NIAPHelperErrorType.PRODUCT_ALREADY_OWNED) {
				// 이미 가지고 있는 상품을 재구매 할때 발생하는 오류. 영구성 상품인 경우 정상적인 오류이며, 소모성 상품일 경우에는 기존 상품을 consume 시켜야 재구매가 가능하다.
				// (이 경우 구매 로직 어딘가에서 소모성 상품구매후 바로 consume하고 혜택을 지급하는 부분이 빠져있다는 것을 의미한다.)
				// This case may be caused by because user already have same product.
				// If purchasing product was permanent product, this error worked correctly. but in case of consumable product, you have to consume user's already owned product for purchase for new one.
				// (In this case, there is some missing logic in your purchase code that is consuming consumable product after purchase.)
				complain("You already owned same product.", errorType);
			} else {
				// If other type of error occurred during purchase, log it.
				complain("requestPayment fail", errorType);
			}
		}

		@Override
		public void onCancel() {
			// If user cancels purchase
			Toast.makeText(MainActivity.this, "Purchase has been canceled.", Toast.LENGTH_SHORT).show();
		}
	};

	/*
	 * - NIAPHelper 구매상품 전체 조회 API 콜백 리스너.
	 * 앱 최초 로딩시 사용자의 구매상품리스트를 조회하여 기존에 구매후 소진되지 않은 소모성 상품이 존재하는 경우
	 * 바로 소진시키고 혜택을 지급하며, 영구성 상품 구매내역이 있으면 혜택을 적용한다.
	 */
	/*
	 * - NIAPHelper getPurchasesAsync API Callback Listener.
	 * While first initializing App's data, you should access user's purchases list and
	 * 1. If user has not-consumed consumable product, consume it.
	 * 2. If user has permanent product, supply gifts that depends on business logic.(Do not consume it.)
	 */
	GetPurchasesListener getPurchasesListener = new GetPurchasesListener() {
		@Override
		public void onSuccess(List<Purchase> purchases) {
			if (niapHelper == null)
				return;

			for (Purchase purchase : purchases) {
				// payload를 체크하여 정상적인 거래요청인지 확인한다.
				// validate Payload.
				if (!verifyDeveloperPayload(userId, purchase)) {
					complain("Error has occurred while getting purchased list. Payload verification failed.");
					return;
				}

				if (purchase.getProductCode().equals(PRODUCT_CODE_CONSUMABLE_JEWEL_50)) {
					// 조회된 상품이 소모성 상품일 경우 바로 소진시킨다.
					// If user has consumable product, consume it.
					niapHelper.consumeAsync(purchase, consumeListener);
				} else if (purchase.getProductCode().equals(PRODUCT_CODE_PERMANENT_GOLDEN_ANVIL)) {
					// 조회된 상품이 영구성 상품일 경우 소진시키지 않고 혜택을 지급한다.
					// If user has permanent product, supply gifts that depends on business logic. Do not consume it.
					mHasGoldenAnvil = true;
					mCurrentPercent = 70;
				}
			}
			updateUi();
		}

		@Override
		public void onFail(NIAPHelperErrorType errorType) {
			if (errorType == NIAPHelperErrorType.SIGNATURE_VERIFICATION_ERROR) {
				// 구매 서명 검증키가 변조된 경우. 개발사 서버등으로 로그를 전송하여 검증키가 변조된 원인을 찾아서 대응하여야 한다.
				// If purchase signature verification has been failed, you should log it on your owned server for finding why this error has been occurred.
				complain("Purchase signature verification has been failed", errorType);
			} else if (errorType == NIAPHelperErrorType.USER_NOT_LOGGED_IN) {
				// 네이버앱스토어앱 로그인이 되어있지 않아 결제내역을 불러올수 없는 경우.
				// This case may be caused by because user account has been logged off in NAVER APPSTORE APP.
				complain("getPurchasesListener - Please login NAVER APPSTORE.", errorType);
			} else {
				complain("getPurchasesAsync failed", errorType);
			}
		}
	};

	/*
	 * - NIAPHelper 구매상품 개별 조회 API 콜백 리스너.
	 * 구매상품 개별 조회 API는 기간제 상품의 처리에 주로 사용하며, 사용기간이 남아있는경우 혜택을 지급하고 사용기간이 만료된 경우는 해당 상품을 소진 시킨다.
	 * (소진이 완료되어야 해당 상품 재구매가 가능하다.)
	 * 기간제 상품의 사용기간에 대한 체크는 앱 자체에서 처리하고 NIAP에서는 단순히 만료된 상품을 소진시키는 역할만 담당한다.
	 */
	/*
	 * - NIAPHelper getSinglePurchaseAsync API Callback Listener.
	 * getSinglePurchaseAsync API tend to be used by periodic products.
	 * In this listener, you can process business logic if time remains for periodic product
	 * or expired, It must be consumed so that the user can buy this product again.
	 * You have to check duration of periodic product by yourself. NIAP only provides consume API for expired one.
	 */
	GetSinglePurchaseListener getPurchaseListener = new GetSinglePurchaseListener() {
		@Override
		public void onSuccess(Purchase purchase) {

			// payload를 체크하여 정상적인 거래요청인지 확인한다.
			// Verify Payload.
			if (!verifyDeveloperPayload(userId, purchase)) {
				complain("Error has occurred while getting purchased list. Payload verification failed.");
				return;
			}

			// 기간제 상품
			// If purchase is periodic product,
			if (purchase.getProductCode().equals(PRODUCT_CODE_PERIODIC_SHIELD)) {
				// 기간제 상품 만료 체크.
				// Check the product's expiration period. In this sample app, It checks time locally for convenient implementation but, your app should check it on your owned server.
				if (purchase.getPaymentTime() + mShieldDueTime <= System.currentTimeMillis()) {
					// 만료된 경우 상품을 소진한다.
					// If expired, consume product.
					niapHelper.consumeAsync(purchase, consumeListener);

					// 비즈니스 로직 처리
					// Process your business logic.
					mShieldPaymentSeq = null;
					complain("Your Shield has been expired");
				} else {
					// 만료되지 않는경우 혜택 지급
					// If not expired yet, process only product's business logic.
					mShieldPaymentSeq = purchase.getPaymentSeq();
				}
			}
			updateUi();
			saveData();
		}

		@Override
		public void onFail(NIAPHelperErrorType errorType) {
			if (errorType == NIAPHelperErrorType.SIGNATURE_VERIFICATION_ERROR) {
				// 구매 서명 검증키가 변조된 경우. 개발사 서버등으로 로그를 전송하여 검증키가 변조된 원인을 찾아서 대응하여야 한다.
				// If purchase signature verification has been failed, you should log it on your owned server for find why this error has been occurred.
				complain("Purchase signature verification has been failed", errorType);
			} else if (errorType == NIAPHelperErrorType.USER_NOT_LOGGED_IN) {
				// 네이버앱스토어앱 로그인이 되어있지 않아 결제내역을 불러올수 없는 경우.
				// This case may be caused by because user account has been logged off in NAVER APPSTORE APP.
				complain("getSinglePurchaseListener - Please login NAVER APPSTORE.", errorType);
			} else if (errorType == NIAPHelperErrorType.NON_EXISTENT_PURCHASE) {
				// 해당 paymentSeq에 대한 구매정보를 찾을수 없는 경우.
				// This case may be caused by because there is no purchase information for that paymentSeq.
				complain("There is no purchase informaion for that paymentSeq.", errorType);
			} else if (errorType == NIAPHelperErrorType.ALREADY_CONSUMED) {
				// 이미 소진 완료되어 데이터를 불러올 수 없는 경우.
				// This case may be caused by because target purchase had been already consumed.
				complain("Target purchase had been already consumed.", errorType);
			} else {
				complain("getPurchasesAsync failed", errorType);
			}

		}
	};

	/*
	 * - 결제 액티비티에서 넘어온 인텐트를 처리하는 메소드 오버라이딩(필수)
	 */
	/*
	 * - Override onActivityResult method for handling Purchase Activity's Intents
	 * (IMPORTANT - You have to override this method for receive other activity's intents)
	 */
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		Log.d(TAG, "onActivityResult(" + requestCode + "," + resultCode + "," + data);
		if (niapHelper == null)
			return;

		if (!niapHelper.handleActivityResult(requestCode, resultCode, data)) {
			// NIAPHelper가 핸들링 하지 않는 Result일 경우 여기서 처리한다.
			// You can handle result here that NIAPHelper does not handle.

			Log.d(TAG, "NIAP Helper does not handle onActivityResult");
			super.onActivityResult(requestCode, resultCode, data);
		} else {
			// NIAPHelper가 핸들링하는 Result
			// onActivityResult handled by NIAPHelper.
			Log.d(TAG, "NIAP Helper handles onActivityResult");
		}
	}

	/*
	 * - 개발사 결제 검증용 Payload 호출 메소드. (개발사에서 직접 구현한다.)
	 * 개발사 게임 서버 등에서 임의의 string을 생성하여, 상품 결제시(requestPayment) 파라메터로 넘기면
	 * 결제완료후 영수증 정보로 해당 Payload값을 다시 리턴해 주고, 혜택 지급 전 Payload값을 검증하는 용도등으로 사용한다.
	 */
	/*
	 * - Method for getting Payload string. (You have to implement this method by yourself.)
	 * We recommend to create any random string from your own server for payload string.
	 * Payload should be different between each of the payment transactions.
	 */
	private String getPayLoad(String userId) {
		return userId + "PayLoad!@#$%";
	}

	/*
	 * - Payload 검증 메소드 (개발사에서 직접 구현한다.)
	 */
	/*
	 * - Payload validation method (You have to implement this method by yourself.)
	 */
	boolean verifyDeveloperPayload(String userId, Purchase purchase) {
		String payload = purchase.getDeveloperPayload();

		// Payload 검증 로직을 직접 구현한다.
		// Logic for Payload verification.
		if (getPayLoad(userId).equals(payload)) {
			return true;
		} else {
			return false;
		}
	}

	/*
	 * - 버튼 이벤트 할당 메소드
	 */
	/*
	 * - Override onClick method for button click event.
	 */
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.buyImg:
			// 소모성 상품 구매버튼 - 소모성 상품코드를 파라메터로 Helper클래스의 requestPayment 메소드를 호출함
			// Button for buying consumable product - call requestPayment API using consumable product code
			niapHelper.requestPayment(MainActivity.this, PRODUCT_CODE_CONSUMABLE_JEWEL_50, getPayLoad(userId), NIAP_REQUEST_CODE, requestPaymentListener);
			break;
		case R.id.upgradeImg:
			// 영구성 상품 구매버튼 - 영구성 상품코드를 파라메터로 Helper클래스의 requestPayment 메소드를 호출함
			// Button for buying permanent product - call requestPayment API using permanent product code
			niapHelper.requestPayment(MainActivity.this, PRODUCT_CODE_PERMANENT_GOLDEN_ANVIL, getPayLoad(userId), NIAP_REQUEST_CODE, requestPaymentListener);
			break;
		case R.id.borrowImg:
			// 기간제 상품 구매버튼 = 기간제 상품코드를 파라메터로 Helper클래스의 requestPayment 메소드를 호출함
			// Button for buying periodic product - call requestPayment API using periodic product code
			niapHelper.requestPayment(MainActivity.this, PRODUCT_CODE_PERIODIC_SHIELD, getPayLoad(userId), NIAP_REQUEST_CODE, requestPaymentListener);
			break;
		case R.id.reinforceImg: {
			// 강화버튼 - 게임 비즈니스 로직 부분
			// Button for business logic.
			if (mJewels <= 0) {
				Toast.makeText(MainActivity.this, "You don't have any Jewels.", Toast.LENGTH_LONG).show();
				return;
			}

			android.content.DialogInterface.OnClickListener alertDialogLister = new android.content.DialogInterface.OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					switch (which) {
					case AlertDialog.BUTTON_POSITIVE:
						doReinforcement();
						break;

					case AlertDialog.BUTTON_NEGATIVE:
						Toast.makeText(MainActivity.this, "Canceled", Toast.LENGTH_LONG).show();
						break;

					default:
						Toast.makeText(MainActivity.this, "No Action", Toast.LENGTH_LONG).show();
					}
				}
			};

			AlertDialog.Builder alertBuilder = new AlertDialog.Builder(MainActivity.this);
			alertBuilder.setTitle("Do you want reinforcement?").setPositiveButton("Yes", alertDialogLister).setNegativeButton("No", alertDialogLister).show();
		}

		default:
			break;
		}
	}

	/*
	 * - 액티비티 onDestroy 메소드 오버라이딩(필수)
	 */
	/*
	 * - Override onDestory method for release NIAPHelper instance. (Important!!)
	 */
	@Override
	public void onDestroy() {
		super.onDestroy();

		// 헬퍼 release (중요함)
		// release NIAPHelper (IMPORTANT)
		if (niapHelper != null) {
			Log.d(TAG, "release helper");
			niapHelper.terminate();
			niapHelper = null;
		}

		PRODUCT_CODE_LIST = null;
	}

	/*
	 * - 액티비티 onRestart 메소드 오버라이딩. 
	 *   유저가 앱스토어 앱을 설치하고 액티비티로 복귀할 때 niapHelper를 초기화 한다.
	 */
	/*
	 * - Override onRestart method for release NIAPHelper instance.
	 *   When user get back to activity after installs NAVER APPSTORE APP, initialize NIAPHelper instance. 
	 */
	@Override
	public void onRestart() {
		Log.d(TAG, "onRestart Activity");
		super.onRestart();

		if (niapHelper == null) {
			// 인앱결제 Helper 클래스 인스턴스 생성
			// Create NIAP Helper Instance
			Log.d(TAG, "onRestart - Recreate helper");
			niapHelper = new NIAPHelper(this, BASE64_PUBLIC_KEY);
		}

		if (niapHelper.isInitialized() == false) {
			// 인앱결제 Helper 클래스 초기화
			// Initialize NIAP Helper Instance
			Log.d(TAG, "onRestart - Initialize helper");
			niapHelper.initialize(onInitializeFinishedListener);
		}
	}

	/*
	 * - 에러 다이얼로그 출력 메소드
	 */
	/*
	 * - Method for error AlertDialog
	 */
	private void complain(String message) {
		String errorMessage = message + " error has occurred";
		Log.e(TAG, errorMessage);
		alert("Error: " + errorMessage);
	}

	private void complain(String message, NIAPHelperErrorType errorType) {
		String errorMessage = message + " error has occurred \ncode : " + errorType.getErrorCode() + ", details : " + errorType.getErrorDetails(); 
		Log.e(TAG, errorMessage);
		alert(errorMessage);
	}

	/*
	 * - 에러 다이얼로그 출력 메소드
	 */
	/*
	 * - Method for error AlertDialog
	 */
	private void alert(String message) {
		AlertDialog.Builder bld = new AlertDialog.Builder(this);
		bld.setMessage(message).setNeutralButton("OK", null).create().show();
	}

	/*
	 * - 화면 UI 갱신 메소드(게임 비즈니스 로직으로 인앱결제와 무관함.)
	 */
	/*
	 * - Method for updating UI. (business logic)
	 */
	private void updateUi() {
		jewelCountTxt.setText(" : " + String.valueOf(mJewels));
		attackRateTxt.setText(" : " + String.valueOf(mCurrentAttackRate));
		percentTxt.setText(" : " + String.valueOf(mCurrentPercent) + "%");

		if (mHasGoldenAnvil) {
			anvilImg.setImageResource(R.drawable.anvil2);
			upgradeImg.setVisibility(ImageView.INVISIBLE);
		}

		if (mShieldPaymentSeq != null) {
			attackRateTxt.setText(attackRateTxt.getText() + " +(10)");
			borrowImg.setVisibility(ImageView.INVISIBLE);
		} else {
			borrowImg.setVisibility(ImageView.VISIBLE);
			attackRateTxt.setText(attackRateTxt.getText() + " +(0)");
		}
	}

	/*
	 * - 게임 데이터 로드 메소드 (게임 비즈니스 로직으로 인앱결제와 무관함.)
	 */
	/*
	 * - Method for loading business data. (business logic)
	 */
	private void loadData() {
		SharedPreferences sharedPreferences = getPreferences(MODE_PRIVATE);
		mJewels = sharedPreferences.getInt("jewel", 20);
		mCurrentAttackRate = sharedPreferences.getInt("attackRate", 10);
		mCurrentPercent = sharedPreferences.getInt("percent", 60);
		mShieldPaymentSeq = sharedPreferences.getString("shieldPaymentSeq", null);
	}

	/*
	 * - 게임 데이터 저장 메소드 (게임 비즈니스 로직으로 인앱결제와 무관함.)
	 */
	/*
	 * - Method for saving business data. (business logic)
	 */
	private void saveData() {
		SharedPreferences.Editor spe = getPreferences(MODE_PRIVATE).edit();
		spe.putInt("jewel", mJewels);
		spe.putInt("ar", mCurrentAttackRate);
		spe.putInt("percent", mCurrentPercent);
		spe.putString("shieldPaymentSeq", mShieldPaymentSeq);

		spe.commit();
	}

	/*
	 * - UI 버튼 초기화 메소드 (게임 비즈니스 로직으로 인앱결제와 무관함.)
	 */
	/*
	 * - Method for initializing UI buttons. (business logic)
	 */
	private void initButton() {
		reinforceImg = (ImageView) findViewById(R.id.reinforceImg);
		buyImg = (ImageView) findViewById(R.id.buyImg);
		upgradeImg = (ImageView) findViewById(R.id.upgradeImg);
		borrowImg = (ImageView) findViewById(R.id.borrowImg);

		reinforceImg.setOnClickListener(this);
		buyImg.setOnClickListener(this);
		upgradeImg.setOnClickListener(this);
		borrowImg.setOnClickListener(this);

		jewelCountTxt = (TextView) findViewById(R.id.jewelCount);
		attackRateTxt = (TextView) findViewById(R.id.ar);
		percentTxt = (TextView) findViewById(R.id.percent);
		itemListTxt = (TextView) findViewById(R.id.itemList);

		anvilImg = (ImageView) findViewById(R.id.anvilImg);
	}

	/*
	 * - 강화 실행 메소드(게임 비즈니스 로직으로 인앱결제와 무관함.)
	 */
	/*
	 * - Method for reinforcement logic. (business logic)
	 */
	private void doReinforcement() {
		reinforceProgressDialog = ProgressDialog.show(this, "Weapon reinforcement", "Working on Anvil...", true, false);

		new Thread() {
			public void run() {
				mHandler.postDelayed(new Runnable() {
					@Override
					public void run() {
						int randNum = (int) (Math.random() * 100);
						if (randNum <= mCurrentPercent) {
							// success
							Toast.makeText(MainActivity.this, "reinforcement Sucess", Toast.LENGTH_LONG).show();
							mCurrentAttackRate++;

						} else {
							// fail
							Toast.makeText(MainActivity.this, "reinforcement Fail", Toast.LENGTH_LONG).show();
						}
						--mJewels;
						saveData();
						updateUi();
						reinforceProgressDialog.dismiss();
					}
				}, 1500);
			}
		}.start();
	}
	
	/*
	 * - 앱스토어 결제 signature 확인용 메소드
	 */
	/*
	 * - Method for verification Purchase signature.
	 */
	private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
	private static final String KEY_ALGORITHM = "RSA";

	private PublicKey generatePublicKey(String encodedPublicKeyString) throws Exception {
		byte[] publicKeyBytes = android.util.Base64.decode(encodedPublicKeyString, android.util.Base64.DEFAULT);
		X509EncodedKeySpec x509KeySpec = new X509EncodedKeySpec(publicKeyBytes);

		try {
			KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);
			return keyFactory.generatePublic(x509KeySpec);
		} catch (GeneralSecurityException e) {
			throw new Exception("Fail to create public RSA key.", e);
		}
	}
	
	private boolean isValidSignature(String signatureStr, String signedDataStr) {
		try {
			PublicKey publicKey = generatePublicKey(BASE64_PUBLIC_KEY);

			Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM);
			signature.initVerify(publicKey);
			signature.update(signedDataStr.getBytes());
			byte[] signatureBytes = Base64.decode(signatureStr, Base64.DEFAULT);

			boolean isVeryfied = signature.verify(signatureBytes);
			Log.d(TAG, "Signature Veryfied - " + isVeryfied);

			return isVeryfied;
		} catch (Exception e) {
			Log.e(TAG, e.toString());
			return false;
		}
	}
}