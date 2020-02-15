package com.xsolla.android.sdkexampleapp;

import android.test.ActivityInstrumentationTestCase2;

import static android.support.test.espresso.Espresso.closeSoftKeyboard;
import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.Espresso.pressBack;
import static android.support.test.espresso.action.ViewActions.clearText;
import static android.support.test.espresso.action.ViewActions.click;
import static android.support.test.espresso.action.ViewActions.scrollTo;
import static android.support.test.espresso.action.ViewActions.typeText;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.isRoot;
import static android.support.test.espresso.matcher.ViewMatchers.withId;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static com.xsolla.android.sdkexampleapp.util.Waiter.waitId;

public class MainTest extends ActivityInstrumentationTestCase2<MainActivity> {

    @SuppressWarnings("deprecation")
    public MainTest() {
        super("com.xsolla.xsollasdkapp", MainActivity.class);
    }

    public MainTest(Class<MainActivity> activityClass) {
        super(activityClass);
    }

    @Override
    public void setUp() throws Exception {
        super.setUp();
        MainActivity activity = getActivity();
    }

    //OTD7wpNxj6wxgSBf4f1AzNK5I7iaG9wW
//    public void test1(){
//        onView(withId(R.id.edToken))
//                .check(matches(isDisplayed()))
//                .perform(clearText())
//                .perform(typeText("RFwpkyCEgMw7LwqI4a776jNiRCjWKkzg"));
//
//        onView(withId(R.id.button))
//                .check(matches(isDisplayed()))
//                .perform(click());
//
//
//        onView(withId(R.id.tvResult)).perform(waitId(R.id.tvResult, Sampling.SECONDS_10));
//
//        onView(withId(R.id.tvResult))
//                .check(matches(withText("0")));
//
//    }

    public void testTokenWithZip(){
        onView(withId(R.id.edToken))
                .check(matches(isDisplayed()))
                .perform(clearText())
                .perform(typeText("w0Rn9qvx9rzHVfO2qyAc85ISm2znHD4i"));

        closeSoftKeyboard();
        onView(withId(R.id.button2))
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvDescription, Sampling.SECONDS_10));

        onView(withId(R.id.edCardNumber))
                .check(matches(isDisplayed()))
                .perform(typeText("4111111111111111"));
        onView(withId(R.id.edYear))
                .check(matches(isDisplayed()))
                .perform(typeText("20"));
        onView(withId(R.id.edMonth))
                .check(matches(isDisplayed()))
                .perform(typeText("12"));
        onView(withId(R.id.edZipCode))
                .check(matches(isDisplayed()))
                .perform(typeText("1234"));
        onView(withId(R.id.edCvv))
                .check(matches(isDisplayed()))
                .perform(typeText("123"));
        onView(withId(R.id.btnPay))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvProductName, Sampling.SECONDS_10));

        onView(withId(R.id.btnComplete))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());
    }


    public void testTokenWithCardHolder(){
        onView(withId(R.id.edToken))
                .check(matches(isDisplayed()))
                .perform(clearText())
                .perform(typeText("yeenj6Z9hH4elpB42Hpsm1vRGhcVCTyH"));

        closeSoftKeyboard();
        onView(withId(R.id.button2))
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvDescription, Sampling.SECONDS_10));

        onView(withId(R.id.edCardNumber))
                .check(matches(isDisplayed()))
                .perform(typeText("4111111111111111"));
        onView(withId(R.id.edYear))
                .check(matches(isDisplayed()))
                .perform(typeText("20"));
        onView(withId(R.id.edMonth))
                .check(matches(isDisplayed()))
                .perform(typeText("12"));
        onView(withId(R.id.edCardHolder))
                .check(matches(isDisplayed()))
                .perform(typeText("Ivan"));
        onView(withId(R.id.edCvv))
                .check(matches(isDisplayed()))
                .perform(typeText("123"));
        onView(withId(R.id.btnPay))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvProductName, Sampling.SECONDS_10));

        onView(withId(R.id.btnComplete))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());
    }


    public void testSimpleToken(){
        onView(withId(R.id.edToken))
                .check(matches(isDisplayed()))
                .perform(clearText())
                .perform(typeText("sBVfYM208VSA6GiBj108Y1UKJlJ3Lv6F"));

        closeSoftKeyboard();
        onView(withId(R.id.button2))
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvDescription, Sampling.SECONDS_10));

        onView(withId(R.id.edCardNumber))
                .check(matches(isDisplayed()))
                .perform(typeText("4111111111111111"));
        onView(withId(R.id.edYear))
                .check(matches(isDisplayed()))
                .perform(typeText("20"));
        onView(withId(R.id.edMonth))
                .check(matches(isDisplayed()))
                .perform(typeText("12"));
        onView(withId(R.id.edCvv))
                .check(matches(isDisplayed()))
                .perform(typeText("123"));
        onView(withId(R.id.btnPay))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvProductName, Sampling.SECONDS_10));

        onView(withId(R.id.btnComplete))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());
    }

    public void testSimpleTokenInvalidCardInfo(){
        onView(withId(R.id.edToken))
                .check(matches(isDisplayed()))
                .perform(clearText())
                .perform(typeText("sBVfYM208VSA6GiBj108Y1UKJlJ3Lv6F"));

        closeSoftKeyboard();
        onView(withId(R.id.button2))
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvDescription, Sampling.SECONDS_10));

        onView(withId(R.id.edCardNumber))
                .check(matches(isDisplayed()))
                .perform(typeText("4111111111111111"));
        onView(withId(R.id.edYear))
                .check(matches(isDisplayed()))
                .perform(typeText("20"));
        onView(withId(R.id.edMonth))
                .check(matches(isDisplayed()))
                .perform(typeText("12"));
        onView(withId(R.id.edCvv))
                .check(matches(isDisplayed()))
                .perform(typeText("123"));
        onView(withId(R.id.btnPay))
                .perform(scrollTo())
                .check(matches(isDisplayed()))
                .perform(click());

        onView(isRoot()).perform(waitId(R.id.tvError, Sampling.SECONDS_10));

        onView(withId(R.id.tvError))
                .perform(scrollTo())
                .check(matches(isDisplayed()));

        pressBack();
    }

}
