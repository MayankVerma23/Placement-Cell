<%-- 
    Document   : company_response_2
    Created on : 29 Mar, 2019, 11:18:13 PM
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
        
       <%
          String comp_name= request.getParameter("name");
           String batch1 = request.getParameter("batch");
            String course1 = request.getParameter("course");
            String branch1 = request.getParameter("branch");
            String backlog1= request.getParameter("backlog");
            String percentage1= request.getParameter("percentage");
            String skill1= request.getParameter("skill");
         String procedure1= request.getParameter("procedure");
                  
               
                   try{
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
             Statement stmt=con.createStatement();
             String x="insert into companyrequirements values(null,'"+comp_name+"','"+course1+"','"+branch1+"','"+backlog1+"','"+percentage1+"','"+skill1+"','"+procedure1+"','"+batch1+"')";
             stmt.executeUpdate(x);
          
             out.print("<script> alert('done') </script>");
             response.sendRedirect("home_company.jsp");
         
             
         }
         
         catch(Exception ex)
         {
           out.print(ex);
         }
       %>
    </body>
</html>
