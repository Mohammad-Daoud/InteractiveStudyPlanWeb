package com.university.interactivestudyplanweb.controller;

import com.university.interactivestudyplanweb.services.ViewStudyPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewStudyPlanController {
    @Autowired
    private ViewStudyPlanService service;

    @RequestMapping(value = "/edit-plan", method = RequestMethod.GET)
    public String viewPlan(){
        return "/admin";
    }
}
