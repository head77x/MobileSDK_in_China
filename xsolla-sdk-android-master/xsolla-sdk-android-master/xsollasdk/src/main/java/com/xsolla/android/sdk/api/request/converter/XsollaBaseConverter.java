package com.xsolla.android.sdk.api.request.converter;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import com.xsolla.android.sdk.api.model.XsollaApiModel;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Type;

import retrofit.converter.ConversionException;
import retrofit.converter.Converter;
import retrofit.mime.MimeUtil;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

public class XsollaBaseConverter<ApiModel extends XsollaApiModel> implements Converter {

    public static final String ENCODING = "UTF-8";
    private ApiModel mApiModel;
    private final ObjectMapper objectMapper;


    public XsollaBaseConverter(ApiModel apiModel) {
        this(apiModel, new ObjectMapper());
    }

    public XsollaBaseConverter(ApiModel apiModel, ObjectMapper objectMapper) {
        if (objectMapper == null) throw new NullPointerException("objectMapper == null");
        this.mApiModel = apiModel;
        this.objectMapper = objectMapper;
    }


    @Override
    public ApiModel fromBody(TypedInput body, Type type) throws ConversionException {
        String charset = ENCODING;
        if (body.mimeType() != null) {
            charset = MimeUtil.parseCharset(body.mimeType(), "application/json");
        }
        InputStreamReader isr = null;
        try {
            isr = new InputStreamReader(body.in(), charset);
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode rootNode = objectMapper.readTree(isr);
//            JsonNode errorNode = rootNode.findPath(XsollaApiConst.ERROR_MSG);
//            if (!errorNode.isMissingNode() && !"[]".equals(errorNode.toString())) {
//                XsollaError error = new XsollaError(errorNode);
//                String detailError = error.getErrorCode() + ":" + error.getErrorMessage();
//                throw new ApiErrorException(detailError);
//            }
            mApiModel.parse(rootNode);
            return mApiModel;
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
