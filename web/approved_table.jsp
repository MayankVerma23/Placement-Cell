<%-- 
    Document   : approved_table
    Created on : 20 Mar, 2019, 4:15:37 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>APPROVED COMPANIES</title>
        <meta http-equiv="refresh" content="10">
        <style>
           
          table{
                border: 2px solid black;
               }
            
            .r1:hover{
                background-color: #add8e682;
            }

        </style>

        <script>
            function Decline(x)
            {
                var r = confirm("R U SURE!! U WANT TO DECLINE");

                if (r == true)
                {
                    window.open('decline_company.jsp?companyid=' + x, 'popUpWindow', 'height=400,width=600,left=450,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                }

            }
        </script>

    </head>

    <body>
        <!--Database connectivity-->

        <!--Start of Navbar Section-->
        <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->

        <!--Start of Display data-->
         <section style="min-height:500px;" class="container">
            <table class="table" >

                <tr style="background-color:black;color:white;">
                    <th>Sno</th>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>PHONE NO</th>
                    <th>LOCATION</th>
                    <th>DECLINED</th>
                </tr>
                <%! int i = 0;
                        String status = "accept";%>
                <%    //Create the preparedstatement(s)
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");

                    String fetchQuery = "select * from companysignup where status = '" + status + "'";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);

                    while (rs.next()) {
                %> 

                <tr class="r1">
                    <td><%=i%></td>
                    <td><%=rs.getString("companyid")%></td>
                    <td><%=rs.getString("companyname")%></td>
                    <td><%=rs.getString("companyemail")%></td>
                    <td><%=rs.getString("companyphno")%></td>
                    <td><%=rs.getString("companylocation")%></td>
                    <td><button class="btn btn-danger" onclick="Decline(<%=rs.getString("companyid")%>)">DECLINE</button></td>
                </tr>
                <%i = i + 1;%>                                    
                <%

                    }

                %>
            </table>
        </section> 
        <!--End of Display data-->
           <%@include file = "footer-tpo.jsp"%> 
    </body>
</html>
