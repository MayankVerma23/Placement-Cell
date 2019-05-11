<%-- 
    Document   : sending_mail_company
    Created on : 11 May, 2019, 2:19:45 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            
        <%!String to = "",message="";%>

          <%
                try {
                to= request.getParameter("to");
                  message= request.getParameter("message");
                  
                 response.sendRedirect("https://template0706.000webhostapp.com/placementCell/mail_new_company.php?email=" + to + "&&msg=" + message + "");
             
                 }
                catch (Exception ex) {
                    out.print(ex);
                }
               %> 
    </body>
</html>
