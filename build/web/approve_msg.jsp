<%-- 
    Document   : approve_msg.jsp
    Created on : 28 Mar, 2019, 10:24:16 PM
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
         <%@include file = "database_connection.jsp"%> 
      <%
          String msg = request.getParameter("myText");
          String companyid = request.getParameter("id");
          String date = request.getParameter("date");
          
          Statement fetchStatement = conn.createStatement();
          String z = "insert into approved_comp value(null,'"+msg+"','"+companyid+"','"+date+"')";
          fetchStatement.executeUpdate(z);
       %>
    </body>
</html>