

<%@page import="java.sql.PreparedStatement"%>
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
        <title>REPLY_COMPANY</title>
    </head>

    <%!String name = "", email = "", sub = "", reply = "", ids = "", phno = "";%>

    <%

        HttpSession ticketc = request.getSession();
        ids = ticketc.getAttribute("ct_id").toString();
        //name=ticket.getAttribute("c_id").toString();
        sub = ticketc.getAttribute("ct_sub").toString();
        reply = request.getParameter("rback");

        HttpSession hs = request.getSession();


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
    <%            String x;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
            Statement stmt = conn.createStatement();

            email = hs.getAttribute("company_email").toString();
            String w = "select * from companysignup where companyemail='" + email + "'";
            ResultSet rs3 = stmt.executeQuery(w);
            while (rs3.next()) {
                name = rs3.getString("companyname");

            }
                PreparedStatement st = conn.prepareStatement("insert into qmessages values(?,?,?,?,?,?)");
                st.setString(1, ids);
                st.setString(2, name);
                st.setString(3, sub);
                st.setString(4, reply);
                st.setString(5, "company");
                st.setString(6, Str+" at "+ Str1);
                st.execute();
                
           
            
        } catch (Exception ex) {
            out.print(ex);
        }
        response.sendRedirect("company_ticket.jsp?id=" + ids);
    %>

</html>
