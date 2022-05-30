package com.university.interactivestudyplanweb.controller;


import com.university.interactivestudyplanweb.services.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;


@Controller
@SessionAttributes({"username", "fname", "lname"})
public class LoginController {
    @Autowired
    private LoginService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getShow() {
        return "/login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String getDestroy() {
        return "/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView getCred(ModelMap model,
                                @RequestParam String username,
                                @RequestParam String password) {

        Map<String, Object> serviceInfo = service.getInfo(username, password);
        if (serviceInfo.get("userType") == null) {
            model.put("errorMessage", "Invalid Credential!");
            return new ModelAndView("/login");
        } else {
            model.put("username", serviceInfo.get("username"));
            model.put("fname", serviceInfo.get("fname"));
            model.put("lname", serviceInfo.get("lname"));
            switch (serviceInfo.get("userType").toString()) {
                case "ADMIN":
                case "INSTRUCTOR":
                    return new ModelAndView("/admin");
                case "STUDENT":
                    String projectUrl = "http://localhost:3000/?"
                            + "studentID=" + serviceInfo.get("studentID")
                            + "&schoolName=" + serviceInfo.get("schoolName")
                            + "&departmentName=" + serviceInfo.get("departmentName")
                            + "&year=" + serviceInfo.get("year")
                            + "&username=" + username;
                    return new ModelAndView("redirect:" + projectUrl);
            }
        }
        model.put("errorMessage", "Invalid Credential!");
        return new ModelAndView("/login");
    }
}
