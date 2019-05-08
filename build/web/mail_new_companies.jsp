<%-- 
    Document   : mail_new_companies
    Created on : 7 May, 2019, 12:54:41 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="SendMail" method="POST">
            <input type="email" name="email" placeholder="To" >
            <input type="text" name="subject" placeholder="Subject" >
            <textarea name="message" placeholder="message"></textarea>
            <input type="submit" value="Send">
        </form>
    </body>
</html>
