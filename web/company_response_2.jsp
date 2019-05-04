<%-- 
    Document   : company_response_2
    Created on : 29 Mar, 2019, 11:18:13 PM
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
        <%! String com_name="" , com_name1="";%>
       <%
           
          
           String batch1 = request.getParameter("batch");
            String course1 = request.getParameter("course");
            String branch1 = request.getParameter("branch");
            String backlog1= request.getParameter("backlog");
            String percentage1= request.getParameter("percentage");
            String skill1= request.getParameter("skill");
         String procedure1= request.getParameter("procedure");
         String job_profile= request.getParameter("job");
         String pack= request.getParameter("package");
         String location= request.getParameter("job_location");
         

               
                   try{
             HttpSession hs=request.getSession();
             String comp_email=hs.getAttribute("company_email").toString();
                  
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
             Statement stmt=con.createStatement();
             String y="select * from companysignup where companyemail='"+comp_email+"'";
             ResultSet rs = stmt.executeQuery(y);
            while(rs.next()){
            com_name=rs.getString("companyname");
         }
   
         
           String z="select * from companyrequirements ";
            ResultSet rs1 = stmt.executeQuery(z);
         while(rs1.next()){
         com_name1=rs1.getString("companyname");
         }
        if(!com_name.equals(com_name1))
        {
      String x="insert into companyrequirements values(null,'"+com_name+"','"+course1+"','"+branch1+"','"+backlog1+"','"+percentage1+"','"+skill1+"','"+procedure1+"','"+batch1+"','"+job_profile+"','"+pack+"','"+location+"')";
      stmt.executeUpdate(x);
          
             out.print("<script> alert('done') </script>");
             
        }
        else{
        out.print("<script> alert('you already send the requirements') </script>");
          }
            response.sendRedirect("home_company.jsp");
 
         }
         
         catch(Exception ex)
         {
           out.print(ex);
         }
       %>
    </body>
</html>
