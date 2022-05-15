package com.university.interactivestudyplanweb.services;

import com.university.interactivestudyplanweb.handler.ResponseHandler;
import com.university.interactivestudyplanweb.model.Course;
import com.university.interactivestudyplanweb.model.Plan;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ViewStudyPlanService {
    private final ResponseHandler<Course> COURSE_RESPONSE = new ResponseHandler<>("http://localhost:8000/read/");

    public Boolean uploadPlan(){
        return true;
    }
}
