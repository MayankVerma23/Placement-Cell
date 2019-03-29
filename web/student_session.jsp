<%-- 
    Document   : student_session
    Created on : 14 Mar, 2019, 1:28:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <%!String stu_name2="",stu_roll="",stu_gender2="",
                    stu_email="",stu_degree="",stu_phno="",stu_gender="";
        %>
        <%
             HttpSession hs=request.getSession();
               stu_name2=hs.getAttribute("stu_name").toString();
               stu_roll=hs.getAttribute("stu_roll").toString();
               stu_email=hs.getAttribute("stu_email").toString();
               stu_degree=hs.getAttribute("stu_degree").toString();
                stu_phno=hs.getAttribute("stu_phno").toString();
               stu_gender=hs.getAttribute("stu_gender").toString();
               
               
        %>
        
      
    </body>
</html>
