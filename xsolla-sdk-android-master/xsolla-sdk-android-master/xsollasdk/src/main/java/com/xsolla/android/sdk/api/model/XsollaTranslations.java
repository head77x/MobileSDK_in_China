package com.xsolla.android.sdk.api.model;

import android.content.Context;
import android.util.Log;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class XsollaTranslations extends XsollaApiModel {

    public static final String API_ERROR_MESSAGE = "api_error_message";//"Sorry, we couldn't complete your request. Please contact our customer support."
    public static final String APP_ERROR_TITLE = "app_error_title";//"Something is going wrong"
    public static final String BALANCE_BACK_BUTTON = "balance_back_button";//"Continue payment"
    public static final String BALANCE_HISTORY_AMOUNT = "balance_history_amount";//"Amount"
    public static final String BALANCE_HISTORY_COMMENT = "balance_history_comment";//"Comment"
    public static final String BALANCE_HISTORY_DATE = "balance_history_date";//"Date"
    public static final String BALANCE_HISTORY_NO_DATA = "balance_history_no_data";//"No payments yet"
    public static final String BALANCE_HISTORY_PAGE_TITLE = "balance_history_page_title";//"Balance History"
    public static final String BALANCE_HISTORY_PAYMENT_INFO = "balance_history_payment_info";//"Payment via {{paymentName}}, transaction ID {{transactionId}}"
    public static final String BALANCE_HISTORY_REFRESH_BUTTON = "balance_history_refresh_button";//"Refresh"
    public static final String BALANCE_HISTORY_STATUS = "balance_history_status";//"Status"
    public static final String BALANCE_HISTORY_TRANSACTION_ID = "balance_history_transaction_id";//"Transaction ID {{id}}"
    public static final String COUNTRY_CHANGE = "country_change";//"change"
    public static final String FOOTER_AGREEMENT = "footer_agreement";//"User Agreement"
    public static final String FOOTER_SECURED_CONNECTION = "footer_secured_connection";//"Secured Connection"
    public static final String FORM_CC_CARD_NUMBER = "form_cc_card_number";//"Card number"
    public static final String FORM_CC_EULA = "form_cc_eula";//"By submitting payment information you acknowledge that you have read and agree to be bound by the terms and conditions of the Xsolla <a href="http://xsolla.com/eula" target="_blank">End-User License Agreement</a>. Please public static final String note = "note";//your credit card statement will public static final String read = "read";//Xsolla USA Inc."
    public static final String FORM_CC_EXP_DATE = "form_cc_exp_date";//"Expire Date"
    public static final String FORM_CHECKOUT = "form_checkout";//"Checkout"
    public static final String FORM_CHECKOUT_INTRO = "form_checkout_intro";//"To purchase {{itemDescription}} click "Pay now" and you will be redirected to the payment system"
    public static final String FORM_CONTINUE = "form_continue";//"Pay now"
    public static final String FORM_HEADER_CHANGE = "form_header_change";//"change"
    public static final String FORM_NUMBER_2PAY = "form_number_2pay";//"2pay number"
    public static final String FORM_NUMBER_XSOLLA = "form_number_xsolla";//"Xsolla number"
    public static final String FORM_TOTAL = "form_total";//"Total"
    public static final String LIST_OPTION_EXTRA = "list_option_extra";//"+{{percent}}%"
    public static final String LIST_OPTION_OFF = "list_option_off";//"-{{percent}}%"
    public static final String OFFER_BONUS = "offer_bonus";//"Bonus"
    public static final String OFFER_DISCOUNT = "offer_discount";//"Discount"
    public static final String OFFERS_COUNTDOWN_DAYS = "offers_countdown_days";//"days"
    public static final String OFFERS_COUNTDOWN_LABEL = "offers_countdown_label";//"Happy hour! Ends in"
    public static final String OFFERS_COUNTDOWN_METHODS = "offers_countdown_methods";//"Offers on selected payment methods"
    public static final String OFFERS_DEFAULT_NAME = "offers_default_name";//"Happy hour!"
    public static final String PAYMENT_INSTRUCTION_LABEL = "payment_instruction_label";//"How to pay"
    public static final String PAYMENT_LIST_POPULAR_TITLE = "payment_list_popular_title";//"Popular Payment Methods"
    public static final String PAYMENT_LIST_QUICK_TITLE = "payment_list_quick_title";//"Quick Payments"
    public static final String PAYMENT_LIST_SEARCH = "payment_list_search";//"Search Payment Method"
    public static final String PAYMENT_LIST_SEARCH_EG = "payment_list_search_eg";//"For example Visa"
    public static final String PAYMENT_LIST_SEARCH_MOBILE = "payment_list_search_mobile";//"Search"
    public static final String PAYMENT_LIST_SHOW_MORE = "payment_list_show_more";//"Show More Methods"
    public static final String PAYMENT_LIST_SHOW_QUICK = "payment_list_show_quick";//"Back to Quick Methods"
    public static final String PAYMENT_METHOD_NO_DATA = "payment_method_no_data";//"Payment option "{{method}}" not found. <br/>Please make sure you put the name right or try to use a different option."
    public static final String PAYMENT_METHODS_PAGE_TITLE = "payment_methods_page_title";//"Payment Methods"
    public static final String PAYMENT_PAGE_TITLE = "payment_page_title";//"Billing Information"
    public static final String PAYMENT_SUMMARY_BONUS = "payment_summary_bonus";//"Bonus"
    public static final String PAYMENT_SUMMARY_DISCOUNT = "payment_summary_discount";//"Discount"
    public static final String PAYMENT_SUMMARY_FEE = "payment_summary_fee";//"Fee"
    public static final String PAYMENT_SUMMARY_HEADER = "payment_summary_header";//"Order Summary"
    public static final String PAYMENT_SUMMARY_SUBTOTAL = "payment_summary_subtotal";//"SubTotal"
    public static final String PAYMENT_SUMMARY_TOTAL = "payment_summary_total";//"Total"
    public static final String PAYMENT_SUMMARY_VAT = "payment_summary_vat";//"VAT included"
    public static final String PAYMENT_SUMMARY_XSOLLA_CREDITS = "payment_summary_xsolla_credits";//"Xsolla Credits"
    public static final String PAYMENT_SUMMARY_XSOLLA_CREDITS_HINT = "payment_summary_xsolla_credits_hint";//"Xsolla Credits description here"
    public static final String PAYMENT_WAITING_BUTTON = "payment_waiting_button";//"Start again"
    public static final String PAYMENT_WAITING_NOTICE = "payment_waiting_notice";//"Waiting for payment completion"
    public static final String PERIOD_DAYS = "period_days";//"days"
    public static final String PERIOD_MONTH1 = "period_month1";//"month"
    public static final String PERIOD_MONTHS = "period_months";//"months"
    public static final String PRICEPOINT_OPTION_BUTTON = "pricepoint_option_button";//"Buy Package"
    public static final String PRICEPOINT_PAGE_TITLE = "pricepoint_page_title";//"Virtual Currency"
    public static final String SAVED_METHODS_TITLE = "saved_methods_title";//"Your Saved Payment Methods"
    public static final String SAVEDMETHOD_OTHER_ACCOUNT_LABEL = "savedmethod_other_account_label";//"Pay with another account"
    public static final String SAVEDMETHOD_OTHER_LABEL = "savedmethod_other_label";//"Choose another payment method"
    public static final String SAVEDMETHOD_OTHER_LABEL_MOBILE = "savedmethod_other_label_mobile";//"Choose Another Payment Method"
    public static final String SAVEDMETHOD_PAGE_TITLE = "savedmethod_page_title";//"Saved Payment Methods"
    public static final String STATE_NAME_INDEX = "state_name_index";//"Start again"
    public static final String STATE_NAME_LIST = "state_name_list";//"Payment Methods"
    public static final String STATE_NAME_PAYMENT = "state_name_payment";//"Payment"
    public static final String STATE_NAME_PRICEPOINT = "state_name_pricepoint";//"Virtual Currency"
    public static final String STATE_NAME_SAVEDMETHOD = "state_name_savedmethod";//"Saved Methods"
    public static final String STATE_NAME_SUBSCRIPTION = "state_name_subscription";//"Subscriptions"
    public static final String STATE_NAME_VIRTUALITEM = "state_name_virtualitem";//"Item Shop"
    public static final String STATUS_DONE_DESCRIPTION = "status_done_description";//"Successful purchase!"
    public static final String STATUS_PAGE_TITLE = "status_page_title";//"Payment Status"
    public static final String STATUS_PURCHASED_DESCRIPTION = "status_purchased_description";//"You purchased {{itemDescription}} for {{amount}}"
    public static final String SUBSCRIPTION_MOBILE_PAGE_TITLE = "subscription_mobile_page_title";//"Subscriptions"
    public static final String SUBSCRIPTION_PACKAGE_RATE = "subscription_package_rate";//"Charge {{amount}} every {{period}}"
    public static final String SUBSCRIPTION_PACKAGE_RATE_MOBILE = "subscription_package_rate_mobile";//"per {{period}}"
    public static final String SUBSCRIPTION_PAGE_TITLE = "subscription_page_title";//"Select Subscription"
    public static final String SUPPORT_CONTACT_US = "support_contact_us";//"Contact Us!"
    public static final String SUPPORT_CUSTOMER_SUPPORT = "support_customer_support";//"Customer support"
    public static final String SUPPORT_LABEL = "support_label";//"Customer Support"
    public static final String SUPPORT_NEED_HELP = "support_need_help";//"Need help?"
    public static final String SUPPORT_PHONE = "support_phone";//"+1 877 797 65 52"
    public static final String TOTAL = "total";//"Total:"
    public static final String USER_BALANCE_LABEL = "user_balance_label";//"Balance"
    public static final String VALIDATION_MESSAGE_CARD_MONTH = "validation_message_card_month";//"Expiration month is invalid"
    public static final String VALIDATION_MESSAGE_CARD_YEAR = "validation_message_card_year";//"Expiration year is invalid"
    public static final String VALIDATION_MESSAGE_CARDNUMBER = "validation_message_cardnumber";//"Please enter a valid credit card number"
    public static final String VALIDATION_MESSAGE_CVV = "validation_message_cvv";//"CVV2/CVC2 is invalid"
    public static final String VALIDATION_MESSAGE_EMAIL = "validation_message_email";//"Email is invalid"
    public static final String VALIDATION_MESSAGE_MAX = "validation_message_max";//"Please enter a value less than or equal to {0}."
    public static final String VALIDATION_MESSAGE_MAX_LENGTH = "validation_message_max_length";//"Please enter no more than {0} characters."
    public static final String VALIDATION_MESSAGE_MIN = "validation_message_min";//"Please enter a value greater than or equal to {0}."
    public static final String VALIDATION_MESSAGE_MIN_LENGTH = "validation_message_min_length";//"Please enter at least {0} characters."
    public static final String VALIDATION_MESSAGE_PHONE = "validation_message_phone";//"Phone is invalid"
    public static final String VALIDATION_MESSAGE_REQUIRED = "validation_message_required";//"Required"
    public static final String VIRTUAL_ITEM_OPTION_BUTTON = "virtual_item_option_button";//"Buy"
    public static final String VIRTUALITEM_NO_DATA = "virtualitem_no_data";//"No virtual items yet"
    public static final String VIRTUALITEM_PAGE_TITLE = "virtualitem_page_title";//"Item Shop"
    public static final String WHERE_IS_CPF_NAME = "where_is_cpf_name";//"Where to find your name"
    public static final String WHERE_IS_CPF_NUMBER = "where_is_cpf_number";//"Where to find your registration number"
    public static final String WHERE_IS_SECURITY_CODE = "where_is_security_code";//"Where to find your Security Code"
    public static final String WHERE_IS_ZIP_POSTAL_CODE = "where_is_zip_postal_code";//"Enter in the first 5 numbers or letters of your zip/postal code"
    public static final String XSOLLA_COPYRIGHT = "xsolla_copyright";//"© Xsolla, 2015"

    private String transFileFolderName = "translations";
    private String transFile = "translations.json";

    private JsonNode translationsNode;
    private HashMap<String, String> translations;

    public XsollaTranslations() {
        translations = new HashMap<>();
    }

    public XsollaTranslations(byte[] serializedObject) throws IOException {
        translations = new HashMap<>();
        ObjectMapper mapper = new ObjectMapper();
        JsonNode jsonNode = mapper.readTree(serializedObject);
        fillMap(jsonNode);
    }

    public void put(String key, String value) {
        translations.put(key, value);
    }

    public String get(String key) {
        String value = translations.get(key);
        if (value != null)
            return value;
        return "No key " + key;
    }

    public void save(Context context) {
        ObjectMapper mapper = new ObjectMapper();
        try {
//                File dir = context.getDir(transFileFolderName, Context.MODE_PRIVATE);
//                File file = new File(dir, transFile);
            FileOutputStream fos = context.openFileOutput(transFile, Context.MODE_PRIVATE);
            //if(file.exists() || file.createNewFile())
            mapper.writeValue(fos, translations);
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void load(Context context) {
        ObjectMapper mapper = new ObjectMapper();
        try {
//                File dir = context.getDir(transFileFolderName, Context.MODE_PRIVATE);
//                File file = new File(dir, transFile);
            FileInputStream fis = context.openFileInput(transFile);
            translations = null;
            translations = mapper.readValue(fis, new TypeReference<Map<String, String>>() {
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public XsollaApiModel parse(JsonNode rootNode) throws IOException {
        //JsonNode projectNode = rootNode.path("project");
        translationsNode = rootNode.path("translations");
        fillMap(translationsNode);
        return this;
    }

    private void fillMap(JsonNode translationsNode) {
        Iterator<Entry<String, JsonNode>> iterator = translationsNode.fields();
        while (iterator.hasNext()) {
            Entry<String, JsonNode> textNode = iterator.next();
            String key = textNode.getKey();
            String value = textNode.getValue().textValue();
            this.translations.put(key, value);
        }
    }

    public byte[] getByte() throws IOException {
        return new ObjectMapper().writeValueAsBytes(translationsNode);
    }
}
