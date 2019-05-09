<%-- 
    Document   : company_result
    Created on : 9 May, 2019, 1:29:43 PM
    Author     : My Lappy
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>COMPANY RESULT</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


    </head>

    <body >
        <section>
            <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
            <!--End of Navbar Section-->
        </section>
        <section style="min-height:500px;" class="container">
            <table class="table"  >
                <tr style="background-color:black;color:white;">
                    <th>STUDENT NAME</th>
                    <th>STUDENT EMAIL ID</th>
                    <th>STUDENT ROLL NO.</th>
                    <th>DECLARE RESULT</th>
                </tr>
                <%!String student_name = "", student_email = "", student_rollno = "";%>

                <%
                    String comp_email = request.getParameter("email");
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                        Statement stmt = conn.createStatement();
                        String x = "select * from interestedstudents where company_email='" + comp_email + "'";
                        ResultSet rs = stmt.executeQuery(x);
                        while (rs.next()) {
                %>
                <tr class="r1">
                    <td><%=rs.getString("student_name")%></td> 
                    <td><%=rs.getString("student_email")%></td> 
                    <td><%=rs.getString("student_rollno")%></td> 
                    <td><%=rs.getString("status")%></td>
                </tr>

                <%  }
                    } catch (Exception ex) {
                        out.print(ex);
                    }
                %>

            </table>
        </section>
        <section>
            <!--Start of Footer Section-->
            <%@include file = "footer-tpo.jsp"%>
            <!--End of Footer Section--> 
        </section>
    </body>
</html>


