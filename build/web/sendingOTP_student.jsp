<%-- 
    Document   : sendingOTP_student
    Created on : 29 Mar, 2019, 5:34:37 PM
    Author     : hp
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
            String email = "";
            String stuid = "";
            int count=0;
       %>
       
        <% 
            
                email = request.getParameter("email");

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                Statement stmt=conn.createStatement();
                String x="select * from studentsignup where studentemail='"+email+"'";
                ResultSet rs=stmt.executeQuery(x);
                while(rs.next())
                {      
                    count++;
                    stuid=rs.getString("studentid");
                    
                }

                if(count>0){
                    response.sendRedirect("https://template0706.000webhostapp.com/placementCell/forgetPassProcess_student.php?email="+email+"&&id="+stuid+"");
                }
                
                else{
                    out.print("<script>alert('email not exists')</script>");
                   response.sendRedirect("forgetpassword_student.jsp");
               }
                count=0;
                
           %>
    </body>
</html>
