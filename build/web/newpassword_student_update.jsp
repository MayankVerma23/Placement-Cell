<%-- 
    Document   : newpassword_student_update
    Created on : 29 Mar, 2019, 4:57:57 PM
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
         <%! String temp="";%>
       <%
             HttpSession hs = request.getSession();
             temp = (String)hs.getAttribute("stuid");
        %>
         
    </head>
    <body>
        <%! String neew = "";
            String confirm = "";
        %>
        
        <%
            neew = request.getParameter("new_pass");
            confirm = request.getParameter("confirm_pass");
        %>
        
        <%
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                Statement stmt=conn.createStatement();
                if(neew.equals(confirm))
                {
                    String y="update studentsignup set studentpassword='"+neew+"' where studentid='"+temp+"'";
                    stmt.executeUpdate(y);
                    
                }
                response.sendRedirect("login.jsp");
            }
            catch(Exception e)
            {
                out.print(e);
            }
        %>
    </body>
</html>
