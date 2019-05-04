<%-- 
    Document   : Placement_student
    Created on : 19 Mar, 2019, 3:36:07 PM
    Author     : hp
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
        <title>Home Student</title>
        <style>
            td{
                border : 2px solid black;
                padding : 20px;
                width : 200px;
                height : 100px;
            }
            
            </style>
    </head>
    <body>
         <%@include file = "database_connection.jsp"%>  
        
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->  

        <section>
        <table>
            <%! String status = "accept";%>
                <%    //Create the preparedstatement(s)
                    String fetchQuery = "select * from companysignup where status= '"+status+"'";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                
                     while(rs.next()){
                      %> 
                    
                        <tr>
                            <td><%=rs.getString("companyid")%></td>
                            <td><%=rs.getString("companyname")%></td>
                            <td><%=rs.getString("companyemail")%></td>
                            <td><%=rs.getString("companyphno")%></td>
                            <td><%=rs.getString("companylocation")%></td>
                        </tr>
                    <%
                    
                    }
                 
                    %>
        </table>
        </section>
        </div>
    </body>
</html>

