<%-- 
    Document   : placed_receive
    Created on : 2 Apr, 2019, 5:39:33 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PLACED RECIVE</title>
    </head>
    <body>
        <!--Database connectivity-->

        <%!
            String stu_roll;
            String status = "placed";
        %>

        <%
            Class.forName("com.mysql.jdbc.Driver");
             Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
              String[] ids = request.getParameterValues("checkbox-group"); 
              for(String idd : ids) {
                 
        %>

        <%  //Create the preparedstatement(s)

                
                Statement fetchStatement = conn.createStatement();
                String x = "select * from interestedstudents where id='" + idd + "' ";
                ResultSet rs = fetchStatement.executeQuery(x);
                while (rs.next()) {

                    stu_roll = rs.getString("student_rollno");

                }
                String y = "update interestedstudents set status='" + status + "' where id='" + idd + "'";
                fetchStatement.executeUpdate(y);
              //  String z = "update studentsignup set studentstatus='" + status + "' where studentrollno='" + stu_roll + "'";
             //   fetchStatement.executeUpdate(z);
            }
             response.sendRedirect("company_decl_res.jsp");
        %>
    </body>
</html>
