<%-- 
    Document   : ticket_reply_tpo
    Created on : Apr 2, 2019, 10:25:12 PM
    Author     : Divjot
--%>



<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REPLY</title>
    </head>

    <%!String name = "", email = "", sub = "", reply = "", phno = "", status = ""; %>
    <%!int statuskey = 1, ids;%>

    <%

        HttpSession ticket = request.getSession();
        ids = (Integer) ticket.getAttribute("t_id");
        sub = ticket.getAttribute("t_sub").toString();
        reply = request.getParameter("rback");
        status = request.getParameter("status");
        if (status != null) {
            if (status.equals("End Ticket")) {
                statuskey = 2;
            }
        }
        HttpSession hs = request.getSession();
        name = hs.getAttribute("tpo_name").toString();


    %>
    <%                     Date d;
        String Str, Str1;
        Calendar c = Calendar.getInstance();
        d = c.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("E dd MMMM yyyy ");
        Str = sdf.format(d);
        sdf = new SimpleDateFormat("hh:mm:ss");
        Str1 = sdf.format(d);


    %>        
    <%            String x, y;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement stmt = conn.createStatement();
            x = "insert into qmessages values('" + ids + "','" + name + "','" + sub + "','" + reply + "','tpo','" + Str + " at " + Str1 + "')";
            y = "update queries set Status='" + statuskey + "',seen='0' where ID='" + ids + "'";
            stmt.executeUpdate(x);
            stmt.executeUpdate(y);
        } catch (Exception ex) {
            out.print(ex);
        }
        response.sendRedirect("tickets.jsp?id=" + ids);
    %>

</html>
