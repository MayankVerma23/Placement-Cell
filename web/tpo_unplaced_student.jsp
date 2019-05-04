<%-- 
    Document   : tpo_unplaced_student
    Created on : 2 Apr, 2019, 6:39:18 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                width : 50%;
            }
            
            td
            {
                border : 2px solid black;
                padding : 10px;
                width : 100px;
                height : 50px;
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
                    <th>STUDENT ID</th>
                    <th>STUDENT NAME</th>
                    <th>STUDENT ROLL NO.</th>
                    
                </tr>
                
                    <%  
                    String status="unplaced";
                          
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

                    String fetchQuery = "select * from interestedstudents where status='"+status+"'";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while(rs.next()){
                    %> 

                    <tr>
                       <td><%=rs.getString("company_name")%></td>                              
                       <td><%=rs.getString("id")%></td>
                       <td><%=rs.getString("student_name")%></td>
                       <td><%=rs.getString("student_rollno")%></td>
                    </tr>
                                       
                    <% } %>
            </table>
        </section> 

    </body>
</html>
