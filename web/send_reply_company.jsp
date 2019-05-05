<%-- 
    Document   : send_reply
    Created on : Mar 31, 2019, 6:35:56 PM
    Author     : Divjot
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    </head>
    <body>
        <%!String sub, issue;%>
        <%
            sub = request.getParameter("subject");
            issue = request.getParameter("issue");
        %>


        <%!String name, email, stu_roll, phno;
              int id;%>

        <%
            Date d;
            String Str, Str1;
            Calendar c = Calendar.getInstance();
            d = c.getTime();
            SimpleDateFormat sdf = new SimpleDateFormat("E dd MMMM yyyy ");
            Str = sdf.format(d);
            sdf = new SimpleDateFormat("hh:mm:ss");
            Str1 = sdf.format(d);


        %>                
        <%             HttpSession hs = request.getSession();

            email = hs.getAttribute("company_email").toString();

            try {
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement st = conn.createStatement();
                String w = "select * from companysignup where companyemail='" + email + "'";
                ResultSet rs = st.executeQuery(w);
                while (rs.next()) {
                    name = rs.getString("companyname");
                    phno = rs.getString("companyphno");
                }
                String y = "insert into queries values(null,'" + name + "','" + email + "','company','" + sub + "','" + issue + "','" + Str + " at " + Str1 + "','" + phno + "',0,1)";
                st.executeUpdate(y);
                String x = "Select * from queries where Email='" + email + "' having Subject='" + sub + "' ";
                ResultSet rs1 = st.executeQuery(x);
                while (rs1.next()) {
                    id = rs1.getInt("id");
                }
                String z = "Insert into qmessages values('" + id + "','" + name + "','" + sub + "','" + issue + "','company','" + Str + " at " + Str1 + "')";
                st.executeUpdate(z);
                response.sendRedirect("company_inbox.jsp");
            } catch (Exception ex) {
                out.println(ex);
             }%>
    </body>
</html>
