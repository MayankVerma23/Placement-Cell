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
    <script>
        function student(x) {
            window.open('compwise_interestedstudent_details.jsp?comp_email=' + x, 'popUpWindow', 'height=500,width=600,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
        }
    </script>
</head>
<body>

    <section>
    <!--Start of Navbar Section-->
    <%@include file = "header_tpo.jsp"%>
    <!--End of Navbar Section-->
    </section>

    <section> 
        <table>
            <tr>
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
            <tr>
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
</html>
<!--

    <section>
        <div id="div1">
            <table>
                <tr>
                    <th>STUDENT NAME</th>
                    <th>VIEW PROFILE</th>

                </tr>

<%--

               
                    String fetchQuery = "select * from offcampus_table";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while (rs.next()) {
                %> 

                <tr>
                    <td><%=rs.getString("name")%></td>
                    <td><button class="btn btn-danger" onclick="viewprofile(<%=rs.getString("id")%>)">view profile</button></td>
                </tr>

                <% }--%>
            </table>
        </div>
    </section> 
-->
