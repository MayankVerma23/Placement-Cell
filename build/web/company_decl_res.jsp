<%-- 
    Document   : company_decl_res
    Created on : 2 Apr, 2019, 5:29:01 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
        #t1{
             width:30px;height:25px;
        }

    </style>

    <script>
        function placed(x) {
            window.location.href = "placed_receive.jsp?studentid=" + x;
        }
    </script>

</head>
<body>

    <section>
        <!--Start of Navbar Section-->
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->
    </section>

    <section style="min-height:500px;" class="container">
        <form action="placed_receive.jsp" method="POST">

            <table class="table" >

                <tr style="background-color:black;color:white;">

                    <th>STUDENT NAME</th>
                    <th>STUDENT ROLL NO.</th>
                    <th>STUDENT EMAIL ID</th>
                    <th>DECLARE RESULT</th>

                </tr>

                <%                HttpSession hs = request.getSession();
                    String comp_email = hs.getAttribute("company_email").toString();
                    String status = "waiting";
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                        String fetchQuery = "select * from interestedstudents where company_email='" + comp_email + "' and (status='" + status + "')";
                        Statement fetchStatement = conn.createStatement();
                        ResultSet rs = fetchStatement.executeQuery(fetchQuery);%>


                <%
                    while (rs.next()) {
                        String myid = rs.getString("id");
                %> 

                <tr class="r1">              

                    <td><%=rs.getString("student_name")%></td>
                    <td><%=rs.getString("student_rollno")%></td>
                    <td><%=rs.getString("student_email")%></td>
                    <td><input type="checkbox" value='<%=myid%>' name="checkbox-group" id="t1"></td>
                </tr> 
                <% } %>
                <% } catch (Exception ex) {
                        out.print(ex);
                    }
                %>

            </table>
            <input type="submit" class="btn btn-success" value="Submit">
        </form>

    </section>
    <section>
        <%@include file = "footer-company.jsp"%>
    </section>
</body>
</html>
