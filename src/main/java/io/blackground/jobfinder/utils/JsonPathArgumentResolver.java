
package io.blackground.jobfinder.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;


import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.apache.commons.io.IOUtils;
import org.springframework.util.StringUtils;

import com.jayway.jsonpath.JsonPath;

import io.blackground.jobfinder.controller.JsonArg;

public class JsonPathArgumentResolver implements HandlerMethodArgumentResolver{

    private static final String JSONBODYATTRIBUTE = "JSON_REQUEST_BODY";
    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        return parameter.hasParameterAnnotation(JsonArg.class);
    }

    @Override
    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
        String body = getRequestBody(webRequest);
        String arg = parameter.getParameterAnnotation(JsonArg.class).value();
        if (StringUtils.isEmpty(arg)) {
            arg = parameter.getParameterName();
        }
        Object val = JsonPath.parse(body).read(arg);
        return val;
    }

    private String getRequestBody(NativeWebRequest webRequest){
        HttpServletRequest servletRequest = webRequest.getNativeRequest(HttpServletRequest.class);

        String jsonBody = (String) webRequest.getAttribute(JSONBODYATTRIBUTE, NativeWebRequest.SCOPE_REQUEST);
        if (jsonBody==null){
            try {
                jsonBody = IOUtils.toString(servletRequest.getInputStream());
                webRequest.setAttribute(JSONBODYATTRIBUTE, jsonBody, NativeWebRequest.SCOPE_REQUEST);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return jsonBody;
    }

}