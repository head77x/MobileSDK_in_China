package com.xsolla.android.sdk.util.validator;

import com.xsolla.android.sdk.ApplicationTestCase;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.regex.Matcher;

public class CCValidatorTest extends ApplicationTestCase {

    CCValidator ccValidator;

    @Before
    public void setUp(){
        ccValidator = new CCValidator();
    }

    @Test
    public void testValidation(){
        Assert.assertTrue(ccValidator.validate("4111 1111 1111 1111"));
        Assert.assertFalse(ccValidator.validate("4111 1111 1111 1112"));
        //Assert.assertTrue(ccValidator.validate("alacazam"));
    }

}
