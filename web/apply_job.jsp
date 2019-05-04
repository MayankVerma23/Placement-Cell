<%-- 
    Document   : apply_job
    Created on : 31 Mar, 2019, 12:42:01 PM
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
        <title>JSP Page</title>
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
        
       <script>
        function apply(x){
            window.location.href = "apply_receive.jsp?companyid="+x;}
            window.setInterval('refresh()', 5000); 	// Call a function every 10000 milliseconds (OR 10 seconds).

    // Refresh or reload page.
        function refresh() {
        window .location.reload();
      
    }
        </script>
        
        
    </head>
    
    <body>
        <%@include file = "database_connection.jsp"%>
        
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
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
                    <th>CHOOSE COMPANY</th>
                </tr>
                
                <%! String desire_company="";%>
                <%    
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                String fetchQuery = "select * from companyrequirements ";
                Statement fetchStatement = con.createStatement();
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
                <td><button class="btn btn-danger" onclick="apply(<%=rs.getString("id")%>)">APPLY</button></td>
            </tr>
                                       
            <% } %>
        </table>        
    </section> 
           
    </body>
</html>
