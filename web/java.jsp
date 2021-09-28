<%-- 
    Document   : java
    Created on : 17-Sep-2021, 11:07:52 AM
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
              
              <div class="col-lg-2 mt-5">
                  
<!--                  collabs starts-->


<div id="accordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            <b>Introduction to JAVA</b>
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show bg-dark" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
<!--          Introducrion card section-->
<a href="#" class="btn bg-dark text-white" role="button">Introduction</a>
<a href="javaTerminology.jsp" class="btn bg-dark text-white" role="button">Java Terminologys</a>
            <a href="setting_up_enviroment_java.jsp" class="btn bg-dark text-white" role="button">Setting up Enviroment</a>
           <a href="class_and_object_java.jsp" class="btn bg-dark text-white" role="button">Class And Objects</a>
            <a href="identifiers_java.jsp" class="btn bg-dark text-white" role="button">Java Identifiers</a>
            <a href="data_types_java.jsp" class="btn bg-dark text-white" role="button">Data Types in Java</a>
            <a href="variables_java.jsp" class="btn bg-dark text-white" role="button">Variables in Java</a>
            <a href="operators_java.jsp" class="btn bg-dark text-white" role="button">Operators in Java</a>
            <a href="ways_to_read_input_from_console_java.jsp" class="btn bg-dark text-white" role="button">Ways to read inputs from console</a>
            
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            <b>Control Structure</b>
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse bg-dark" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
            <a href="if_else_java.jsp" class="btn bg-dark text-white" role="button">If Else Statement</a>
            <a href="nested_ifelse_java.jsp" class="btn bg-dark text-white" role="button">Nested If Else Statement</a>
            <a href="switch_java.jsp" class="btn bg-dark text-white" role="button">Switch Statement</a>
            <a href="looping_java.jsp" class="btn bg-dark text-white" role="button">Looping in Java</a>
            <a href="continue_state_java.jsp" class="btn bg-dark text-white" role="button">Continue Statement</a>
            <a href="break_state_java.jsp" class="btn bg-dark text-white" role="button">Break Statement</a>
            <a href="jump_state_java.jsp" class="btn bg-dark text-white" role="button">Jump Statement</a>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            <b>String</b>
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse bg-dark" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
          <a href="string_java.jsp" class="btn bg-dark text-white" role="button">String in Java</a><br>
            <a href="string_class_java.jsp" class="btn bg-dark text-white" role="button">String Class</a>
            <a href="string_buffer_java.jsp" class="btn bg-dark text-white" role="button">String Buffer Class</a>
            <a href="string_operation_java.jsp" class="btn bg-dark text-white" role="button">String Operations</a>
            
      </div>
    </div>
  </div>
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapseTwo">
            <b>Arrays</b>
        </button>
      </h5>
    </div>
    <div id="collapsefour" class="collapse bg-dark" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
          <a href="arrays_java.jsp" class="btn bg-dark text-white" role="button">Arrays in Java</a>
            <a href="multydim_array_java.jsp" class="btn bg-dark text-white" role="button">Multidimentional Arrays</a>
            <a href="dynamic_array_java.jsp" class="btn bg-dark text-white" role="button">Dynamic Arrays</a>
            <a href="array_2_string_conversion.jsp" class="btn bg-dark text-white" role="button">Arrays to String Conversions</a>
           <a href="two_array_comparison_java.jsp" class="btn bg-dark text-white" role="button">Two Array Comparison</a>
      </div>
    </div>
  </div>
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapsefive" aria-expanded="false" aria-controls="collapseTwo">
            <b>Constructors</b>
        </button>
      </h5>
    </div>
    <div id="collapsefive" class="collapse bg-dark" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
          <a href="constructor_java.jsp" class="btn bg-dark text-white" role="button">Constructor in Java</a>
            <a href="copy_constructor_java.jsp" class="btn bg-dark text-white" role="button">Copy Constructor in Java</a>
            <a href="constructor_overloading_java.jsp" class="btn bg-dark text-white" role="button">Constructor Overloading</a>
            <a href="private_constructor_java.jsp" class="btn bg-dark text-white" role="button">Private Constructor</a>
      </div>
    </div>
    </div><!-- comment -->
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapsesix" aria-expanded="false" aria-controls="collapseTwo">
            <b>OOP's Concepts</b>
        </button>
      </h5>
    </div>
    <div id="collapsesix" class="collapse bg-dark" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
            <a href="class_and_object_java.jsp" class="btn bg-dark text-white" role="button">Class and Objects</a>
            <a href="encapsulation_java.jsp" class="btn bg-dark text-white" role="button">Encapsulation in Java</a>
            <a href="abstaction_java.jsp" class="btn bg-dark text-white" role="button">Abstaction in Java</a>
            <a href="inheritance_java.jsp" class="btn bg-dark text-white" role="button">Inheritance in Java</a>
            <a href="polymorphism_java.jsp" class="btn bg-dark text-white" role="button">Polymorphism in Java</a>
            <a href="overloading_java.jsp" class="btn bg-dark text-white" role="button">Overloading in Java</a>
            <a href="overriding_java.jsp" class="btn bg-dark text-white" role="button">Overriding in Java</a>
      </div>
    </div>
  </div>
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapseseven" aria-expanded="false" aria-controls="collapseTwo">
            <b>Exception Handling</b>
        </button>
      </h5>
    </div>
    <div id="collapseseven" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body bg-dark">
          <a href="exception_java.jsp" class="btn bg-dark text-white" role="button">Exception in Java</a>
            <a href="types_of_exception.jsp" class="btn bg-dark text-white" role="button">Types of Exceptions</a>
            <a href="checked_vs_unchecked.jsp" class="btn bg-dark text-white" role="button">Checked vs Unchecked</a>
            <a href="throw_and_throws.jsp" class="btn bg-dark text-white" role="button">Throw and Throws in Java</a>
            <a href="user_defined_exception.jsp" class="btn bg-dark text-white" role="button">User Defined Exception</a>
            
      </div>
    </div>
  </div>
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapseeight" aria-expanded="false" aria-controls="collapseTwo">
            <b>Interfaces And Abstract Classes</b>
        </button>
      </h5>
    </div>
    <div id="collapseeight" class="collapse bg-dark" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body bg-dark">
          <a href="interface_java.jsp" class="btn bg-dark text-white" role="button">Interface in Java</a>
            <a href="nested_interface_java.jsp" class="btn bg-dark text-white" role="button">Nested Interface in Java</a>
            <a href="marker_interface_java.jsp" class="btn bg-dark text-white" role="button">Marker Interface in java</a>
            <a href="abstract_java.jsp" class="btn bg-dark text-white" role="button">Abstract Class in Java</a>
            <a href="abstract_vs_interface_java.jsp" class="btn bg-dark text-white" role="button">Abstract class vs Interface</a>
            <a href="comparator_interface_java.jsp" class="btn bg-dark text-white" role="button">Comparator Interface</a>
            
      </div>
    </div>
  </div>
    <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn collapsed" data-toggle="collapse" data-target="#collapsenine" aria-expanded="false" aria-controls="collapseTwo">
            <b>Collection FrameWork</b>
        </button>
      </h5>
    </div>
    <div id="collapsenine" class="collapse bg-dark" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body bg-dark">
          <a href="collection_vs_collections_java.jsp" class="btn bg-dark text-white" role="button">Collection vs Collections</a>
            <a href="iterator_vs_iterable_java.jsp" class="btn bg-dark text-white" role="button">Iterator vs Iterable</a>
            <a href="list_interface_java.jsp" class="btn bg-dark text-white" role="button">List Interface in Java</a>
            <a href="arraylist_java.jsp" class="btn bg-dark text-white" role="button">ArrayList</a>
            <a href="vector_class_java.jsp" class="btn bg-dark text-white" role="button">Vector Class in Java</a>
            <a href="linklist_java.jsp" class="btn bg-dark text-white" role="button">LinkList in Java</a>
            <a href="queue_interface_java.jsp" class="btn bg-dark text-white" role="button">Queue Interface in Java</a>
            <a href="priority_queue_java.jsp" class="btn bg-dark text-white" role="button">PriorityQueue in Java</a>
            <a href="deque_java.jsp" class="btn bg-dark text-white" role="button">Deque in Java</a>
            <a href="set_java.jsp" class="btn bg-dark text-white" role="button">Set in java</a><br>
            <a href="hash_set_java.jsp" class="btn bg-dark text-white" role="button">Hash Set in Java</a>
            <a href="linked_hash_set_java.jsp" class="btn bg-dark text-white" role="button">Linked Hash Set in Java</a>
            <a href="tree_hash_set_java.jsp" class="btn bg-dark text-white" role="button">Tree Hash Set in Java</a>
            <a href="map_interface_java.jsp" class="btn bg-dark text-white" role="button">Map Interface in Java</a>            <button class="btn bg-dark text-white">HashMap in Java</button>
            <a href="hash_map_java.jsp" class="btn bg-dark text-white" role="button">Hash MaP in Java</a>
            <a href="linked_hash_map_java.jsp" class="btn bg-dark text-white" role="button">linked Hash Map in Java</a>
            <a href="hash_set_java.jsp" class="btn bg-dark text-white" role="button">Hash Set in Java</a>
            
      </div>
    </div>
  </div>
