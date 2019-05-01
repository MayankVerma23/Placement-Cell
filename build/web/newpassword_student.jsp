<%-- 
    Document   : newpassword_student
    Created on : 29 Mar, 2019, 3:34:20 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
                <form action="newpassword_student_update.jsp">
                    <input type="text" name="new_pass" required="" >
                    <input type="text" name="confirm_pass" required="" >
                    <input type="submit"  value="Submit">
               </form>
    </body>
</html>
