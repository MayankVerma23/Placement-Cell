<%-- 
    Document   : company_responsetable
    Created on : 30 Mar, 2019, 11:30:40 AM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
           
        <style>
            table
            {
                width : 100%;
            }
            
            td
            {
                border : 2px solid black;
                padding : 20px;
                width : 200px;
                height : 100px;
            }
                
            th
            {
                border : 2px solid black;
                text-align: center;
            }
            
        </style>
    </head>
    <body>
       
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        
       <section> 
            <table>
                <tr>
                    <th>COMPANY NAME</th>
                    <th>REQUIRED COURSE</th>
                    <th>REQUIRED BRANCH</th>
                    <th>NO. OF BACKLOG</th>
                    <th>DEGREE PERCENTAGE</th>
                    <th>SKILLS</th>
                    <th>SELECTION PROCEDURE</th>
                   <th>STUDENTS BATCH</th>
                   <th>JOB PROFILE</th>
                   <th>PACKAGE</th>
                   <th>JOB LOCATION</th>
                </tr>
                
                <%    
               Class.forName("com.mysql.jdbc.Driver");
                Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                String fetchQuery = "select * from companyrequirements ";
                Statement fetchStatement = conn.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                while(rs.next()){
                %> 

                <tr>                
                    <td><%=rs.getString("companyname")%></td>
                    <td><%=rs.getString("requiredcourse")%></td>
                    <td><%=rs.getString("requiredbranch")%></td>
                    <td><%=rs.getString("requiredbacklog")%></td>
                    <td><%=rs.getString("requiredpercentage")%></td>
                    <td><%=rs.getString("requiredskill")%></td>
                    <td><%=rs.getString("requiredprocedure")%></td>
                    <td><%=rs.getString("requiredbatch")%></td>
                    <td><%=rs.getString("job_profile")%></td>
                    <td><%=rs.getString("package")%></td>
                    <td><%=rs.getString("job_location")%></td>
                </tr>
                                       
                <% } %>
            </table>
        </section> 
    </body>
</html>
