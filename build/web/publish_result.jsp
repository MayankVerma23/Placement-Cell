<%-- 
    Document   : publish_result
    Created on : 8 May, 2019, 3:21:36 PM
    Author     : My Lappy
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>STUDENT_INFORMATION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">


    </head>

    <body >
        <section>
            <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
            <!--End of Navbar Section-->
        </section>
        <section style="min-height:500px;" class="container">
            <table class="table" >
                <tr style="background-color:black;color:white;">
                    <th>STUDENT NAME</th>
                    <th>STUDENT EMAIL ID</th>
                    <th>STUDENT ROLLNO</th>

                </tr>
                <%!String student_name = "", student_email = "", student_rollno = "";%>

                <%
                    String comp_email = request.getParameter("comp_email");
                    ArrayList<String> stuList = new ArrayList();
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                        Statement stmt = conn.createStatement();
                        String x = "select * from interestedstudents where company_email='" + comp_email + "' and status='placed'";
                        ResultSet rs = stmt.executeQuery(x);
                        while (rs.next()) {
                            stuList.add(rs.getString("student_rollno"));
                %>
                <tr class="r1">
                    <td><%=rs.getString("student_name")%></td> 
                    <td><%=rs.getString("student_email")%></td> 
                    <td><%=rs.getString("student_rollno")%></td> 
                </tr>

                <%  }
                        session.setAttribute("placedStudents", stuList);
                    } catch (Exception ex) {
                        out.print(ex);
                    }
                %>

            </table>
            <form action="PublishPlacedResult" method="post">
                <input type="text" name="email" value="<%=comp_email%>" hidden>
                <input type="submit" class="btn btn-success" value="Publish">
            </form>
        </section>

        <section>
            <%@include file = "footer-tpo.jsp"%>   
        </section>
    </body>
</html>

