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
            String companyid1= "", company_per,stu_backlog,req_backlog, stu_roll1;
            String desirecompany1 = "",stu_rollno="",stu_name="",stu_per, comp_email, stu_email;
            int company_per1 , stu_per1 ,stu_backlog1,req_backlog1;
       %>
       <%
           
           
          String status1="waiting";
          HttpSession hs=request.getSession();
          stu_rollno=hs.getAttribute("stu_roll").toString();
          companyid1= request.getParameter("companyid");
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
         String x="select * from companyrequirements where id='"+companyid1+"'";
         ResultSet rs=stmt.executeQuery(x);
         while(rs.next())
          {          
            desirecompany1=rs.getString("companyname");
            company_per=rs.getString("requiredpercentage");
            req_backlog=rs.getString("requiredbacklog");
           
          }
         
          Statement stmt3=con.createStatement();
         String w="select * from companysignup where companyname='"+desirecompany1+"'";
         ResultSet rs3=stmt3.executeQuery(w);
         while(rs3.next())
          {          
            
            comp_email=rs3.getString("companyemail");
          }
            
        Statement stmt1=con.createStatement();
        String y="select * from studentsignup where studentrollno='"+stu_rollno+"'";
         ResultSet r=stmt1.executeQuery(y);
          while(r.next())
          {          
            stu_name=r.getString("studentname");
            stu_per=r.getString("cgpa");
            stu_backlog=r.getString("stu_backlog");
            stu_email=r.getString("studentemail");
          }
         
          Statement stmt4=con.createStatement();
        String j="select * from interestedstudents where student_rollno='"+stu_rollno+"' and company_name='"+desirecompany1+"'";
         ResultSet r1=stmt4.executeQuery(j);
          while(r1.next())
          {          
            stu_roll1=r1.getString("student_rollno");
            
          } 
          stu_per1=Integer.parseInt(stu_per);
          company_per1=Integer.parseInt(company_per);
           req_backlog1=Integer.parseInt(req_backlog);
          stu_backlog1=Integer.parseInt(stu_backlog);
          
          if(!stu_roll1.equals(stu_rollno))
          {
          if(stu_backlog1<=req_backlog1)
          {
          
          if(stu_per1>=company_per1)
          {
             Statement stmt2=con.createStatement();
          String z="insert into interestedstudents values(null,'"+desirecompany1+"','"+comp_email+"','"+stu_name+"','"+stu_rollno+"','"+stu_email+"','"+status1+"')";
             stmt2.executeUpdate(z);
     
          
          }
          else{
          
          out.print("<script>alert('your percentage is less than company requirements');</script>");
           
          }
       
    
          }
          else{
           out.print("<script>alert('you have more backlog. better luck next time');</script>");
           
          
          }
          }
          else{
          
          out.print("<script>alert('you already apply in this company');</script>");
          }
        // HttpSession hs=request.getSession();
         //desirecompany1= hs.getAttribute("desirecompany").toString();
        //out.print(desirecompany1);
       // response.sendRedirect("home_student.jsp");
        %>
       
        
   
    </body>
</html>
