<%-- 
    Document   : notice2
    Created on : 18 Apr, 2019, 8:57:11 PM
    Author     : HP
--%>



<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice 2</title>
    </head>
    <body>
        <%
           
            String subject = request.getParameter("t2");
            String notice1 = request.getParameter("t1");
            String designation1 = request.getParameter("student");
            String designation2 = request.getParameter("company");
            
            String designation3 = request.getParameter("both");
          Date d=new Date();
          SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
    String strDate = formatter.format(d);  
    
       
           try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                Statement stmt = con.createStatement();
                String y = "insert into notice_table values(null,'"+subject+"','" + notice1 + "','" + designation1 + "','" + designation2 + "','" + designation3 + "','"+strDate+"')";
                stmt.executeUpdate(y);
                out.print("<script> window.alert('NOTICE POST SUCCESSFULLY') </script>");
                out.print("<script> window.location.href='home_tpo.jsp' </script>");

            } catch (Exception e) 
            {
                out.print(e);
            }
        %>

    </body>
</html>
