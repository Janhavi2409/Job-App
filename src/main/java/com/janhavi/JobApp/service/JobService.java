package com.janhavi.JobApp.service;

import com.janhavi.JobApp.model.JobPost;
import com.janhavi.JobApp.repository.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {
    @Autowired
    private JobRepo repo;
    public void addJobPost(JobPost jobPost){
        repo.addJobPost(jobPost);
    }

    public List<JobPost> returnAllJobPosts(){
        return repo.returnAllJobPosts();
    }
}
