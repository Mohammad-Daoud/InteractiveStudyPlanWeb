package com.university.interactivestudyplanweb.controller;

import com.university.interactivestudyplanweb.services.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("userType")
public class SearchController {

    @Autowired
    SearchService service;

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String viewSearchPage() {
        return "/inst";
    }

    @RequestMapping(value = "/adminSearch", method = RequestMethod.GET)
    public String viewAdminSearchPage() {
        return "/admin-search";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView method(@RequestParam String schoolName,
                               @RequestParam String department,
                               @RequestParam int year) {
        String projectUrl = "http://localhost:3000?schoolName=" + schoolName + "&departmentName=" + department + "&year=" + year;
        return new ModelAndView("redirect:" + projectUrl);
    }
}
