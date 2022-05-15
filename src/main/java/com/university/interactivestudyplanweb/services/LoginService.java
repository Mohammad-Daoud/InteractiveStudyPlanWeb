package com.university.interactivestudyplanweb.services;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.university.interactivestudyplanweb.handler.ResponseHandler;
import com.university.interactivestudyplanweb.model.users.Administrator;
import com.university.interactivestudyplanweb.model.users.Instructor;
import com.university.interactivestudyplanweb.model.users.Student;
import com.university.interactivestudyplanweb.model.users.UserType;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.Map;

@Service
public class LoginService {
    private final ResponseHandler<Object> LOGIN_RESPONSE = new ResponseHandler<>("http://localhost:8000/");
    Administrator administrator = new Administrator();
    Instructor instructor = new Instructor();
    Student student = new Student();
    UserType userType;

    public Map<String, Object> getInfo(String username, String password) {
        try {
            Object temp = LOGIN_RESPONSE.getResponse("login?username=" + username + "&password=" + password, Object.class);
            ObjectMapper mapper = new ObjectMapper();
            administrator = mapper.convertValue(temp, Administrator.class);
            userType = administrator.getType();
            Map<String, Object> userInfo = new Hashtable<>();
            switch (userType) {
                case ADMIN:
                    userInfo.put("userType", administrator.getType().name());
                    userInfo.put("username", administrator.getUsername());
                    userInfo.put("fname", administrator.getFname());
                    userInfo.put("lname", administrator.getLname());
                    return userInfo;
                case INSTRUCTOR:
                    instructor = mapper.convertValue(temp, Instructor.class);
                    userInfo.put("userType", instructor.getType().name());
                    userInfo.put("username", instructor.getUsername());
                    userInfo.put("fname", instructor.getFname());
                    userInfo.put("lname", instructor.getLname());
                    return userInfo;
                case STUDENT:
                    student = mapper.convertValue(temp, Student.class);
                    userInfo.put("userType", student.getType().name());
                    userInfo.put("fname", student.getFname());
                    userInfo.put("lname", student.getLname());
                    userInfo.put("studentID", student.getStudentID());
                    userInfo.put("schoolName", student.getSchoolName());
                    userInfo.put("departmentName", student.getDepName());
                    userInfo.put("year", student.getPlanYear());
                    return userInfo;
                default:
                    return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
