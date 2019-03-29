<%-- 
    Document   : decline_company
    Created on : 20 Mar, 2019, 3:20:44 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Decline Company</title>
    </head>
    
    <body>
        <%@include file = "database_connection.jsp"%> 
        
        <%!String idd="";
        String status = "reject";
        %>
        <%
                idd = request.getParameter("companyid");
                
        %>
         
        <% 
            Statement  fetchStatement = conn.createStatement();
            String y = "update companysignup set status='"+status+"' where companyid='"+idd+"'";
            fetchStatement.executeUpdate(y);
            %>
        
        
            <form action="decline_msg.jsp?id=<%=request.getParameter("companyid")%>" method="POST">
            <input type="text" name="myText" id="myText">
            <input type="Submit" value="Click to Submit">
        </form>       
    </body>
</html>
