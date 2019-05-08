<%-- 
    Document   : notice1
    Created on : 18 Apr, 2019, 8:49:59 PM
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
        <title>Notice 1</title>

        <style>

            textarea{
                width: 650px;
                height: 120px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #2F4F4F;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 20px;
                resize: none;
                margin-left:3%;
            }
            
            #subject{
                width: 650px;
                height: 60px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #2F4F4F;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
                
            }
            
            .topics{
                color: #333333;
                text-align:center;
                text-transform: capitalize;
            }
            
            #section1{
                margin-top:10%;
              
            }
        
        </style>
    </head>
    <body>
         <%@include file = "index_navbar.jsp"%>
        
                 
         <section id="section1" class="container"> 
           <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    String fetchQuery = "select * from notice_table where common='common' ";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while (rs.next()) {
                %> 

                <div style="font-size:20px;">Posted On   <%=rs.getString("date")%></div><br>
                <textarea  name="t2" id="subject" style="font-size:22px;" readonly="">Subject is :-  <%=rs.getString("subject")%></textarea><br>
               <textarea  name="t1" style="font-size:20px;" readonly><%=rs.getString("message")%></textarea><br><br><br><br><br>
               
           <%}%>
         </section>
    <section>
      <%@include file = "footer-tpo.jsp"%> 
  </section>
    
    </body>
  
</html>
