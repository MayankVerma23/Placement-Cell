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
        <title>STUDENT_INFORMATION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

       
    </head>

    <body >

        <table>

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
            <tr>
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
    </body>
</html>


