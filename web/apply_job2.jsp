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
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

        <script>
            function apply_receive(x) {
                //  alert(x);
                window.location.href = "apply_receive1.jsp?companyid=" + x;
            }
        </script>
    </head>

    <body>
       
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






        <div style="text-align:right;">

        </div>
        <br>

        <table class="table table-hover">
            <tr>
                <td>COMPANY NAME</td>

                <td></td>


                <td><%=rs.getString("companyname")%></td>
            </tr>
            <tr>
                <td>BACKLOG ALLOW</td>
                <td></td>

                <td><%=rs.getString("requiredbacklog")%></td>
            </tr>
            <tr>
                <td>PERCENTAGE REQUIRED</td>
                <td></td>

                <td><%=rs.getString("requiredpercentage")%></td>
            </tr>

            <tr>
                <td>REQUIRED SKILL</td>

                <td></td>

                <td><%=rs.getString("requiredskill")%></td>
            </tr>

            <tr>
                <td>SELECTION PROCEDURE</td>

                <td></td>

                <td><%=rs.getString("requiredprocedure")%></td>
            </tr>


            <tr>
                <td>BATCH ALLOW</td>

                <td></td>

                <td><%=rs.getString("requiredbatch")%></td>
            </tr>
            <tr>
                <td>JOB PROFILE</td>

                <td></td>


                <td><%=rs.getString("job_profile")%></td>
            </tr>

            <tr>
                <td>PACKAGE</td>

                <td></td>


                <td><%=rs.getString("package")%></td>
            </tr>
            <tr>
                <td>JOB LOCATION</td>

                <td></td>


                <td><%=rs.getString("job_location")%></td>
            </tr>


        </table>


        <button class="btn btn-danger" onclick="apply_receive(<%=rs.getString("id")%>)">APPLY</button>




        <% }%><br>
    
    </body>
</html>
