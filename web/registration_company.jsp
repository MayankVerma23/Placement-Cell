<%-- 
    Document   : company_registration
    Created on : 7 Mar, 2019, 7:21:07 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">COMPANY_REGISTER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      
    </head>
    
    <body >
      
        <div class="container">
        <div class="btn-group">
            <a href="signup.jsp"></a>
            <h1>COMPANY SIGNUP</h1>
        </div>
        <div class="box">

            <form action="companysignup" method="post" >
                <input class="text" type="text" name="name" placeholder="Company Name">  
                <input class="text" type="text" name="email" placeholder="Company Email">
                <input class="text" type="text" name="phoneno" placeholder="Contact No.">
                <input class="text" type="text" name="loc" placeholder="Location">
                   <input class="text" type="password" name="pass" placeholder="Password">
                    <input class="text" type="password" name="confpass" placeholder="confpass">
                <button type="submit" class="text" value="SignUp">SIGNUP</button>
                
            </form>
        </div>
        </div>
        
        
    </body>
</html>
