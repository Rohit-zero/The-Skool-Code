<%-- 
    Document   : class_and_object_java
    Created on : 18-Sep-2021, 11:55:56 PM
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
            <a class="navbar-brand" href="C:\Users\Rohit\Documents\NetBeansProjects\The skool code\web_pages\profile.jsp">The Skool Code                                          <span class ="fa fa-user-secret"></span></a>
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
<h1>Classes and Objects in Java</h1>
<p>Classes and Objects are basic concepts of Object Oriented Programming which revolve around the real life entities.</p>
<br><!-- comment -->
<h2 class="text-center">Class</h2><br><!-- comment -->
<p>A class is a user defined blueprint or prototype from which objects are created.  It represents the set of properties or methods that are<p>
common to all objects of one type. In general, class declarations can include these components, in order: <br>
<br>
<ol><!-- comment --></<ol>
    <li><b>Modifiers: </b> A class can be public or has default access.</li>
    <li><b>class keyword: </b>class keyword is used to create a class.</li>
    <li><b>Class name:</b>The name should begin with an initial letter (capitalized by convention).</li>
    <li><b>Superclass(if any): </b> The name of the class’s parent (superclass), if any, preceded by the keyword extends. A class can only extend<br>(subclass) one parent.</li>
    <li><b>Interfaces(if any):</b> A comma-separated list of interfaces implemented by the class, if any, preceded by the keyword implements.<br> A class can implement more than one interface.</li>
    <li><b>Body:</b>The class body surrounded by braces, { }.</li>
</ol>

Constructors are used for initializing new objects. Fields are variables that provides the state of the class and its objects, and methods<br>
are used to implement the behavior of the class and its objects.<br>
There are various types of classes that are used in real time applications such as nested classes, anonymous classes, lambda<br>
expressions. 

<br>
<br>
<h2 class="text-center">Object</h2><br>
<br>
It is a basic unit of Object-Oriented Programming and represents the real life entities.  A typical Java program creates many objects,<br>
which as you know, interact by invoking methods. An object consists of : <br>
<br>
<ol>
    <li><b>State:</b>It is represented by attributes of an object. It also reflects the properties of an object.</li>
    <li><b>Behavior: </b>It is represented by methods of an object. It also reflects the response of an object with other objects.</li><!-- <li><b></b></li> -->
    <li><b>Identity: </b>It gives a unique name to an object and enables one object to interact with other objects.</li>
</ol>
<br>
<br><!-- comment -->
<h2>Example of an object: dog</h2><br>

<br>
<div class="container">
    <img src="img/objectexp.png" alt="alt"/>
</div>
<br>
Objects correspond to things found in the real world. For example, a graphics program may have objects such as “circle”, “square”,<br>
“menu”. An online shopping system might have objects such as “shopping cart”, “customer”, and “product”. <br>
<br>
<br>
<h2>Declaring Objects (Also called instantiating a class)</h2><br>
<br>
When an object of a class is created, the class is said to be instantiated. All the instances share the attributes and the behavior of the<br>
class. But the values of those attributes, i.e. the state are unique for each object. A single class may have any number of instances.<br>
<br>
<br><!-- comment -->
<div class="container">
    <img src="img/Blank-Diagram-Page-1-3.png" alt="alt"/>
</div>
<br>
<br>
As we declare variables like (type name;). This notifies the compiler that we will use name to refer to data whose type is type. With a<br>
primitive variable, this declaration also reserves the proper amount of memory for the variable. So for reference variable, type must be<br>
strictly a concrete class name. In general, we can’t create objects of an abstract class or an interface.  <br>
<br><!-- <br>
<br> --><br>
<h3>Dog tuffy;</h3><br>
<br>
If we declare reference variable(tuffy) like this, its value will be undetermined(null) until an object is actually created and assigned to<br>
it. Simply declaring a reference variable does not create an object.<br>
<br>
<br>
<h2 class="text-center">Initializing an object</h2><br>
<br>
The new operator instantiates a class by allocating memory for a new object and returning a reference to that memory. The new<br>
operator also invokes the class constructor. <br>
<br>
<br>
<br>
<pre class="text-white">
                                        // Class Declaration

                                    public class Dog
                                    {
                                        // Instance Variables
                                        String name;
                                        String breed;
                                        int age;
                                        String color;

                                        // Constructor Declaration of Class
                                        public Dog(String name, String breed,
                                                       int age, String color)
                                        {
                                            this.name = name;
                                            this.breed = breed;
                                            this.age = age;
                                            this.color = color;
                                        }

                                        // method 1
                                        public String getName()
                                        {
                                            return name;
                                        }

                                        // method 2
                                        public String getBreed()
                                        {
                                            return breed;
                                        }

                                        // method 3
                                        public int getAge()
                                        {
                                            return age;
                                        }

                                        // method 4
                                        public String getColor()
                                        {
                                            return color;
                                        }

                                        @Override
                                        public String toString()
                                        {
                                            return("Hi my name is "+ this.getName()+
                                                   ".\nMy breed,age and color are " +
                                                   this.getBreed()+"," + this.getAge()+
                                                   ","+ this.getColor());
                                        }

                                        public static void main(String[] args)
                                        {
                                            Dog tuffy = new Dog("tuffy","papillon", 5, "white");
                                            System.out.println(tuffy.toString());
                                        }
                                    }
