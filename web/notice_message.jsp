<%-- 
    Document   : notice_message
    Created on : 6 May, 2019, 6:56:39 PM
    Author     : HP
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
        <title>MESSAGE</title>

        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

        <style>

            body{
                background-color: wheat;
            }
            textarea{
                width: 450px;
                height: 200px;

                box-sizing: border-box;
                border: 2px solid #2F4F4F;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
                margin:0px auto;   
            }
            .box{
                border:2px solid black;
                text-align:center; 
                background-color:white;
                width:100%;
                height:100vh;
               
            }

        </style>

        <script>
            function CLOSE() {
                window.close();
            }
        </script>
    </head>
    <body>
        <%!String id1 = "";%>

        <%
            id1 = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement stmt = conn.createStatement();
            String x = "select * from notice_table where id='" + id1 + "'";
            ResultSet rs = stmt.executeQuery(x);
            while (rs.next()) {


        %>
        <div class="box"> 
            <label style="font-size:30px;">NOTICE</label><hr style="border:2px dotted black">
            <label style="font-size:20px;">POSTED ON :-      <%=rs.getString("date")%></label><br><br>
            <label style="font-size:20px;">SUBJECT :-    <%=rs.getString("subject")%></label><br><br>
            <label style="font-size:20px;">MESSAGE :-   <%=rs.getString("message")%></label><br><br>
            <%}%>              
            <button class="btn btn-warning"  onclick="CLOSE()">CLOSE</button>
        </div>
    </body>
</html>
