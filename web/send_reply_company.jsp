<%-- 
    Document   : send_reply
    Created on : Mar 31, 2019, 6:35:56 PM
    Author     : Divjot
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
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
                 
     
          <%!String name,email,stu_roll,phno,id;int idd;%>
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
         <%   
                
               HttpSession hs=request.getSession();
               name=hs.getAttribute("company_name").toString();
               email=hs.getAttribute("company_email").toString();
               phno=hs.getAttribute("company_phno").toString();
               try{ Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String y="insert into queries values('"+id+"','"+name+"','"+email+"','company','"+sub+"','"+issue+"','"+Str+" at "+Str1+"','"+phno+"',0)";
         st.executeUpdate(y);
         response.sendRedirect("home_company.jsp");
               }
               catch(Exception ex)
               {
                   out.print(ex);
               }
       %>
    </body>
</html>
