<%-- 
    Document   : home
    Created on : 15 Mar, 2019, 12:54:02 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Home Tpo</title>
    
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
        
        
        <div class="container">
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="logout"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
            
<section> 
        <%@include file = "sliding_text.jsp"%>
</section> 

<section> 
    <nav class="navbar">
  <ul class="nav navbar-nav">
        <li><a href="profile.jsp" class="nav_links">Complete Info</a></li>
        <li><a href="placement_tpo.jsp" class="nav_links">New Company Request</a></li>
        <li><a href="approved_table.jsp" class="nav_links">Approved Compnies</a></li>
        <li><a href="declined_table.jsp" class="nav_links">Declined Compnies</a></li>
        <li><a href="company_responsetable.jsp" class="nav_links">Accepted Company response</a></li>
        <li><a href="changepassword_tpo.jsp" class="nav_links">Change Password</a></li>
 </ul>
</nav>
</section> 
    </div>  
    </body>
</html>
