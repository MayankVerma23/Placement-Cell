<%-- 
    Document   : signup
    Created on : 7 Mar, 2019, 7:20:20 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">signup</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
       
        
         
    </head>
    
    <body style="background-color: #FEC901" >
      
        <section>
                <%@include file = "navbar.jsp"%>
        </section>
        
        <section>
            <div class="container">
                
                <div class="btn-group">
                    <h1 style="color:white;">SIGNUP</h1>
                </div>
                
                <div class="box">
                    <a href="registration_student.jsp" class="text" role="button" id="student">STUDENT</a>
                    <a href="registration_company.jsp" class="text" role="button">COMPANY</a>
                </div>
            </div>
        </section>
    </body>
</html>
