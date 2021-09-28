<%-- 
    Document   : profile
    Created on : 16-Sep-2021, 1:40:56 AM
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
          <a class="dropdown-item" href="java.jsp">Java</a>
          <a class="dropdown-item" href="cpp.jsp">CPP</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Python</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About Skool Code</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#!" data-toggle="modal" data-target="#userProfileModel"><%= user.getName() %></a>
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
    <a class="dropdown-item" href="#!" data-toggle="modal" data-target="#userProfileModel">Profile</a>
    <a class="dropdown-item" href="#">Score</a>
    <a class="dropdown-item" href="#">Bookmarks</a>
     <a class="dropdown-item" href="#">Settings</a>
      <a class="dropdown-item" href="LogoutServlet">Logout</a>
  </div>





  </div>
    
  </div>
</nav>
  
                                                                  <!--  Profile model-->
  
                                                                  <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="userProfileModel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background2">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center">
          <div class="container">
              <img src="img/profiledefault.jpg/<%= user.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width: 150px;;" >
                            <br>
                            <h5 class="modal-title mt-3" id="exampleModalLabel"> <%= user.getName()%> </h5>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            <div id="profile-details">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row"> ID :</th>
                                            <td> <%= user.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row"> Email : </th>
                                            <td><%= user.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender :</th>
                                            <td><%= user.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Status :</th>
                                            <td><%= user.getAbout()%></td>

                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>
                                                                  
                                                                  
                                                                  
                                                                  
  
  
  
                                                                <!--  /profile model-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron banner-background" >
                <h3  class="display-3" > Welcome to Skool Code</h3>
                <h2>A Beginer Friendly Programing Platform</h2>
                <pre>
                
                </pre>
                
                
            </div>
        </div>
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">JAVA</h5>
                                <p class="card-text">OOP's Concepts<br>Basic Programing<br>Data Structure and Algorithums<br>     </p>
                                <a href="java.jsp" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">CPP</h5>
                                <p class="card-text">OOP's Concepts<br>Basic Programing<br>Data Structure and Algorithums<br>     </p>
                                <a href="cpp.jsp" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">JAVA J2EE</h5>
                                <p class="card-text">Servlets<br>JSP<br>JDBC<br>     </p>
                                <a href="java2ee.jsp" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                   
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Data Structue and Algorithus</h5>
                                <p class="card-text">Basic Concepts and types<br>Algorithums<br>Practice Questions<br>     </p>
                                <a href="data_structue_and_algo.jsp" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Compatative Programing</h5>
                                <p class="card-text">Important Concepts<br>Resorces<br>Sample Questions<br>     </p>
                                <a href="compatative_programing.jsp" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Projects</h5>
                                <p class="card-text">Projects Ideas<br>New techonlogies<br>Hot topics<br>     </p>
                                <a href="projects.jsp" class="btn secondary btn-lg">Read more...</a>
                            </div>
                    </div>
                   
                </div>
            </div>
           
        </div>
        
        
        
        
        
        
        
        
      <pre>
          


      </pre>
       <%@include file="headerAndFooter/footer.jsp" %> 
       <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>
