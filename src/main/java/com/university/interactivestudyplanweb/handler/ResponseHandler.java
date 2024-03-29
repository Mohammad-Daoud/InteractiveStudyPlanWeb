package com.university.interactivestudyplanweb.handler;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.university.interactivestudyplanweb.model.Course;

import java.util.List;
import java.util.Map;

public class ResponseHandler<T> {
    private final ObjectMapper MAPPER = new ObjectMapper();
    private final RequestHandler REQUEST;

    public ResponseHandler(String baseURI) {
        this.REQUEST = RequestHandler.create(baseURI);
    }

    public T getResponse(String responseUrl, Class<T> mappingClass) {
        Object tempObject = REQUEST.doGetRequest(responseUrl);
        return MAPPER.convertValue(tempObject, mappingClass);
    }


    public List<T> getResponse(String responseUrl) {
        Object tempObject = REQUEST.doGetRequest(responseUrl);
        return MAPPER.convertValue(tempObject, new TypeReference<List<T>>() {
        });
    }

    public List<T> postResponse(Map<String, Object> postBody, String responseUrl) {
        Object tempObject = REQUEST.doPostRequest(postBody, responseUrl);
        return MAPPER.convertValue(tempObject, new TypeReference<List<T>>() {});
    }

    public void voidPostResponse(Map<String, Object> postBody, String responseUrl) {
        REQUEST.voidDoPostRequest(postBody, responseUrl);
    }
}

