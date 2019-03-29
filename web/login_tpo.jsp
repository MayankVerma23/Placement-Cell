<%-- 
    Document   : tpo_login
    Created on : 14 Mar, 2019, 2:00:40 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">Login</title>
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
        <h1>LOGIN</h1>
        </div>
        <form class="box" action="login" >
           
        <input class="text" type="text" name="name" placeholder="Username">
         <input class="text" type="text" name="pass" placeholder="Password">
        <button type="submit" class="text" value="LOGIN">LOGIN</button>

        </form>
        </div>
        
        
        <%
            HttpSession hs=request.getSession();
            hs.setAttribute("log","tpo");
            %>  
    </body>
</html>