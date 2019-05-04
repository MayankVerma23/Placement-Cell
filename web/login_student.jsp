<%-- 
    Document   : studentlogin
    Created on : 14 Mar, 2019, 1:58:11 PM
    Author     : My Lappy
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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>   
    </head>
    
    <body >
      
        <div class="container">
        <div class="btn-group">
        <h1>LOGIN</h1>
        </div>
        <form class="box" action="login_student.jsp" >
           
        <input class="text" type="text" name="roll" placeholder="Roll no">
         <input class="text" type="text" name="pass" placeholder="Password">
        <button type="submit" class="text" value="LOGIN">LOGIN</button>
        <a href="forgetpassword_student.jsp">Forget Password</a>
        </form>
        </div>
        
       
            <%
            HttpSession hs=request.getSession();
            hs.setAttribute("log","student");  
            %>  
            
              <%!
              String rolno="",pass="";
              String imgroll="000";
              %>
              <%
              rolno =request.getParameter("roll");
              pass =request.getParameter("pass");
 
    try {
               
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
            Statement stmt=con.createStatement();
            String y="select * from student_image where rollno='"+rolno+"'";
            ResultSet rs=stmt.executeQuery(y);
            while(rs.next())
             {
                 imgroll=rs.getString("rollno");
             }
            if(rolno.equals(imgroll)) 
             {
                  request.setAttribute("roll", rolno);
                  request.setAttribute("pass", pass);
                  request.getRequestDispatcher("login").forward(request, response);
                  response.sendRedirect("login");
             }
           else{
                 hs.setAttribute("roll",rolno);
                 out.print("<script>window.open('image_studentt.jsp','popUpWindow','height=500,width=600,left=650,top=250,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');</script>");
               }
        }
   
        catch(Exception e)
        {
           // out.print(e);
        } 
 %>