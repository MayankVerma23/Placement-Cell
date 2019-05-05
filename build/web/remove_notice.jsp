<%-- 
    Document   : remove_stu_notice
    Created on : 20 Apr, 2019, 10:45:51 PM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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

    </style>

    <script>
        function delete1(x) {
            window.location.href = "remove_notice.jsp?messageid1=" + x;
        }
    </script>

</head>
<body>

    <section> 
        <table>
            <tr>

                <th>id</th>
                <th>NOTICE</th>
                <th>DELETE MESSAGE</th>


            </tr>

            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

                String fetchQuery = "select *  from notice_table";
                Statement fetchStatement = conn.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                while (rs.next()) {
            %> 

            <tr>              

                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("message")%></td>

                <td><button class="btn btn-danger" onclick="delete1(<%=rs.getString("id")%>)">DELETE</button></td>
            </tr>

            <% }%>
        </table>
    </section> 
</body>
</html>
