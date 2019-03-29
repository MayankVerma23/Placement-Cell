<%-- 
    Document   : student_navbar
    Created on : 12 Mar, 2019, 11:38:31 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
    <%@include file="student_session.jsp"%>  
<nav class="navbar navbar-inverse" style="margin-bottom:0px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        
         <a class="navbar-brand" href="#"> 
     <span class="glyphicon glyphicon-home"></span></a>
    </div>
      
    <div class="collapse navbar-collapse navbar-right"  id="myNavbar">
      <ul class="nav navbar-nav">
       <li><a href="student_information.jsp">PROFILE </a></li>
       <li><a href="#">CHANGE PASSWORD</a></li>
       <li><a href="#">LOG OUT</a></li>
      </ul> 
    </div>
       
  </div>
</nav>
  

</body>
</html>
