<%-- 
    Document   : Queries
    Created on : Mar 29, 2019, 11:14:34 PM
    Author     : Divjot
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Messages</title>
        <style>
            table
            {
                width : 100%;
            }

            td
            {
                padding : 20px;
                width : 100px;
                height : 50px;
            }

            th
            {
                background-color: #4CAF50;
                color: white;
                text-align: left;
            }

            .hover tr:hover{
                background-color:#F2D0D1;
            }

            th {
                padding-top: 12px;
                padding-bottom: 12px;
                padding-left: 15px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }

            tr{
                font-size:150%;

            }
            td{
                font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
                font-size:90%;
            }
        </style>

    </head>
    <body>

        <!--Start of Navbar Section-->
        <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->

        <%! String name = "";
            String email = "";
            String subject = "";
            int id;
            String design = "";
        %>
        <section> 
            <table class="hover">
                <tr>
                    <th>Name</th> 
                    <th>Subject</th>
                    <th>Email</th>
                    <th></th>
                </tr>


                <%
                    try {
                        String stud = "student";
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                        Statement st = conn.createStatement();
                        String x1 = "Select * from queries where status='0' or status='1' order by ID desc";

                        ResultSet rs = st.executeQuery(x1);
                        while (rs.next()) {
                            id = rs.getInt("ID");
                            name = rs.getString("Name");
                            email = rs.getString("Email");
                            subject = rs.getString("Subject");
                            design = rs.getString("Designation");
                %>
                <tr>            

                    <td><%if (design.equals("student"))
                    {                        %>
                        <i class="fas fa-user-graduate"></i>
                        <%                } else {
                        %>
                        <i class="fas fa-building"></i>
                        <%
                            }
                        %>
                    <%=name%></td>
                    <td><%=subject%></td>
                    <td><%=email%></td>
                    <td> <a href="tickets.jsp?id=<%=id%>"><i class="far fa-comment-dots fa-2x"></i></a></td>
                </tr>
                <%

                        }

}

catch (Exception ex) {
                        out.println(ex);
                    }
                %>
            </table>
        </section><br>
            <%@include file = "footer-tpo.jsp"%>
                </body>
                </html>

