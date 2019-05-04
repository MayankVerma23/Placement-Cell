<%-- 
    Document   : submit_reply.jsp
    Created on : Mar 30, 2019, 12:54:39 AM
    Author     : Divjot
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!String Name="",Email="",Sub="",Reply="",ids=""; %>
        
        <%
                
           HttpSession hs = request.getSession();
            ids = (String)hs.getAttribute("id");
            Reply=request.getParameter("reply");
            out.print(ids);
            out.print(Reply);
        %>
        <%
            String x;
            try{
                  Class.forName("com.mysql.jdbc.Driver");
         Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/contact","root","");
         Statement stmt=conn.createStatement();
         x="Update queries set Reply='"+Reply+"',Status='"+1+"'  where ID='"+ids+"'";
         
         stmt.executeUpdate(x);
            }
            catch(Exception ex)
            {
                out.print(ex);
            }

         %>
    </body>
</html>
