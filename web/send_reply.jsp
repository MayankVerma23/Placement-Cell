<%-- 
    Document   : send_reply
    Created on : Mar 31, 2019, 6:35:56 PM
    Author     : Divjot
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
       
    </head>
    <body>
                 <%!String sub,issue;%>
                 <%
                 sub=request.getParameter("subject");
                 issue=request.getParameter("issue");
                 %>
                 
     
          <%!String name,email,stu_roll,phno;%>
         <%   
                
               HttpSession hs=request.getSession();
               stu_roll=hs.getAttribute("stu_roll").toString();
               Class.forName("com.mysql.jdbc.Driver");
               Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
               Statement stmt=con1.createStatement();
               String x="select * from studentsignup where studentrollno='"+stu_roll+"'";
               ResultSet rs=stmt.executeQuery(x);
               while(rs.next())
           {      
         
            name=rs.getString("studentname");
             email=rs.getString("studentemail");
             phno=rs.getString("studentphno");
           }
               Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/contact","root","");
         Statement st=con.createStatement();
         String y="insert into queries values(null,'"+name+"','"+email+"','student','"+sub+"','"+issue+"','Yet to be answered','"+phno+"',0)";
         st.executeUpdate(y);
         response.sendRedirect("home_student.jsp");
       %>
    </body>
</html>
