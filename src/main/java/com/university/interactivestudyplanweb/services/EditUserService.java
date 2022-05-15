package com.university.interactivestudyplanweb.services;


import com.university.interactivestudyplanweb.handler.ResponseHandler;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class EditUserService {
        private ResponseHandler<Object> USER_RESPONSE = new ResponseHandler<>("http://localhost:8000/");

        public void addAdmin(Map<String, Object> postBody){
                USER_RESPONSE.voidPostResponse(postBody,"addAdmin");
        }

        public void addAInstructor(Map<String, Object> postBody){
                USER_RESPONSE.voidPostResponse(postBody,"addAInstructor");
        }

        public void addStudent(Map<String, Object> postBody){
                USER_RESPONSE.voidPostResponse(postBody,"addStudent");
        }
}
