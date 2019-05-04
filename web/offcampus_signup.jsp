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
        <title>JSP Page</title>
    </head>
    <body>
         
        <%
         String name1=request.getParameter("name");
         String collname=request.getParameter("coll");
          String coll_roll1=request.getParameter("coll_roll");
         String coursename =request.getParameter("course");
         String branchname =request.getParameter("branch");
         String backlog1 =request.getParameter("backlog");
         String passyear1 =request.getParameter("passyear");
         String percent1 =request.getParameter("12");
         String percent2 =request.getParameter("degree_per");
         String password =request.getParameter("pass");
                 
         try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
          
              String y="insert into offcampus_table values(null,'"+name1+"','"+collname+"','"+coll_roll1+"','"+coursename+"','"+branchname+"','"+backlog1+"','"+passyear1+"','"+percent1+"','"+percent2+"','"+password+"')";
                stmt.executeUpdate(y);
                response.sendRedirect("index.jsp");
            
            
        }
        catch(Exception e)
        {
        out.print(e);
        }
     
     
     
     %>
        
        
   
    </body>
</html>
