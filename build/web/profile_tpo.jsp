<%-- 
    Document   : tpo_profile
    Created on : 25 Apr, 2019, 10:42:28 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">TPO PROFILE</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <style>
            table{
                border:2px solid black;
                margin:10px;
                width:65%;
            }

            .r1{
                background-color: #E3F2E1;
            }

            #d4{
                margin-left:30%; 

            }
        </style>
    </head>
    <body>
        <%@include file = "header_tpo.jsp"%>

        <%!String username = "", password = "";%>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement stmt = conn.createStatement();
            String x = "select * from tpo_password";
            ResultSet rs = stmt.executeQuery(x);
            while (rs.next()) {
                username = rs.getString("username");
                password = rs.getString("password");

            }
        %>

        <table class="table table-hover" style="width:85%;">
            <tr class="r1">
                <td><b>USERNAME</b></td>
                <td></td>


                <td><%=username%> </td>
            </tr>
            <tr>
                <td><b>PASSWORD</b></td>
                <td></td>

                <td><%=password%></td>
            </tr>


        </table>
            <%@include file = "footer-tpo.jsp"%>
    </body>

</html>
