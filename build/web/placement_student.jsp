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
            .navbar{
            background-color: #4379C0;
            border-color: #4353C0;
           
            }
            .nav_links{
                color:white;
            }
            .nav_links:hover{
                color: black;
            }  
            section{
                margin-top: 10px;
            }
            </style>
    </head>
    <body>
         <%@include file = "database_connection.jsp"%>  
        
        
        <div class="container">
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="logout"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
            
<section> 
        <%@include file = "sliding_text.jsp"%>
</section> 

 <!--NAVBAR-->
        <section> 
            <nav class="navbar">
                <ul class="nav navbar-nav">
                    <li><a href="profile_student.jsp" class="nav_links">Complete Info</a></li>
                    <li><a href="placement_student.jsp" class="nav_links">Upcoming Compnies</a></li>
                    <li><a href="contactf_stud.jsp" class="nav_links"><i class="fas fa-cog"></i>Contact Form</a></li>
                    <li><a href="apply_job.jsp" class="nav_links">Apply Job</a></li>
                    <li><a href="student_inbox.jsp" class="nav_links"><i class="fas fa-envelope"></i>Message</a></li>
                    <li><a href="changepassword_student.jsp" class="nav_links">Change Password</a></li>
                </ul>
            </nav>
        </section> 

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

