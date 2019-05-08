<%-- 
    Document   : result_announce.jsp
    Created on : 8 May, 2019, 3:05:59 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
        function student(x) {
            window.open('publish_result.jsp?comp_email=' + x, 'popUpWindow', 'height=500,width=600,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
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
                <th>VIEW PLACED STUDENT </th>
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