</pre>
<br>
<br>
<h3>Output: </h3><br>
<br>
<h5>Hi my name is tuffy.</h5>
<h5>My breed,age and color are papillon,5,white</h5>
<br>
<br>
<b>*</b>This class contains a single constructor. We can recognize a constructor because its declaration uses the same name as the class<br>
and it has no return type. The Java compiler differentiates the constructors based on the number and the type of the arguments. The<br>
constructor in the Dog class takes four arguments. The following statement provides “tuffy”,”papillon”,5,”white” as values for those<br>
arguments:<br>
<br>
<br>
<h3>Dog tuffy = new Dog("tuffy","papillon",5, "white");</h3><br>
<br>
<br>
<b>*The result of executing this statement can be illustrated as :</b><br>
<br>
<br>
<div class="container">
    <<img src="img/Untitled5.png" alt="alt"/>
</div>
<br>
<b>Note : </b>All classes have at least one constructor. If a class does not explicitly declare any, the Java compiler automatically provides a no-<br>
argument constructor, also called the default constructor. This default constructor calls the class parent’s no-argument constructor<br>
(as it contain only one statement i.e super();), or the Object class constructor if the class has no other parent (as Object class is parent<br>
of all classes either directly or indirectly). <br>
<br>
<h2 class="text-center">Ways to create object of a class</h2><br>
<br>
There are four ways to create objects in java.Strictly speaking there is only one way(by using new keyword),and the rest internally use<br>
new keyword. <br>
<br>
<br>
<b>*</b> Using new keyword: It is the most common and general way to create object in java. Example:<br>
<br>
<br>
<pre class="text-white">
                                            // creating object of class Test
                                               Test t = new Test();
</pre>
<br>
<br>
<b>*</b>Using Class.forName(String className) method: There is a pre-defined class in java.lang package with name Class. The<br>
forName(String className) method returns the Class object associated with the class with the given string name.We have to give<br>
the fully qualified name for a class. On calling new Instance() method on this Class object returns new instance of the class with the<br>
given string name.<br>
<br>
<br>
<pre class="text-white">
                                            // creating object of public class Test
                                            // consider class Test present in com.p1 package
                                               Test obj = (Test)Class.forName("com.p1.Test").newInstance();
</pre>

<br>
<br>
<b>*</b>Using clone() method: clone() method is present in Object class. It creates and returns a copy of the object.<br>
<br>
<br>
<pre class="text-white">
                                                // creating object of class Test
                                                    Test t1 = new Test();

                                                // creating clone of above object
                                                    Test t2 = (Test)t1.clone();
</pre>
<br>
<br>
<b>*</b>Deserialization: De-serialization is technique of reading an object from the saved state in a file.<br>
<br>
<br>
<pre class="text-white">
                                                FileInputStream file = new FileInputStream(filename);
                                                ObjectInputStream in = new ObjectInputStream(file);
                                                Object obj = in.readObject();
</pre>
<br>
<br>
<h2 class="text-center">Creating multiple objects by one type only (A good practice) </h2>
<br>
<b>*</b>In real-time, we need different objects of a class in different methods. Creating a number of references for storing them is not a<br>
good practice and therefore we declare a static reference variable and use it whenever required. In this case, wastage of memory is<br>
less. The objects that are not referenced anymore will be destroyed by Garbage Collector of java. <br>Example:<br>
<br>
<br>
<pre class="text-white">
                                                    Test test = new Test();
                                                    test = new Test();
</pre>
<br>
<b>*</b>In inheritance system, we use parent class reference variable to store a sub-class object. In this case, we can switch into different<br>
subclass objects using same referenced variable. Example:<br>
<br>
<br>
<pre class="text-white">
                                                        class Animal {}

                                                    class Dog extends Animal {}
                                                    class Cat extends Animal {}

                                                    public class Test
                                                    {
                                                        // using Dog object
                                                        Animal obj = new Dog();

                                                        // using Cat object
                                                        obj = new Cat();
                                                    }       
</pre>
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
