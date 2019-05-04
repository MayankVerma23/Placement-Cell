<%-- 
    Document   : otpstore_company
    Created on : 29 Mar, 2019, 11:10:37 PM
    Author     : hp
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
        <title>JSP Page</title>
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
            HttpSession hs=request.getSession();
            hs.setAttribute("otpstored",otp);
            hs.setAttribute("compid",idd);
            %>
            <% response.sendRedirect("otpverify_company.jsp");%>
    </body>
</html>
