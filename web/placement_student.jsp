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
        <title>HOME STUDENT</title>
        <style>
            table{
                border: 2px solid black;
               }
            
            .r1:hover{
                background-color: #add8e682;
            }
        </style>
    </head>
    <body>

        <section>
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->  
        </section>

        <section style="min-height:500px;" class="container">
            <table class="table" >

                <tr style="background-color:black;color:white;">
                    <th>COMPANY ID</th>
                    <th>COMPANY NAME</th>
                    <th>EMAIL</th>
                    <th>PHONE NO</th>
                    <th>LOCATION</th>
                </tr>

                <%! String status = "accept";%>
                <%    //Create the preparedstatement(s)
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");

                        String fetchQuery = "select * from companysignup where status= '" + status + "'";
                        Statement fetchStatement = conn.createStatement();
                        ResultSet rs = fetchStatement.executeQuery(fetchQuery);

                        while (rs.next()) {
                            
                %> 

                
                <tr class="r1">
                    <td><%=rs.getString("companyid")%></td>
                    <td><%=rs.getString("companyname")%></td>
                    <td><%=rs.getString("companyemail")%></td>
                    <td><%=rs.getString("companyphno")%></td>
                    <td><%=rs.getString("companylocation")%></td>
                </tr>
                <%

                        }
                    } catch (Exception ex) {
                        out.print(ex);
                    }
                %>
            </table>
        </section>
        <section>
            <%@include file = "footer-student.jsp"%>
        </section>
    </body>
</html>

