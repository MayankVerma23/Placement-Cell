<%-- 
    Document   : send_reply
    Created on : Mar 31, 2019, 6:35:56 PM
    Author     : Divjot
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
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
                 <%!String sub,issue,id;int idd;%>
                 <%
                 sub=request.getParameter("subject");
                 issue=request.getParameter("issue");
                 %>
                 
                 <%
                     Random rand=new Random();
                    idd=rand.nextInt(1000); 
                    id=Integer.toString(idd);    
                 
                 %>
                 
                 <%
                 Date d;
                 String Str,Str1;
                 Calendar c=Calendar.getInstance();
                    d=c.getTime();
                    SimpleDateFormat sdf=new SimpleDateFormat("E dd MMMM yyyy ");
                    Str=sdf.format(d);
                    sdf=new SimpleDateFormat("hh:mm:ss");
                    Str1=sdf.format(d);
                    
                  
                    
                 %>
                 
     
          <%!String name,email,stu_roll,phno;%>
         <%   
                try{
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
                }
                catch(Exception ex)
                {
                    
                }
              
                try{Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String y="insert into queries values('"+id+"','"+name+"','"+email+"','student','"+sub+"','"+issue+"','"+Str+" at "+Str1+"','"+phno+"',0)";
         st.executeUpdate(y);
         out.print(id);
         response.sendRedirect("home_student.jsp");
                }
                catch(Exception ex)
                {
                    
                }
       %>
    </body>
</html>
