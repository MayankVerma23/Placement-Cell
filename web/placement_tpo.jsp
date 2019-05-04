<%-- 
    Document   : placemnt_tpo
    Created on : 19 Mar, 2019, 3:37:16 PM
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
        <title>Home Tpo</title>
    
            <style>
                table{
                    width : 100%;
                }
                td{
                    border : 2px solid black;
                    padding : 20px;
                    width : 200px;
                    height : 100px;
                }
                th{
                    border : 2px solid black;
                    text-align: center;
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
            
            <script>
                function Approve(x)
                {
                        
                        var r = confirm("R U SURE!! U WANT TO APPROVE");
                        
                        if (r == true) 
                        {
                            
                            window.open('approve_company.jsp?companyid='+x,'popUpWindow','height=500,width=400,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                        }
                        else 
                        {
                           
                        } 
                }
                
                function Decline(x)
                {
                    var r = confirm("R U SURE!! U WANT TO DECLINE");
                        
                        if (r == true) 
                        {
                            window.open('decline_company.jsp?companyid='+x,'popUpWindow','height=500,width=400,left=300,top=200,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                        }
                    
                }
                </script>
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
                    <th>Sno</th>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>PHONE NO</th>
                    <th>LOCATION</th>
                    <th>APPROVED</th>
                    <th>DECLINED</th>
                </tr>
                <%! int i=0;
                String status = "waiting";%>
                        <%    //Create the preparedstatement(s)
                            String fetchQuery = "select * from companysignup where status = '"+status+"'";
                            Statement fetchStatement = conn.createStatement();
                            ResultSet rs = fetchStatement.executeQuery(fetchQuery);


                            while(rs.next()){
                              %> 

                                <tr>
                                    <td><%=i%></td>
                                    <td><%=rs.getString("companyid")%></td>
                                    <td><%=rs.getString("companyname")%></td>
                                    <td><%=rs.getString("companyemail")%></td>
                                    <td><%=rs.getString("companyphno")%></td>
                                    <td><%=rs.getString("companylocation")%></td>
                                    <td><button class="btn btn-success" onclick="Approve(<%=rs.getString("companyid")%>)">APPROVE</button></td>
                                    <td><button class="btn btn-danger" onclick="Decline(<%=rs.getString("companyid")%>)">DECLINE</button></td>
                                </tr>
                                <%i=i+1;%>                                    
                            <%

                            }

                            %>
            </table>
        </section> 
        
        </div>  
    </body>
</html>
