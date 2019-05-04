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
        <title>JSP Page</title>
    </head>
    <body>
         <!--Database connectivity-->
        
        <%!
                String idd = "";
                String status = "placed";
            %>
            
            <%
                    idd = request.getParameter("studentid");
            %>
            
            <%  //Create the preparedstatement(s)
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         
                Statement fetchStatement = conn.createStatement();
                String y = "update interestedstudents set status='"+status+"' where id='"+idd+"'";
                fetchStatement.executeUpdate(y);
                response.sendRedirect("company_decl_res.jsp");
            %>
    </body>
</html>
