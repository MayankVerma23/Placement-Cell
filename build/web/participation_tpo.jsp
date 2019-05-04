<%-- 
    Document   : participation_tpo
    Created on : 31 Mar, 2019, 4:26:52 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            
            .navbar
            {
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
            
        <section>
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="logout"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
        </section>    

        <section> 
            <%@include file = "sliding_text.jsp"%>
        </section> 

        <section> 
            <nav class="navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="profile.jsp" class="nav_links">Complete Info</a></li>
                        <li><a href="placement_tpo.jsp" class="nav_links">New Company Request</a></li>
                        <li><a href="approved_table.jsp" class="nav_links">Approved Compnies</a></li>
                        <li><a href="declined_table.jsp" class="nav_links">Declined Compnies</a></li>
                        <li><a href="company_responsetable.jsp" class="nav_links">Accepted Company Reequirments</a></li>
                        <li><a href="participation_tpo.jsp" class="nav_links">Intrested Candidates</a></li>
                        <li><a href="Your_Queries.jsp" class="nav_links"><i class="fas fa-envelope"></i>Message</a></li>
                        <li><a href="changepassword_tpo.jsp" class="nav_links">Change Password</a></li>
                    </ul>
            </nav>
        </section>
       <section> 
            <table>
                <tr>
                    <th>company</th>
                    <th>STUDENT ID</th>
                    <th>STUDENT NAME</th>
                    <th>STUDENT ROLL NO.</th>   
               </tr>
                
                        <%    
               Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");

          String fetchQuery = "select * from interestedstudents";
        Statement fetchStatement = con.createStatement();
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
        </div> 
     
    </body>
</html>
