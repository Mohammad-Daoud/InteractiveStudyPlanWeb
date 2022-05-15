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
        Map<String ,Object> adminObject = new HashMap<>();
        adminObject.put("firstName",firstName);
        adminObject.put("lastName",lastName);
        adminObject.put("username",username);
        adminObject.put("password",password);
        adminObject.put("userType", UserType.ADMIN);
        service.addAdmin(adminObject);
        return "/admin-search";
    }

    @RequestMapping(value = "/add-instructor", method = RequestMethod.GET)
    public String showInstructor() {
        return "/add-instructor";
    }
    @RequestMapping(value = "/add-student", method = RequestMethod.GET)
    public String showStudent() {
        return "/add-student";
    }
}
