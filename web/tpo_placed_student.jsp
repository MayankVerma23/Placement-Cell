<%-- 
    Document   : tpo_placed_student
    Created on : 2 Apr, 2019, 6:30:01 PM
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
        <title>TPO PLACED TABLE</title>           
        <style>
            table
            {
                width : 50%;
            }

            td
            {
                border : 2px solid black;
                padding : 10px;
                width : 100px;
                height : 50px;
            }

            th
            {
                border : 2px solid black;
                text-align: center;
            }

        </style>
    </head>
    <body>

        <!--Start of Navbar Section-->
        <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->

        <section> 
            <table>
                <tr>
                    <th>COMPANY NAME</th>
                    <th>COMPANY EMAIL ID</th>
                    <th>STUDENT NAME</th>
                    <th>STUDENT ROLL NO.</th>
                    <th>STUDENT EMAIL ID</th>

                </tr>

                <%
                    String status = "placed";

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

                    String fetchQuery = "select * from interestedstudents where status='" + status + "' and student_visible=True;";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while (rs.next()) {
                %> 

                <tr>
                    <td><%=rs.getString("company_name")%></td>                              
                    <td><%=rs.getString("company_email")%></td>
                    <td><%=rs.getString("student_name")%></td>
                    <td><%=rs.getString("student_rollno")%></td>
                    <td><%=rs.getString("student_email")%></td>
                </tr>

                <% }%>
            </table>
        </section> <br>
        <%@include file = "footer-tpo.jsp"%> 
    </body>
</html>
