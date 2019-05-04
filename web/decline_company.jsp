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
        <!--Database connectivity-->
        <%@include file = "database_connection.jsp"%>  
        
        <!--Msg form for declined compines--> 
           <form action="decline_msg.jsp?id=<%=request.getParameter("companyid")%>" method="POST">
            <input type="text" name="myText" id="myText" required>
            <input type="submit" value="click to submit">  
        </form>       
    </body>
</html>
