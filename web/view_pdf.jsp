<%-- 
    Document   : view_pdf
    Created on : 15 Apr, 2019, 1:33:31 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW PDF</title>
    </head>
    <body>
        <%!String pdf = "";%>
        <% pdf = request.getParameter("pdf");%>
        <object data="old_paper/<%=pdf%>" height="809" width="1800"></object>

    </body>
</html>
