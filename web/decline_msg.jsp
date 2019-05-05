<%-- 
    Document   : decline_msg
    Created on : 23 Mar, 2019, 12:50:12 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DECLINED MESSAGE</title>
    </head>
    <body>


        <%!String idd = "";
            String status = "reject";

        %>
        <%
            idd = request.getParameter("id");

        %>
        <%  Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement st = conn.createStatement();
            Statement fetchStatement = conn.createStatement();
            String y = "update companysignup set status='" + status + "' where companyid='" + idd + "'";
            fetchStatement.executeUpdate(y);
        %>


        <%
            String msg = request.getParameter("myText");
            String idd = request.getParameter("id");

            fetchStatement = conn.createStatement();
            String z = "insert into message value(null,'" + msg + "','" + idd + "')";
            fetchStatement.executeUpdate(z);
            out.print("<script>window.close();</script>");
        %>

    </body>
</html>
