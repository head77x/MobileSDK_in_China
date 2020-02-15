package com.xsolla.android.sdk.api.request.converter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.xsolla.android.sdk.api.model.XsollaApiModel;
import com.xsolla.android.sdk.api.model.XsollaTranslations;

import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;

import retrofit.converter.ConversionException;
import retrofit.mime.MimeUtil;
import retrofit.mime.TypedInput;

public class XsollaTranslationsConverter extends XsollaBaseConverter {

    public XsollaTranslationsConverter(XsollaApiModel apiModel) {
        super(apiModel);
    }

    @Override
    public XsollaTranslations fromBody(TypedInput body, Type type) throws ConversionException {
        String charset = ENCODING;
        if (body.mimeType() != null) {
            charset = MimeUtil.parseCharset(body.mimeType(), "application/json");
        }
        InputStreamReader isr = null;
        try {
            isr = new InputStreamReader(body.in(), charset);
            ObjectMapper objectMapper = new ObjectMapper();
            XsollaTranslations xsollaTranslations = new XsollaTranslations();
            xsollaTranslations.parse(objectMapper.readTree(isr));
            return xsollaTranslations;
        } catch (IOException e) {
            throw new ConversionException(e);
        } finally {
            if (isr != null) {
                try {
                    isr.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

}
