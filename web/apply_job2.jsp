<%-- 
    Document   : apply_job2
    Created on : 22 Apr, 2019, 11:08:49 PM
    Author     : HP
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
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <script>
            function apply_receive(x) {
              
                window.location.href = "apply_receive1.jsp?companyid=" + x;
            }
             

        </script>
        <style>
            
            table{
                border:2px solid black;
                
            }
            .r1{
                      background-color: #E3F2E1;
                 }
         </style>
    </head>

    <body>
        <section>
            <!--Start of Navbar Section-->
            <%@include file = "header_student.jsp"%>
            <!--End of Navbar Section-->
        </section>
          <section class="container">
            <%!String companyid1 = "";%>

            <%
                companyid1 = request.getParameter("companyid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String x = "select * from companyrequirements where id='" + companyid1 + "'";
                ResultSet rs = stmt.executeQuery(x);
                while (rs.next()) {


            %>
            <table class="table table-hover">
                <tr class="r1">
                    <td><b>COMPANY NAME</b></td>
                    <td><%=rs.getString("companyname")%></td>
                </tr>
                <tr>
                    <td><b>BACKLOG ALLOW</b></td>
                    <td><%=rs.getString("requiredbacklog")%></td>
                </tr>
                <tr class="r1">
                    <td><b>PERCENTAGE REQUIRED</b></td>
                    <td><%=rs.getString("requiredpercentage")%></td>
                </tr>

                <tr>
                    <td><b>REQUIRED SKILL</b></td>
                    <td><%=rs.getString("requiredskill")%></td>
                </tr>

                <tr class="r1">
                    <td><b>SELECTION PROCEDURE</b></td>
                    <td><%=rs.getString("requiredprocedure")%></td>
                </tr>


                <tr>
                    <td><b>BATCH ALLOW</b></td>
                    <td><%=rs.getString("requiredbatch")%></td>
                </tr>
                <tr class="r1">
                    <td><b>JOB PROFILE</b></td>
                    <td><%=rs.getString("job_profile")%></td>
                </tr>

                <tr>
                    <td><b>PACKAGE</b></td>
                    <td><%=rs.getString("package")%></td>
                </tr>
                <tr class="r1">
                    <td><b>JOB LOCATION</b></td>
                    <td><%=rs.getString("job_location")%></td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center"><button class="btn btn-danger" onclick="apply_receive(<%=rs.getString("id")%>)">APPLY</button></td></tr>
            
            </table>

                
            <% }%>
        </section>

        <section>
            <%@include file = "footer-student.jsp"%>
        </section>
    </body>
</html>
