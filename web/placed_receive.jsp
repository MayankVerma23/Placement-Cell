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
            String comp_email = "";
        %>

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");

            String[] ids = request.getParameterValues("checkbox-group");
            
            Statement fetchStatement = conn.createStatement();
            String x = "select * from interestedstudents where id='" + ids[0] + "' ";
            ResultSet rs = fetchStatement.executeQuery(x);
            if(rs.next()) {
                comp_email = rs.getString("company_email");
            }
            
            Statement allUnplaced = conn.createStatement();
            String updateQuery = "update interestedstudents set status='unplaced' where company_email='" + comp_email + "' ";

            allUnplaced.executeUpdate(updateQuery);
            
            for (String idd : ids) {

        

          //Create the preparedstatement(s)
                fetchStatement = conn.createStatement();
                x = "select * from interestedstudents where id='" + idd + "' ";
                rs = fetchStatement.executeQuery(x);
                if(rs.next()) {
                    stu_roll = rs.getString("student_rollno");
                }
                String y = "update interestedstudents set status='" + status + "' where id='" + idd + "'";
                fetchStatement.executeUpdate(y);

            }
            
            Statement updateStatement = conn.createStatement();
            updateQuery = "update company_status set status='result_declared' where company_email='"+comp_email+"'";
            
            updateStatement.executeUpdate(updateQuery);
            response.sendRedirect("company_decl_res.jsp");
        %>
    </body>
</html>
