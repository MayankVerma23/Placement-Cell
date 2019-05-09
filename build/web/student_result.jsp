<%-- 
    Document   : student_result
    Created on : 2 Apr, 2019, 7:16:38 PM
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
            function company_result(x) {
                window.location.href="company_result.jsp?companyemail=" + x;
            }
        </script>

</head>
<body>



    <!--Start of Navbar Section-->
    <%@include file = "header_student.jsp"%>
    <!--End of Navbar Section-->

    <section style="min-height:500px;" class="container">
         <table class="table" >
            <tr style="background-color:black;color:white;">
                <th>COMPANY NAME</th>
                <th>COMPANY EMAIL ID</th>
                <th>VIEW RESULT</th>
              
            </tr>
            <%
                HttpSession hs = request.getSession();
                String stu_roll1 = hs.getAttribute("stu_roll").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                String fetchQuery = "select * from interestedstudents where student_rollno='" + stu_roll1 + "'";
                Statement fetchStatement = conn.createStatement();
                ResultSet rs = fetchStatement.executeQuery(fetchQuery);
                while (rs.next()) {
            %> 

            <tr class="r1">
                <td><%=rs.getString("company_name")%></td>                              
                <td><%=rs.getString("company_email")%></td>                                 
                <td><button class="btn btn-danger" onclick="company_result('<%=rs.getString("company_email")%>')">view profile</button></td>
         
            </tr>

            <% }%>
        </table>
    </section> <br>
    <section>
        <%@include file = "footer-student.jsp"%>
    </section>
</body>
</html>
