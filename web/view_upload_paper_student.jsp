<%-- 
    Document   : stu_company_paper
    Created on : 9 Apr, 2019, 11:41:37 PM
    Author     : My Lappy
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

        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
        <title>VIEW UPLOAD PAPER</title>
    </head>
    <body>
        <%@include file = "header_student.jsp"%>

        <%!String pn = "", im = "", rolno = "", pdf = "";%>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement st = con.createStatement();
                String x1 = "Select * from old_paper";
                ResultSet rs = st.executeQuery(x1);
                while (rs.next()) {

                    im = rs.getString("name");
                    pdf = rs.getString("old_papers");

        %>
        <table style="padding:20px">     
            <tr>
                <td>
                    <b><%=im%></b>
                </td>
                <td>
                    <a href="view_pdf.jsp?pdf=<%=pdf%>">View</a>
                </td>

            </tr>     
        </table> 


        <%
                }
            } catch (Exception ex) {
                out.println(ex);
            }
        %>

    </body>
</html>

