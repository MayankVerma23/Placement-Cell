<%-- 
    Document   : display_notice
    Created on : Apr 5, 2019, 10:46:13 PM
    Author     : Divjot
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <META HTTP-EQUIV="Refresh" CONTENT="10">
    </head>
    <body>
        <%! int id ;%>
        <% String subject,date,message;%>
                 <%@include file = "database_connection.jsp"%>
                 <br><br><br>
       <%
        
        id=Integer.parseInt(request.getParameter("id"));
            
              
                try{
                     Statement st=conn.createStatement();
                    String x="Select * from notices where sno='"+id+"'";
                    ResultSet rs=st.executeQuery(x);
                    
                    while(rs.next())
                    {
                        subject=rs.getString("subject");
                        message=rs.getString("message");
                        date=rs.getString("date");
                        %>
                         <div class="msgbox">
                <div class="container-center" >
                    <div class="notices">
                <h5 class="userr"><%=date%></span></h5>
                <h2 class="notice_sub"><%=subject%></h2>
                <br><br>
                <p class="notice_sub"><%=message%></p>
                     <br><br>
                     <br><br>
                     
                 </div>
                  </div>
                        
                        <% 
                    }
                }
                catch(Exception ex)
                {
                    out.print(ex);
                }
        %>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        
        
    </body>
</html>
