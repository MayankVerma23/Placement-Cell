<%-- 
    Document   : otpstore
    Created on : 28 Mar, 2019, 11:01:02 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%! String otp = "";
            String idd = "";
        %>
        <%
            otp = request.getParameter("otp");
            idd = request.getParameter("id");
        %>
        <%
            HttpSession hs = request.getSession();
            hs.setAttribute("otpstored", otp);
            hs.setAttribute("stuid", idd);
        %>
        <% response.sendRedirect("otpverify_student.jsp");%>
    </body>
</html>
