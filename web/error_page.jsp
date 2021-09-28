<%-- 
    Document   : error_page
    Created on : 16-Sep-2021, 12:36:37 AM
    Author     : Rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry something went wrong</title>
        <link href="css/mycss.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center">
            <img src="img/error.png" class="img-flude">
            <h2 class="display-3">Somthing ! Went Wrong...</h2>
            <%= exception%>
            <a href="index.jsp" class="btn primary-background2 btn-lg text-white mt-3">Home</a>
        </div>
    </body>
</html>