</div>
                  
                  
                  
              </div>
              
              
              
              
              
              
              
              
              <div class="col-md-10 text-white mt-5 ">
              
                  <div class="container my-0" >  
              <h1>Java Programming Language</h1><br><!-- comment -->
     <p>Java is one of the most popular and widely used programming language.</p>
     <ul>
        <li>Java has been one of the most popular programming language for many years.</li>
        <li>Java is Object Oriented. However it is not considered as pure object oriented as it provides support for primitive data types (like int,<br> char, etc)</li>
        <li>The Java codes are first compiled into byte code (machine independent code). Then the byte code runs on Java Virtual Machine (JVM)<br>regardless of the underlying architecture.</li>
        <li>Java syntax is similar to C/C++. But Java does not provide low level programming functionalities like pointers. Also, Java codes are al<br>ways written in the form of classes and objects.</li>
        <li>Java is used in all kind of applications like Mobile Applications (Android is Java based), desktop applications, web applications, client<br>server applications, enterprise applications and many more.</li>       
        <li>When compared with C++, Java codes are generally more maintainable because Java does not allow many things which may lead<br>bad/inefficient programming if used incorrectly. For example, non-primitives are always references in Java. So we cannot pass large<br>objects (like we can do in C++) to functions, we always pass references in Java. One more example, since there are no pointers, bad<br>memory access is also not possible.</li>
        <li>When compared with Python, Java kind of fits between C++ and Python. The programs written in Java typically run faster than corre<br>sponding Python programs and slower than C++. Like C++, Java does static type checking, but Python does not.</li><br>
     </ul><br>
     
     <h1>Introduction to Java</h1><br>
     <h3>History</h3>
     
     <p>JAVA was developed by James Gosling at Sun Microsystems Inc in the year 1991, later acquired by Oracle Corporation. It is a simple
         <br>programming language. Java makes writing, compiling, and debugging programming easy. It helps to create reusable code and<br>
         modular programs.<br>
         Java is a class-based, object-oriented programming language and is designed to have as few implementation dependencies as<br>
         possible. A general-purpose programming language made for developers to write once run anywhere that is compiled Java code can<br>
         run on all platforms that support Java. Java applications are compiled to byte code that can run on any Java Virtual Machine. The syntax
         <br>of Java is similar to c/c++.<br>
         <br><!-- comment -->
         The principles for creating java were simple, robust, secured, high performance, portable, multi-threaded, interpreted, dynamic, etc.<br>
         James Gosling in 1995 developed Java, who is known as the Father of Java. Currently, Java is used in mobile devices, internet<br><!-- comment -->
         programming, games, e-business, etc.<br><!-- comment -->
     </p>
     <br><!-- comment -->
     <h3>Java programming language is named JAVA. Why?</h3><br>
     <p>After the name OAK, the team decided to give a new name to it and the suggested words were Silk, Jolt, revolutionary, DNA, dynamic,<br><!-- comment -->
         etc. These all names were easy to spell and fun to say, but they all wanted the name to reflect the essence of technology. In accordance<br>
         with James Gosling, Java the among the top names along with Silk, and since java was a unique name so most of them preferred it.<br>
         Java is the name of an island in Indonesia where the first coffee(named java coffee) was produced. And this name was chosen by<br>
         James Gosling while having coffee near his office. Note that Java is just a name, not an acronym.<br>
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

