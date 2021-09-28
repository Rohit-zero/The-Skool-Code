<%-- 
    Document   : login
    Created on : 12-Sep-2021, 12:55:37 AM
    Author     : Rohit
--%>

<%@page import="com.code.blog.entities.Message"%>
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
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 76%, 69% 86%, 35% 84%, 0 92%, 0 0);

            }
        </style>
        <title>Login Page</title>
    </head>
    <body>
      
        <%@include file="navbar.jsp" %>
        <main class="d-flex align-items-center primary-background2 banner-background" style="height: 70vh">
            
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header text-center">
                                <p> <span class="	fa fa-user-circle-o fa-4x"></span></p>
                            </div>
                            
                            
                            
                            <% 
                               Message m= (Message)session.getAttribute("msg");
                               if(m!=null)
                               {
                                   %>
                                   <div class="alert <%= m.getCssClass() %>" role="alert">
                                     
                                        <%=m.getContent() %>
                                    </div>
                                   <%
                                       session.removeAttribute("msg");
                               }
                            %>
                            
                            
                            
                            
                            <div class="card-body">
                                <form action="LoginServlet" method="post">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Email address</label>
                                      <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <input name="password" required type="password"  class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary primary-background2">Submit</button>
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                       
                    </div>
                </div>
                
            </div>
            
        </main>
        
        
        
        
        
        
        
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
