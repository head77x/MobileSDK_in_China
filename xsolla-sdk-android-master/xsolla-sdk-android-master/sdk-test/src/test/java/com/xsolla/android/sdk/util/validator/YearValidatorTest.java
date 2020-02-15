package com.xsolla.android.sdk.util.validator;

import com.xsolla.android.sdk.ApplicationTestCase;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.Calendar;

public class YearValidatorTest extends ApplicationTestCase {

    YearValidator yearValidator;

    @Before
    public void setUp(){
        yearValidator = new YearValidator();
    }

    @Test
    public void testValidation(){
        Calendar calendar = Calendar.getInstance();
        int currentYear = calendar.get(Calendar.YEAR);
        Assert.assertTrue(yearValidator.validate(Integer.toString(currentYear)));
        Assert.assertTrue(yearValidator.validate(Integer.toString(currentYear + 7)));
        Assert.assertFalse(yearValidator.validate(Integer.toString(currentYear + 16)));
        Assert.assertFalse(yearValidator.validate(Integer.toString(currentYear - 10)));
    }

}
