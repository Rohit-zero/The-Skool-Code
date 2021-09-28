<%-- 
    Document   : setting_up_enviroment
    Created on : 18-Sep-2021, 9:55:47 PM
    Author     : Rohit
--%>
<%@page import="com.code.blog.entities.User"%>
<%@page errorPage="error_page.jsp"%>
<%
    User user=(User)session.getAttribute("currentUser");
    if(user==null)
    {
        response.sendRedirect("login.jsp");
    }
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 89%, 71% 94%, 39% 91%, 0 100%, 0 0);

            }
        </style>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="profile.jsp">The Skool Code                                          <span class ="fa fa-user-secret"></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Practive Questions <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Blogs</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Subjects
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Java</a>
          <a class="dropdown-item" href="#">CPP</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Python</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Skool Code</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="_______________________________login.jsp"><%= user.getName() %></a>
      </li>
      
    </ul>
<!--    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>-->
<div class="dropdown primary-background3">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <%= user.getEmail() %>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Profile</a>
    <a class="dropdown-item" href="#">Score</a>
    <a class="dropdown-item" href="#">Bookmarks</a>
     <a class="dropdown-item" href="#">Settings</a>
      <a class="dropdown-item" href="LogoutServlet">Logout</a>
  </div>
  </div>
    
  </div>
</nav>
  <main>
      <div class="container m-0" style="max-width: 2000px">
          <div class="row bg-dark" >
              <%@include file="JavaContentFrame.jsp" %>
              <div class="col-md-10 text-white mt-5 ">
                  <div class="container my-0" >
<!--                      Content-->
<h1>Setting up the environment in Java</h1><br><!-- comment --><br><!-- comment -->
<p>
    Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented, etc. <br>
    Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of computer<br>
    architecture. The latest version is Java 15. <br>
    <br>
    Below are the environment settings for both Linux and Windows. JVM, JRE, and JDK three are all platform-dependent because the<br> 
    configuration of each Operating System is different. But, Java is platform-independent. <br>
    <br>
    Few things must be clear before setting up the environment <br>
<ul>
    <li><b>JDK(Java Development Kit): </b>JDK is intended for software developers and includes development tools such as the Java compiler,<br>Javadoc, Jar, and a debugger.</li>
    <li><b>JRE(Java Runtime Environment): </b>JRE contains the parts of the Java libraries required to run Java programs and is intended for end-<br>users. JRE can be view as a subset of JDK.</li>
    <li><b>JVM: JVM (Java Virtual Machine) is an abstract machine:</b>It is a specification that provides a runtime environment in which java <br>bytecode can be executed. JVMs are available for many hardware and software platforms.</li>
</ul>
    <br>
    Now let us discuss the steps for setting up a Java environment with visual aids. Let be operating system be windows to illustrate visual<br>
   aids. <br>
    <br>
    <br>
    <h2>Steps:</h2><br><!-- comment -->
    <br>
    Here we will be proposing steps for Windows operating systems as listed:<br><!-- comment -->
    <br>
    <h2>A Windows operating systems</h2><br>
    <br>
    Steps for setting the environment in Windows operation system are as follows: <br>
    <b>Step 1: Java8 JDK</b> is available at <a href="https://www.oracle.com/java/technologies/downloads/#java8">Download Java 8</a>. Click the second last link for Windows(32 bit) and the last link for Windows(64 bit)<br>
    as highlighted below. <br>
    <br>
    <b>Step 2:</b> After download, run the .exe file and follow the instructions to install Java on your machine. Once you installed Java on your<br>
    machine, you have to set up the environment variable.<br>
    <b>Step 3:</b> Go to Control Panel -> System and Security -> System. <br>
    Under the Advanced System Setting option click on Environment Variables as highlighted below. <br>
    <br>
    
    <div class="container">
        <img src="img/1.png" alt="1">
    </div><br><br>
    <b> Step 4:</b> Now, you have to alter the “Path” variable under System variables so that it also contains the path to the Java environment.<br>
    Select the “Path” variable and click on the Edit button as highlighted below. <br><!-- comment -->
    <div class="container"><br><br>
        <img src="img/2.png" alt="1">
    </div><br><br>
    <b>Step 5:</b> You will see a list of different paths, click on the New button and then add the path where java is installed. By default, java is<br>
    installed in “C:\Program Files\Java\jdk\bin” folder OR “C:\Program Files(x86)\Java\jdk\bin”. In case, you have installed java at any<br>
    other location, then add that path. <br><br>
    <div class="container">
        <img src="img/3.png" alt="1">
    </div><br><br>
    <b>Step 6: </b>Click on OK, Save the settings, and you are done !! Now to check whether the installation is done correctly, open the command<br>
    prompt and type javac -version. You will see that java is running on your machine.<br>
    <br><br><br>
    <h2>Note: To make sure whether the compiler is set up, type javac in the command prompt. You will see a list related to javac.</h2><br>
    <br>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</p>
                      
                  </div>
              </div>
          </div>
      </div>
  </main>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    <%@include file="footer.jsp" %>
       <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
