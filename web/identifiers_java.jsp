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
                  <h1>Java Identifiers</h1>
                  <br><br>
                    <p>In programming languages, identifiers are used for identification purposes. In Java, an identifier can be a class name, method name,<br>variable name, or label. For example :</p>
                    <pre class="text-white">



                        public class Test
                        {
                            public static void main(String[] args)
                            {
                                int a = 20;
                            }
                        }


                      </pre>
                        <p>In the above java code, we have 5 identifiers namely :</p>
                        <ul>
                            <li><b>Test : </b> class name.</li>
                            <li><b>main : </b> method name.</li>
                            <li><b>String : </b> predefined class name.</li>
                            <li><b>args : </b> variable name.</li>
                            <li><b>a :  </b> variable name.</li>
                        </ul>
                        <br>
                        <br>
                        <h3>Rules for defining Java Identifiers</h3><br>
                        <br>
                        <br>
                        <p>There are certain rules for defining a valid java identifier. These rules must be followed, otherwise we get compile-time error. These<br>rules are also valid for other languages like C,C++.</p>
                        <ul>
                            <li>The only allowed characters for identifiers are all alphanumeric characters([A-Z],[a-z],[0-9]), ‘$‘(dollar sign) and ‘_‘>br>(underscore).For example “geek@” is not a valid java identifier as it contain ‘@’ special character.</li>
                            <li>Identifiers should not start with digits([0-9]). For example “123geeks” is a not a valid java identifier.</li>
                            <li>Java identifiers are case-sensitive.</li>
                            <li>There is no limit on the length of the identifier but it is advisable to use an optimum length of 4 – 15 letters only.</li>
                            <li>Reserved Words can’t be used as an identifier. For example “int while = 20;” is an invalid statement as while is a reserved word.<br>There are 53 reserved words in Java.
                                Examples of valid identifiers :</li>
                        </ul>
                        <pre class="text-white">


                                            MyVariable
                                            MYVARIABLE
                                            myvariable
                                            x
                                            i
                                            x1
                                            i1
                                            _myvariable
                                            $myvariable
                                            sum_of_array
                                            geeks123

                                           
                        </pre>
                        <h3>Examples of invalid identifiers :</h3>
                        <pre class="text-white">


                                            My Variable  // contains a space
                                            123geeks   // Begins with a digit
                                            a+c // plus sign is not an alphanumeric character
                                            variable-2 // hyphen is not an alphanumeric character
                                            sum_&_difference // ampersand is not an alphanumeric character


                        </pre>
                        <h3>Reserved Words</h3>
                        <br><br>
                        <p>
                            Any programming language reserves some words to represent functionalities defined by that language. These words are called<br>
                            reserved words.They can be briefly categorised into two parts : keywords(50) and literals(3). Keywords define functionalities and<br>
                            literals define a value. Identifiers are used by symbol tables in various analyzing phases(like lexical, syntax, semantic) of a compiler<br>
                            architecture.<br>
                            <b>Note:></b> The keywords const and goto are reserved, even though they are not currently used. In place of const, the final keyword is used.<br>
                            Some keywords like strictfp are included in later versions of Java.<br>
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
