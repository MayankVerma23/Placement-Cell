<%-- 
    Document   : home_student
    Created on : 19 Mar, 2019, 12:56:36 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Home Student</title>
        
        <style>
            .navbar{
            background-color: #4379C0;
            border-color: #4353C0;
           
            }
            .nav_links{
                color:white;
            }
            .nav_links:hover{
                color: black;
            }  
            section{
                margin-top: 10px;
            }
            
        </style>
    </head>
    
    <body>
         <%@include file = "database_connection.jsp"%>  
          <%@include file = "pic.jsp"%>
    <div class="container">
        
        <!--TOP LOGOS--> 
        <section>
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="#"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
        </section> 
        
        <!--SLIDING TEXT-->    
        <section> 
                <%@include file = "sliding_text.jsp"%>
        </section> 

        <!--NAVBAR-->
        <section> 
            <nav class="navbar">
                <ul class="nav navbar-nav">
                    <li><a href="profile_student.jsp" class="nav_links">Complete Info</a></li>
                    <li><a href="placement_student.jsp" class="nav_links">Placement Info</a></li>
                    <li><a href="contactform_student.jsp" class="nav_links">Contact Us</a></li>
                    <li><a href="changepassword_student.jsp" class="nav_links">Change Password</a></li>
                </ul>
            </nav>
        </section> 

       </div>
        
        <br>
       
        
    </body>
</html>
