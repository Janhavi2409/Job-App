<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.janhavi.JobApp.model.JobPost" %>
<%@ page import="com.janhavi.JobApp.repository.JobRepo" %>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "viewJob.css"/>
    </head>
    <body>
        <div class = "nav_bar">
            <h1 class = "title">Job App</h1>
            <nav>
                <ul>
                    <li>
                      <a href = "/home"> Home </a>
                    </li>
                    <li>
                      <a href = "/addJob"> Add Job </a>
                    </li>
                    <li>
                      <a href = "/viewJob"> View Jobs </a>
                    </li>
                </ul>
            </nav>
        </div>

        <ab:set var="jobPosts" value="${jobPosts}" />
        <span class="titlePost">Job Post List</span>

        <div class="outer-container">
            <div class="cards-container">
                <ab:forEach var="jobPost" items="${jobPosts}">
                    <div class="card">
                        <span class="postId" id="postId">Job ID: ${jobPost.postId}</span><br/>
                        <span class="postProfile" id="postProfile">Job Name: ${jobPost.postProfile}</span><br/>
                        <span class="postDesc" id="postDesc">Job Description: ${jobPost.postDesc}</span><br/>
                        <span class="reqExperience" id="reqExperience">Required Experience: ${jobPost.reqExperience} years</span><br/>
                        <span class="postTechStack" id="postTechStack">Tech Stack: </span>
                        <ol class="list">
                            <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li><br/>
                            </ab:forEach>
                        </ol>
                    </div>
                </ab:forEach>
            </div>
        </div>



    </body>
</html>