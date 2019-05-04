<%-- 
    Document   : declined_table
    Created on : 20 Mar, 2019, 4:16:27 PM
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
        <meta http-equiv="refresh" content="10">
        <title>Declined Compnies</title>
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
                function Approve(x)
                {
                        
                        var r = confirm("R U SURE!! U WANT TO APPROVe");
                        
                        if (r == true) 
                        { 
                            window.open('approve_company.jsp?companyid='+x,'popUpWindow','height=500,width=600,left=650,top=250,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                        }
                        else 
                        {
                           
                        } 
                }
                </script>
    </head>
    <body>
    
        
        <!--Start of Navbar Section-->
        <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        
        <section> 
            <table>
                <tr>
                    <th>Sno</th>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>PHONE NO</th>
                    <th>LOCATION</th>
                    <th>DECLINED</th>
                </tr>
                <%! int i=0;
                String status = "reject";%>
                        <%    //Create the preparedstatement
                            Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                            Statement st=conn.createStatement();
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
                                   
                                </tr>
                                <%i=i+1;%>                                    
                            <%

                            }

                            %>
            </table>
        </section> 
        
       
    </body>
</html>
