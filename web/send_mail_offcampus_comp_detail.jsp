<%-- 
    Document   : send_mail_offcampus_comp_detail
    Created on : 10 May, 2019, 3:21:28 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <style>
            table{
                border:2px solid black;
                margin:0 auto;
            }

            .r1{
                background-color: #E3F2E1;
            }

            #d4{
                margin-left:50%; 
            }
            #heading{
                font-size:34px;
                text-align:center;
                text-transform: uppercase;
            }
        </style>
    </head>

    <body>
        <section>
            <%@include file = "index_navbar.jsp"%>
        </section>

        <section style="margin-top:80px;">
            <%!String companyid1 = "",companyyy_name="", studemail = "" ;%>

            <%
                try {
                companyid1 = request.getParameter("companyid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String x = "select * from companyrequirements where id='" + companyid1 + "'";
                ResultSet rs = stmt.executeQuery(x);
                while (rs.next()) {
                    companyyy_name=rs.getString("companyname");
                }

                String y = "select * from offcampus_table ";
                rs = stmt.executeQuery(y);
                
                while (rs.next()) {
                    studemail= rs.getString("email");
                    response.sendRedirect("https://template0706.000webhostapp.com/placementCell/offcampus_student.php?email=" + studemail + "&&companyname=" + companyyy_name + "");
                }
                }
                catch (Exception ex) {
                    out.print(ex);
                }
               %> 
               
        </section>

       

    </body>
</html>