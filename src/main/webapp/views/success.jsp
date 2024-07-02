<%@page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import = "com.janhavi.JobApp.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "success.css"/>
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
        <div class="container">
                <div class="card">

                    <span class="postId" id="postId">Job ID: ${jobPost.postId}</span><br/>
                    <span class="postProfile" id="postProfile">Job Name: ${jobPost.postProfile}</span><br/>
                    <span class="postDesc" id="postDesc">Job Description: ${jobPost.postDesc}</span><br/>
                    <span class="reqExperience" id="reqExperience">Required Experience: ${jobPost.reqExperience} years</span><br/>
                    <span class="postTechStack" id="postTechStack">Tech Stack: </span>
                    <ol class="list">
                        <c:forEach var="tech" items="${jobPost.postTechStack}">
                            <li>${tech}</li><br/>
                        </c:forEach>
                    </ol>
                </div>
        </div>
    </body>
</html>