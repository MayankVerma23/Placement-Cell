<%-- 
    Document   : remove_notice
    Created on : 20 Apr, 2019, 11:03:05 PM
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
        <title>JSP Page</title>
    </head>
    <body>
          <%!
                String idd = "";
               
            %>
            
            <%
                    idd = request.getParameter("messageid1");
               
            %>
            
            <%  //Create the preparedstatement(s)
                
                
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         
                Statement fetchStatement = conn.createStatement();
                  String x = "Delete from notice_table where id='"+idd+"'";
                   fetchStatement.executeUpdate(x);
                  
                response.sendRedirect("home_tpo.jsp");
            %>
  
    </body>
</html>
