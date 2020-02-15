package com.xsolla.android.sdk.util.validator;

import com.xsolla.android.sdk.ApplicationTestCase;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class MonthValidatorTest extends ApplicationTestCase {

    MonthValidator monthValidator;

    @Before
    public void setUp(){
        monthValidator = new MonthValidator();
    }

    @Test
    public void testValidation(){
        for(int i = 1; i <= 12; i++){
            Assert.assertTrue(monthValidator.validate(Integer.toString(i)));
        }
        Assert.assertFalse(monthValidator.validate("0"));
        Assert.assertFalse(monthValidator.validate("123"));
    }

}
