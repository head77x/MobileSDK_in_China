package com.xsolla.android.sdkexampleapp.util;

import android.app.Activity;

import static android.support.test.espresso.Espresso.onView;
import static android.support.test.espresso.assertion.ViewAssertions.matches;
import static android.support.test.espresso.matcher.RootMatchers.withDecorView;
import static android.support.test.espresso.matcher.ViewMatchers.isDisplayed;
import static android.support.test.espresso.matcher.ViewMatchers.withText;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;

public class ToastChecker {

    public static void isToastShowing(String s, Activity activity){
        onView(withText(s)).inRoot(withDecorView(not(is(activity.getWindow().getDecorView())))).check(matches(isDisplayed()));
    }

}
