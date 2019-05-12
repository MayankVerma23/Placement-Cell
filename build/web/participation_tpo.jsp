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

    <style>
        table{
            border: 2px solid black;
        }

        .r1:hover{
            background-color: #add8e682;
        }

    </style>

    <script>
        function student(x) {
            window.location.href="compwise_interestedstudent_details.jsp?comp_email="+ x;
        }
    </script>
</head>
<body>

    <section>
        <!--Start of Navbar Section-->
        <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
    </section>

    <section style="min-height:500px;" class="container">
        <table class="table" >

            <tr style="background-color:black;color:white;">
                <th>COMPANY NAME </th>
                <th>COMPANY EMAIL ID</th>
                <th>VIEW INTERESTED STUDENT </th>
            </tr>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                String fetchQuery = "select * from companyrequirements";
                Statement fetchStatement = conn.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                while (rs.next()) {
            %>   
            <tr class="r1">
                <td><%=rs.getString("companyname")%></td>                              
                <td><%=rs.getString("company_email")%></td>
                <td><button class="btn btn-danger" onclick="student('<%=rs.getString("company_email")%>')">view profile</button></td>                
            </tr>
            <% }%>
        </table>
    </section> <br>
    <section>
        <%@include file = "footer-tpo.jsp"%> 
    </section>
</body>

