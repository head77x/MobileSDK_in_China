package com.xsolla.android.sdk.api.request.converter;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.squareup.okhttp.MediaType;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Type;

import retrofit.converter.ConversionException;
import retrofit.converter.Converter;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

public class XsollaJacksonConverter implements Converter {

    private static final MediaType MEDIA_TYPE = MediaType.parse("application/json; charset=UTF-8");
    public static final String ENCODING = "UTF-8";
    private final ObjectMapper objectMapper;

    public XsollaJacksonConverter() {
        this(new ObjectMapper());
    }

    public XsollaJacksonConverter(ObjectMapper objectMapper) {
        if (objectMapper == null) throw new NullPointerException("objectMapper == null");
        this.objectMapper = objectMapper;
    }

    @Override
    public Object fromBody(TypedInput body, Type type) throws ConversionException {
        InputStream is = null;
        try {
            is = body.in();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            JavaType javaType = objectMapper.getTypeFactory().constructType(type);
            return objectMapper.readValue(is, javaType);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (is != null) {
                    is.close();
                }
            } catch (IOException ignored) {
            }
        }
        return null;
    }

    @Override
    public TypedOutput toBody(Object object) {
        try {
            JavaType javaType = objectMapper.getTypeFactory().constructType(object.getClass());
            return new JsonTypedOutput(objectMapper.writerWithType(javaType).writeValueAsBytes(object), ENCODING);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    private static class JsonTypedOutput implements TypedOutput {
        private final byte[] jsonBytes;
        private final String mimeType;

        JsonTypedOutput(byte[] jsonBytes, String encode) {
            this.jsonBytes = jsonBytes;
            this.mimeType = "application/json; charset=" + encode;
        }

        @Override
        public String fileName() {
            return null;
        }

        @Override
        public String mimeType() {
            return mimeType;
        }

        @Override
        public long length() {
            return jsonBytes.length;
        }

        @Override
        public void writeTo(OutputStream out) throws IOException {
            out.write(jsonBytes);
        }
    }
}
