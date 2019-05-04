<%-- 
    Document   : approved_table
    Created on : 20 Mar, 2019, 4:15:37 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Approved Compnies</title>
        
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
            function Decline(x)
                {
                    var r = confirm("R U SURE!! U WANT TO DECLINE");
                        
                        if (r == true) 
                        {
                            window.open('decline_company.jsp?companyid='+x,'popUpWindow','height=500,width=400,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                        }
                    
                }
        </script>
        
    </head>
    
    <body>
        <!--Database connectivity-->
        <%@include file = "database_connection.jsp"%>
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        
            <!--Start of Display data-->
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
                    String status = "accept"; %>
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
                                        <td><button class="btn btn-danger" onclick="Decline(<%=rs.getString("companyid")%>)">DECLINE</button></td>
                                    </tr>
                                    <%i=i+1;%>                                    
                                <%

                                }

                                %>
                </table>
            </section> 
            <!--End of Display data-->
    </body>
</html>
