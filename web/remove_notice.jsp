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
  
    <style>
      table{
                border: 2px solid black;
               }
            
            .r1:hover{
                background-color: #add8e682;
            }

    </style>

    <script>
        function delete1(x) {
            window.location.href = "remove_notice.jsp?messageid1=" + x;
        }
    </script>

</head>
<body>
 <%@include file = "header_tpo.jsp"%>
     <section style="min-height:500px;" class="container">
            <table class="table" >

                <tr style="background-color:black;color:white;">

                <th>id</th>
                <th>SUBJECT</th>
                <th>MESSAGE</th>
                <th>POSTED ON</th>
            
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

            <tr class="r1">              

                <td><%=rs.getString("id")%></td>
                 <td><%=rs.getString("subject")%></td>
                  <td><%=rs.getString("message")%></td>
                   <td><%=rs.getString("date")%></td>
                

                <td><button class="btn btn-danger" onclick="delete1(<%=rs.getString("id")%>)">DELETE</button></td>
            </tr>

            <% }%>
        </table>
    </section> <br>
           <%@include file = "footer-tpo.jsp"%> 
</body>
</html>
