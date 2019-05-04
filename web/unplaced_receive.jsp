<%-- 
    Document   : unplaced_receive
    Created on : 2 Apr, 2019, 6:01:11 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <!--Database connectivity-->
        <%@include file = "database_connection.jsp"%>  
        
        <%!
                String idd = "";
                String status = "unplaced";
            %>
            
            <%
                    idd = request.getParameter("studentid");
            %>
            
            <%  //Create the preparedstatement(s)
                Statement fetchStatement = conn.createStatement();
                String y = "update interestedstudents set status='"+status+"' where id='"+idd+"'";
                fetchStatement.executeUpdate(y);
                response.sendRedirect("selected_candidates.jsp");
            %>
    </body>
</html>
