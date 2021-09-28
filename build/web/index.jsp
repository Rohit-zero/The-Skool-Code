<%@page import="com.code.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
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
        <%@include file="navbar.jsp" %>
    
        
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron banner-background" >
                <h3  class="display-3" > Welcome to Skool Code</h3>
                <h2>A Beginer Friendly Programing Platform</h2>
                <pre>
                
                </pre>
                <a href="signup.jsp"class="btn btn-secondary btn-lg">Sign Up    <span class="fa fa-user-circle"></span></a>
                <a href="login.jsp" class="btn btn-secondary btn-lg">Login In   <span class="fa fa-user-plus"></a>
                
            </div>
          
        </div>
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">JAVA</h5>
                                <p class="card-text">OOP's Concepts<br>Basic Programing<br>Data Structure and Algorithums<br>     </p>
                                <a href="#" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">CPP</h5>
                                <p class="card-text">OOP's Concepts<br>Basic Programing<br>Data Structure and Algorithums<br>     </p>
                                <a href="#" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">JAVA J2EE</h5>
                                <p class="card-text">Servlets<br>JSP<br>JDBC<br>     </p>
                                <a href="#" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                   
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Data Structue and Algorithus</h5>
                                <p class="card-text">Basic Concepts and types<br>Algorithums<br>Practice Questions<br>     </p>
                                <a href="#" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Compatative Programing</h5>
                                <p class="card-text">Important Concepts<br>Resorces<br>Sample Questions<br>     </p>
                                <a href="#" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Projects</h5>
                                <p class="card-text">Projects Ideas<br>New techonlogies<br>Hot topics<br>     </p>
                                <a href="#" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                   
                </div>
            </div>
           
        </div>
    
    
        <!-- jss -->
    <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<pre>
          


      </pre>
       <%@include file="headerAndFooter/footer.jsp" %>
    </body>
</html>
