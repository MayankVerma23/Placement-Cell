<%-- 
    Document   : studentlogin
    Created on : 14 Mar, 2019, 1:58:11 PM
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
        <link rel="Stylsheet" type="text/css" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>  
        
        
    </head>
    
    <body >
      
        <div class="container">
        <div class="btn-group">
        <h1>LOGIN</h1>
        </div>
        <form class="box" action="login" autocomplete="off">
           
        <input class="text" type="text" name="roll" placeholder="Roll no" required>
        <input class="text" type="password" name="pass" placeholder="Password" required>
         <button type="submit" class="text" value="LOGIN" >LOGIN</button>
        <a href="forgetpassword_student.jsp">Forget Password</a>
        </form>
        </div>
        
       
        <%
            HttpSession hs=request.getSession();
            hs.setAttribute("log","student");
            %>  
    </body>
</html>