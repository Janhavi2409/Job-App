<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<html>
    <head>
        <link rel = "stylesheet" type = "text/css" href = "addJob.css"/>
    </head>
    <body>
        <div class = "nav_bar">
            <h1 class = "titleJob">Job App</h1>
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
        <div class="form-comp">
         <form:form class="form"  action="handleForm" method="post" modelAttribute="jobPost">
              <p class="title">Post New Job</p>
              <div class="flex">
                <label for="postId">
                  <input class="postId" id="postId" type="number" required name="postId"/>
                  <span>Post ID</span>
                </label>

                <label for="postProfile">
                  <input class="postProfile" id="postProfile" type="text" required name="postProfile"/>
                  <span>Post Profile</span>
                </label>
              </div>

              <label for="postDesc">
                <input class="postDesc" id="postDesc" type="text" required name="postDesc"/>
                <span>Post Description</span>
              </label>

              <label for="reqExperience">
                <input class="reqExperience" id="reqExperience" type="number" required name="reqExperience"/>
                <span>Required Experience</span>
              </label>
              <div class="techstack">
                <label for="postTechStack" class="form-label">Tech Stack</label>
                <select multiple class="form-select" id="postTechStack"
                  name="postTechStack" required name="postTechStack">
                  <!-- Add options dynamically from your backend or provide static options -->
                  <option value="Java">Java</option>
                  <option value="JavaScript">JavaScript</option>
                  <!-- Additional options -->
                  <option value="Swift">Swift</option>
                  <option value="TypeScript">TypeScript</option>
                  <option value="Go">Go</option>
                  <option value="Kotlin">Kotlin</option>
                  <option value="Rust">Rust</option>
                  <option value="PHP">PHP</option>
                  <option value="HTML5">HTML5</option>
                  <option value="CSS3">CSS3</option>
                  <option value="GraphQL">GraphQL</option>
                  <option value="Raspberry Pi">Raspberry Pi</option>
                  <option value="Arduino">Arduino</option>
                  <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                  <option value="Apache Kafka">Apache Kafka</option>
                  <option value="Elasticsearch">Elasticsearch</option>
                  <option value="Unity">Unity</option>
                  <option value="Game Development">Game Development</option>
                  <option value="Vue.js">Vue.js</option>
                  <option value="Angular">Angular</option>
                  <option value="React Native">React Native</option>
                  <option value="Flutter">Flutter</option>
                  <option value="Node.js">Node.js</option>
                  <option value="Express.js">Express.js</option>
                  <option value="Django">Django</option>
                  <option value="Flask">Flask</option>
                  <option value="Ruby on Rails">Ruby on Rails</option>
                  <option value="Laravel">Laravel</option>
                  <option value="TensorFlow">TensorFlow</option>
                  <option value="PyTorch">PyTorch</option>
                  <option value="Kubernetes">Kubernetes</option>
                  <option value="Docker">Docker</option>
                  <option value="Jenkins">Jenkins</option>
                  <option value="AWS (Amazon Web Services)">AWS (Amazon
                    Web Services)</option>
                  <option value="Azure">Azure</option>
                  <option value="Google Cloud">Google Cloud</option>
                  <option value="DevOps">DevOps</option>
                  <option value="Blockchain">Blockchain</option>
                  <option value="Machine Learning">Machine Learning</option>
                  <option value="Artificial Intelligence">Artificial
                    Intelligence</option>
                  <option value="Cybersecurity">Cybersecurity</option>
                  <option
                    value="CISSP (Certified Information Systems Security Professional)">CISSP
                    (Certified Information Systems Security Professional)</option>
                  <option value="CompTIA Security+">CompTIA Security+</option>
                  <option value="Certified Ethical Hacker (CEH)">Certified
                    Ethical Hacker (CEH)</option>
                  <option value="Scrum">Scrum</option>
                  <option value="Agile">Agile</option>
                  <option value="Kanban">Kanban</option>
                  <option value="GraphQL">GraphQL</option>
                  <option value="Vue.js">Vue.js</option>
                  <option value="Angular">Angular</option>
                  <option value="React Native">React Native</option>
                  <option value="Flutter">Flutter</option>
                  <option value="Node.js">Node.js</option>
                  <option value="Express.js">Express.js</option>
                  <option value="Django">Django</option>
                  <option value="Flask">Flask</option>
                  <option value="Ruby on Rails">Ruby on Rails</option>
                  <option value="Laravel">Laravel</option>
                  <option value="TensorFlow">TensorFlow</option>
                  <option value="PyTorch">PyTorch</option>
                  <option value="Kubernetes">Kubernetes</option>
                  <option value="Docker">Docker</option>
                  <option value="Jenkins">Jenkins</option>
                  <option value="AWS (Amazon Web Services)">AWS (Amazon
                    Web Services)</option>
                  <option value="Azure">Azure</option>
                  <option value="Google Cloud">Google Cloud</option>
                  <option value="DevOps">DevOps</option>
                  <option value="Blockchain">Blockchain</option>
                  <option value="Machine Learning">Machine Learning</option>
                  <option value="Artificial Intelligence">Artificial
                    Intelligence</option>
                  <option value="Cybersecurity">Cybersecurity</option>
                  <option
                    value="CISSP (Certified Information Systems Security Professional)">CISSP
                    (Certified Information Systems Security Professional)</option>
                  <option value="CompTIA Security+">CompTIA Security+</option>
                  <option value="Certified Ethical Hacker (CEH)">Certified
                    Ethical Hacker (CEH)</option>
                  <option value="Scrum">Scrum</option>
                  <option value="Agile">Agile</option>
                  <option value="Kanban">Kanban</option>
                  <option value="GraphQL">GraphQL</option>
                  <option value="Raspberry Pi">Raspberry Pi</option>
                  <option value="Arduino">Arduino</option>
                  <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                  <option value="Apache Kafka">Apache Kafka</option>
                  <option value="Elasticsearch">Elasticsearch</option>
                  <option value="Unity">Unity</option>
                  <option value="Game Development">Game Development</option>
                  <option value="Swift">Swift</option>
                  <option value="TypeScript">TypeScript</option>
                  <option value="Go">Go</option>
                  <option value="Kotlin">Kotlin</option>
                  <option value="Rust">Rust</option>
                  <option value="PHP">PHP</option>
                  <option value="HTML5">HTML5</option>
                  <option value="CSS3">CSS3</option>
                  <option value="GraphQL">GraphQL</option>
                  <option value="Raspberry Pi">Raspberry Pi</option>
                  <option value="Arduino">Arduino</option>
                  <option value="IoT (Internet of Things)">IoT (Internet
                    of Things)</option>
                  <option value="Apache Kafka">Apache Kafka</option>
                  <option value="Elasticsearch">Elasticsearch</option>
                  <option value="Unity">Unity</option>
                  <option value="Game Development">Game Development</option>
                </select>
              </div>
              <button type="submit" class="submit">Add Job</button>
            </form:form>
            </div>
    </body>
</html>