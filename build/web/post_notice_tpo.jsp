<%-- 
    Document   : post_notice
    Created on : Apr 4, 2019, 9:34:11 PM
    Author     : Divjot
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </head>
    <body>
        <%!String sub, issue, id;
            int idd;%>
        <%
            sub = request.getParameter("subject");
            issue = request.getParameter("issue");
        %>

        <%
            Random rand = new Random();
            idd = rand.nextInt(1000);
            id = Integer.toString(idd);

        %>

        <%                     Date d;
            String t1, t2;
            Calendar c = Calendar.getInstance();
            d = c.getTime();
            SimpleDateFormat sdf = new SimpleDateFormat(" MMMM dd yyyy ");
            t1 = sdf.format(d);


        %>


        <%!String subject = "", message = "", time = "";%>
        <%             subject = request.getParameter("subject");
            message = request.getParameter("message");

            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement st = conn.createStatement();
            String y = "insert into notices values(null,'" + subject + "','" + message + "',CURRENT_DATE)";
            st.executeUpdate(y);
            out.print(id);
            response.sendRedirect("new_notices_tpo.jsp");
        %>
    </body>
</html>