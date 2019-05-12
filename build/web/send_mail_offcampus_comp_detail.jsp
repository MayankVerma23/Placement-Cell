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
            th,td{
                padding:10px !important;
            }
            .r1:hover{
                background-color: #add8e682;
            }
            
            
        </style>
    
    </head>

    <body>
        <section>
            <%@include file = "header_tpo.jsp"%>
        </section>

        <section style="min-height:500px;" class="container">
            <%!String companyid1 = "",companyyy_name="", studname="",studemail = "" ;%>

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
               %>
               <table style="min-width: 80%;">
                   <tr style="background-color:black;color:white;">
                   <th>Student Name</th>
                   <th>Student Email</th>
                   <th>Send Mail</th>
                   </tr>
            <% 
                while (rs.next()) {
                    %>
                    <tr class="r1">
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("email")%></td> 
                        <td><button class="btn btn-success" onclick="send(<%=rs.getString("email")%>)">SEND</button></td>
                    </tr>
                    <%}
                }
                catch (Exception ex) {
                    out.print(ex);
                }
               %> 
               </table>
        </section>
     
       </body>
           
        <script>
             function send(x) {   
                window.location.href = "https://template0706.000webhostapp.com/placementCell/offcampus_student.php?email=" + x + "companyname=" +<%=companyyy_name%>;
            }
        </script>
   
</html>