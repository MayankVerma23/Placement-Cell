<%-- 
    Document   : offcampus_signup
    Created on : 31 Mar, 2019, 8:02:28 PM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OFFCAMPUS SIGNUP</title>
    </head>
    <body>

        <%
            String name = request.getParameter("name");
            String collage = request.getParameter("collage");
            String roll = request.getParameter("roll");
            String email = request.getParameter("email");
            String degree = request.getParameter("degree");
            String branch = request.getParameter("branch");
            String batch = request.getParameter("batch");
            String phoneno = request.getParameter("phoneno");
            String gender = request.getParameter("gender");
            String ten = request.getParameter("ten");
            String twe = request.getParameter("twe");
            String sem1 = request.getParameter("sem1");
            String sem2 = request.getParameter("sem2");
            String sem3 = request.getParameter("sem3");
            String sem4 = request.getParameter("sem4");
            String sem5 = request.getParameter("sem5");
            String sem6 = request.getParameter("sem6");
            String sem7 = request.getParameter("sem7");
            String sem8 = request.getParameter("sem8");
            String cgpa = request.getParameter("cgpa");
            String backlog = request.getParameter("backlog");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                Statement stmt = con.createStatement();

                String y = "insert into offcampus_table values(null,'" + name + "','" + collage + "','" + roll + "','" + email + "','" + degree + "','" + branch + "','" + batch + "','" + phoneno + "','" + gender + "','" + ten + "','" + twe + "','" + sem1 + "','" + sem2 + "','" + sem3 + "','" + sem4 + "','" + sem5 + "','" + sem6 + "','" + sem7 + "','" + sem8 + "','" + cgpa + "','" + backlog + "')";
                stmt.executeUpdate(y);
                response.sendRedirect("https://template0706.000webhostapp.com/placementCell/offcampus_student_mail.php?email=" + email + "&&name=" + name + "");

            } catch (Exception e) {
                out.print(e);
            }


        %>



    </body>
</html>
