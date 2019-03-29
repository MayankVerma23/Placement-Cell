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
        <%! String otp = "";%>
        <%
            otp = request.getParameter("otp");
        %>
        <%
            HttpSession hs=request.getSession();
            hs.setAttribute("otpstored",otp);
            %>
            <% response.sendRedirect("otpverify.jsp");%>
    </body>
</html>
