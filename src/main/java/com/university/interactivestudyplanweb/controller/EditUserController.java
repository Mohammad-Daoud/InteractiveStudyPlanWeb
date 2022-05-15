package com.university.interactivestudyplanweb.controller;

import com.university.interactivestudyplanweb.model.users.UserType;
import com.university.interactivestudyplanweb.services.EditUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class EditUserController {
    @Autowired
    EditUserService service;

    @RequestMapping(value = "/add-admin", method = RequestMethod.GET)
    public String showAdmin() {
        return "/add-admin";
    }

    @RequestMapping(value = "/add-admin", method = RequestMethod.POST)
    public String addAdmin(@RequestParam String firstName,
                           @RequestParam String lastName,
                           @RequestParam String username,
                           @RequestParam String password) {
        Map<String, Object> adminObject = new HashMap<>();
        adminObject.put("fname", firstName);
        adminObject.put("lname", lastName);
        adminObject.put("username", username);
        adminObject.put("password", password);
        adminObject.put("userType", UserType.ADMIN.name());
        service.addAdmin(adminObject);
        return "/admin-search";
    }

    @RequestMapping(value = "/add-instructor", method = RequestMethod.GET)
    public String showInstructor() {
        return "/add-instructor";
    }

    @RequestMapping(value = "/add-instructor", method = RequestMethod.POST)
    public String addInstructor(/*@RequestParam long instructorID,*/
                                @RequestParam String firstName,
                                @RequestParam String lastName,
                                @RequestParam String username,
                                @RequestParam String password/*,
                                @RequestParam String schoolName,
                                @RequestParam String depName*/) {

        Map<String, Object> instructorObject = new HashMap<>();
        instructorObject.put("fname", firstName);
        instructorObject.put("lname", lastName);
        instructorObject.put("username", username);
        instructorObject.put("password", password);
        instructorObject.put("userType", UserType.INSTRUCTOR.name());
/*        instructorObject.put("instructorID", instructorID);
        instructorObject.put("schoolName", schoolName);
        instructorObject.put("depName", depName);
        service.addAInstructor(instructorObject);*/
        return "/admin-search";
    }

    @RequestMapping(value = "/add-student", method = RequestMethod.GET)
    public String showStudent() {
        return "/add-student";
    }

    @RequestMapping(value = "/add-student", method = RequestMethod.POST)
    public String addStudent(/*@RequestParam long studentID,*/
                             @RequestParam String firstName,
                             @RequestParam String lastName,
                             @RequestParam String username,
                             @RequestParam String password/*,
                             @RequestParam String schoolName,
                             @RequestParam String depName,
                             @RequestParam int planYear*/) {

        Map<String, Object> studentObject = new HashMap<>();
        studentObject.put("fname", firstName);
        studentObject.put("lname", lastName);
        studentObject.put("username", username);
        studentObject.put("password", password);
        studentObject.put("userType", UserType.STUDENT.name());
       /* studentObject.put("studentID", studentID);
        studentObject.put("schoolName", schoolName);
        studentObject.put("depName", depName);
        studentObject.put("planYear", planYear);*/
        service.addStudent(studentObject);
        return "/admin-search";
    }
}
