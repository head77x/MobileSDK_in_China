package com.xsolla.android.sdk.api.request.converter;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.xsolla.android.sdk.api.model.XsollaApiModel;
import com.xsolla.android.sdk.api.model.XsollaForm;

import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Type;

import retrofit.converter.ConversionException;
import retrofit.mime.MimeUtil;
import retrofit.mime.TypedInput;

public class XsollaFormConverter extends XsollaBaseConverter {

    public XsollaFormConverter(XsollaApiModel apiModel) {
        super(apiModel);
    }

    @Override
    public XsollaForm fromBody(TypedInput body, Type type) throws ConversionException {
        String charset = ENCODING;
        if (body.mimeType() != null) {
            charset = MimeUtil.parseCharset(body.mimeType(), "application/json");
        }
        InputStreamReader isr = null;
        try {
            isr = new InputStreamReader(body.in(), charset);
            ObjectMapper objectMapper = new ObjectMapper();
            XsollaForm xsollaForm = new XsollaForm();
            JsonNode rootNode = objectMapper.readTree(isr);
            xsollaForm.parse(rootNode);
            return xsollaForm;
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
