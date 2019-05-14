<%-- 
    Document   : offcampus_student
    Created on : 4 Apr, 2019, 8:19:31 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        function viewprofile(x) {
           // window.open('offcampus_detail.jsp?studentid=' + x, 'popUpWindow', 'height=500,width=600,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
     window.location.href="offcampus_detail.jsp?studentid=" +x;  
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
        <div id="div1">

            <table class="table" >

                <tr style="background-color:black;color:white;">
                    <th>STUDENT NAME</th>
                    <th>VIEW PROFILE</th>

                </tr>

                <%

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

                    String fetchQuery = "select * from offcampus_table";
                    Statement fetchStatement = conn.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                    while (rs.next()) {
                %> 

                <tr class="r1">
                    <td><%=rs.getString("name")%></td>
                    <td><button class="btn btn-danger" onclick="viewprofile(<%=rs.getString("id")%>)">VIEW PROFILE</button></td>
                </tr>

                <% }%>
            </table>
        </div>
    </section> 
    <section>
        <%@include file = "footer-tpo.jsp"%>
    </section>
</body>
</html>
