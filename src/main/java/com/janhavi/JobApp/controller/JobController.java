package com.janhavi.JobApp.controller;

import com.janhavi.JobApp.model.JobPost;
import com.janhavi.JobApp.repository.JobRepo;
import com.janhavi.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@org.springframework.stereotype.Controller
public class JobController {

    @Autowired
    private JobService service;

    @RequestMapping({"/", "/home"})
    public String home(){
        return "home";
    }

    @RequestMapping("/addJob")
    public String addJob(Model model){
        model.addAttribute("jobPost", new JobPost());
        return "addJob";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost, Model model){
        service.addJobPost(jobPost);
        model.addAttribute("jobPost", jobPost);
        return "success";
    }

    @GetMapping("/viewJob")
    public String viewJob(Model model){
        List<JobPost> jobs = service.returnAllJobPosts();
        model.addAttribute("jobPosts", jobs);
        return "viewJob";
    }
}
