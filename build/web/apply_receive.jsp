<%-- 
    Document   : apply_receive
    Created on : 31 Mar, 2019, 1:10:35 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
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
            String companyid1= "";
            String desirecompany1 = "",stu_rollno="",stu_name="";
       %>
       <%
           HttpSession hs=request.getSession();
          stu_rollno=hs.getAttribute("stu_roll").toString();
          companyid1= request.getParameter("companyid");
        try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
         String x="select * from companyrequirements where id='"+companyid1+"'";
         ResultSet rs=stmt.executeQuery(x);
         while(rs.next())
          {          
            desirecompany1=rs.getString("companyname");
          
          }
          
          String y="select * from studentsignup where studentrollno='"+stu_rollno+"'";
         ResultSet r=stmt.executeQuery(y);
          while(r.next())
          {          
            stu_name=r.getString("studentname");
          
          }
          String z="insert into interestedstudents values(null,'"+desirecompany1+"','"+stu_name+"','"+stu_rollno+"')";
             stmt.executeUpdate(z);
     
          
        }
        catch(Exception e)
        {
        }
       
      
        
        // HttpSession hs=request.getSession();
         //desirecompany1= hs.getAttribute("desirecompany").toString();
        //out.print(desirecompany1);
        response.sendRedirect("apply_job.jsp");
        %>
       
        
   
    </body>
</html>
