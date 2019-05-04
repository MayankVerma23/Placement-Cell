<%-- 
    Document   : notice2
    Created on : 18 Apr, 2019, 8:57:11 PM
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
         String notice1=request.getParameter("t1");
        
         
                 
         try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
          
              String y="insert into notice_table values(null,'"+notice1+"')";
                stmt.executeUpdate(y);
                
            
            
        }
        catch(Exception e)
        {
        out.print(e);
        }
    out.print("<script>window.close();</script>");
     
     
     %>
        
        
   
    </body>
</html>
