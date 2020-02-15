//
//  Copyright (c) 2014 Xsolla.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

package com.xsolla.android.sdk.util;

import android.util.Log;

import com.xsolla.android.sdk.XsollaSDK;
import com.xsolla.android.sdk.api.XsollaParameters;

import java.security.spec.InvalidParameterSpecException;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Various useful functions
 */
public class XsollaUtil {

    /**
     * Builds map from list of strings
     *
     * @param args key-value pairs for build a map. Must be a multiple of 2
     * @return Result map. If args not multiple of 2, last argument will be ignored
     */
    public static Map<String, Object> mapFrom(Object... args) {
        if (args.length % 2 != 0) {
            if (XsollaSDK.DEBUG)
                Log.w("XsollaUtil", "Params must be paired. Last one is ignored");
        }
        LinkedHashMap<String, Object> result = new LinkedHashMap<String, Object>(args.length / 2);
        for (int i = 0; i + 1 < args.length; i += 2) {
            if (args[i] == null || args[i + 1] == null || !(args[i] instanceof String)) {
                if (XsollaSDK.DEBUG)
                    Log.e("Xsolla SDK", "Error while using mapFrom", new InvalidParameterSpecException("Key and value must be specified. Key must be string"));
                continue;
            }
            result.put((String) args[i], args[i + 1]);
        }
        return result;
    }

    public static XsollaParameters paramsFrom(Object... args) {
        return new XsollaParameters(mapFrom(args));
    }

}
