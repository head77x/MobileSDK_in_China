package com.xsolla.android.sdk.util.validator;


import com.xsolla.android.sdk.ApplicationTestCase;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class CvvValidatorTest extends ApplicationTestCase {

    CvvValidator cvvValidator;

    @Before
    public void setUp(){
        cvvValidator = new CvvValidator();
    }

    @Test
    public void testValidation(){
        Assert.assertTrue(cvvValidator.validate("123"));
        Assert.assertFalse(cvvValidator.validate("1"));
        //Assert.assertTrue(cvvValidator.validate("alacazam"));
    }

}
