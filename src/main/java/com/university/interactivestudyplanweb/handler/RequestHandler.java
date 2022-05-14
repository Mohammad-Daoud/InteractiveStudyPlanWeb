package com.university.interactivestudyplanweb.handler;

import com.university.interactivestudyplanweb.model.Course;
import org.springframework.http.HttpMethod;
import org.springframework.http.client.support.BasicAuthenticationInterceptor;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.method.support.InvocableHandlerMethod;

import java.util.List;
import java.util.Map;

public class RequestHandler  {

    private static final String BASE_URI = "http://localhost:8000/read/";
    private final RestTemplate REST_REQUEST;

    private RequestHandler(){
        REST_REQUEST = new RestTemplate();
    }
    public static RequestHandler create(){
        return new RequestHandler();
    }


    public Object doGetRequest(String urlMethod){
        return REST_REQUEST.exchange(BASE_URI + urlMethod, HttpMethod.GET,null, Object.class).getBody();
    }

    public Object doPostRequest(Map<String,Object> postBody, String urlMethod){
         return REST_REQUEST.postForEntity(BASE_URI + urlMethod,postBody,Object.class).getBody();
    }

    public void doDeleteRequest(String urlMethod){
        REST_REQUEST.delete(BASE_URI+urlMethod);
    }


}
