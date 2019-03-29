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
        <%@include file = "database_connection.jsp"%>  
       <%!
            String idd = "";
            String status = "accept";
       %>
       <%
                idd = request.getParameter("companyid");
        %>
         <%    //Create the preparedstatement(s)
                            Statement fetchStatement = conn.createStatement();
                            String y = "update companysignup set status='"+status+"' where companyid='"+idd+"'";
                            
                            fetchStatement.executeUpdate(y);
                           
                            %>
            <form action="approve_msg.jsp?id=<%=request.getParameter("companyid")%>" method="POST">
            <input type="text" name="myText" id="myText">
            <input type="date" name="date" >
            <input type="Submit" value="Click to Submit">
            </form>
                           
                            
                           
    </body>
</html>
