<%-- 
    Document   : DAcess
    Created on : Mar 29, 2019, 12:49:11 PM
    Author     : Divjot
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
String name="",email="",subject="",message="",phone="";
 

%>


<%
  name=request.getParameter("name");
    email=request.getParameter("email");
    subject=request.getParameter("subject");
   message=request.getParameter("message");
   phone=request.getParameter("phone");
%>

<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
        Statement stmt=con.createStatement();
         String x1="insert into contactformtable values(null,'"+name+"','"+email+"','"+subject+"','"+message+"','"+phone+"',0)";
         
         stmt.executeUpdate(x1);
         response.sendRedirect("home_student.jsp");
    }
    catch(Exception ex)
    {
        out.print(ex);
    }
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <h1>sucess<h1>
    </body>
</html>