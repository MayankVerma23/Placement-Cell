<%-- 
    Document   : approve_company.jsp
    Created on : 20 Mar, 2019, 11:58:34 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Approve Company</title>
    </head>
    
    <body>
        
        <!--Database connectivity-->
        <%@include file = "database_connection.jsp"%>  
        
        <!--Date allotment form for approved compines--> 
            <form action="approve_msg.jsp?id=<%=request.getParameter("companyid")%>" method="POST">
                <input type="text" name="myText" id="myText" required>
                <input type="date" name="date" required>
                <input type="Submit" value="Click to Submit">
            </form>
            
    </body>
</html>
