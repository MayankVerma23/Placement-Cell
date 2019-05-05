<%-- 
    Document   : apply_job1
    Created on : 22 Apr, 2019, 11:01:18 PM
    Author     : HP
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

        <title>APPLY JOB</title>

        <style>
            table
            {
                width : 50%;
                margin-left:25%;
                margin-top:5%;
            }

            td
            {
                border : 2px solid black;
                padding : 20px;
                width : 100px;
                height : 40px;
                text-align: center;
            }

            th
            {
                text-align: center;
                height : 60px;
                border : 2px solid black;
            }

        </style>

        <script>
            function profile(x) {
                window.open('apply_job2.jsp?companyid=' + x, 'popUpWindow', 'height=450,width=700,left=650,top=250,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
            }
        </script>
    </head>

    <body>
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->

        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");%>

        <section> 
            <table>
                <tr>
                    <th>COMPANY NAME</th>
                    <th>VIEW REQUIREMENTS</th>
                </tr>

                <%! String desire_company = "", req_c1, req_c2, req_c3, req_b1, req_b2, req_b3, req_b4,
                            roll_no, stu_branch, stu_deg, req_batch, stu_batch;%>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");

                    String fetchQuery = "select * from companyrequirements ";
                    Statement fetchStatement = con.createStatement();
                    ResultSet rs = fetchStatement.executeQuery(fetchQuery);

                    while (rs.next()) {

                        req_c1 = rs.getString("requiredcourse1");
                        req_c2 = rs.getString("requiredcourse2");
                        req_c3 = rs.getString("requiredcourse3");
                        req_b1 = rs.getString("requiredbranch1");
                        req_b2 = rs.getString("requiredbranch2");
                        req_b3 = rs.getString("requiredbranch3");
                        req_b4 = rs.getString("requiredbranch4");
                        req_batch = rs.getString("requiredbatch");

                    }
                    HttpSession hs = request.getSession();
                    roll_no = hs.getAttribute("stu_roll").toString();
                    String fetchQuery1 = "select * from studentsignup where studentrollno='" + roll_no + "'";
                    Statement fetchStatement1 = con.createStatement();
                    ResultSet rs1 = fetchStatement1.executeQuery(fetchQuery1);
                    while (rs1.next()) {

                        stu_batch = rs1.getString("batch");
                        stu_deg = rs1.getString("studentdegree");
                        stu_branch = rs1.getString("branch");
                    }

                    if (stu_deg.equals(req_c2) || stu_deg.equals(req_c3)) {
                        String fetchQuery2 = "select * from companyrequirements where (requiredcourse2='" + stu_deg + "' or requiredcourse3='" + stu_deg + "') and requiredbatch='" + stu_batch + "'";
                        Statement fetchStatement2 = con.createStatement();
                        ResultSet rs2 = fetchStatement2.executeQuery(fetchQuery2);
                        while (rs2.next()) {
                %>

                <tr>                  
                    <td><%=rs2.getString("companyname")%></td>

                    <td><button class="btn btn-danger" onclick="profile(<%=rs2.getString("id")%>)">view profile</button></td>
                </tr>

                <% }
                } else {
                    String fetchQuery3 = "select * from companyrequirements where (requiredbranch1='" + stu_branch + "' or requiredbranch2='" + stu_branch + "' or requiredbranch3='" + stu_branch + "' or requiredbranch4='" + stu_branch + "') and requiredbatch='" + stu_batch + "'";
                    Statement fetchStatement3 = con.createStatement();
                    ResultSet rs3 = fetchStatement3.executeQuery(fetchQuery3);
                    while (rs3.next()) {
                %>

                <tr>                  
                    <td><%=rs3.getString("companyname")%></td>

                    <td><button class="btn btn-danger" onclick="profile(<%=rs3.getString("id")%>)">view profile</button></td>
                </tr>

                <%}
                    }%>
            </table>        
        </section><br> <br>
        <section>
            <%@include file = "footer-student.jsp"%>
        </section>
    </body>
</html>
