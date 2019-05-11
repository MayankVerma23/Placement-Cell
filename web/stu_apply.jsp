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

        <title>APPLY JOB</title>

        <style>
            table{
                border:2px solid black;
                margin:10px;
            }

            .r1{
                background-color: #E3F2E1;
                text-align:center; 
            }
            th{
                text-align:center;
            }
        </style>

        <script>
            function profile(x) {
                window.location.href="apply_job2.jsp?companyid=" + x;
            }
        </script>
    </head>

    <body>

     

 <%! String desire_company = "", req_c1, req_c2, req_c3, req_b1, req_b2, req_b3, req_b4,
                            roll_no, stu_branch, stu_deg, req_batch, stu_batch;%>

       
            

        <section style="min-height: 500px;" class="container"> 
            <table class="table table-hover">
                <tr style="background-color:black;color:white;">
                    <th>COMPANY NAME</th>
                    <th>VIEW REQUIREMENTS</th>
                </tr>

               
                <%
                   Class.forName("com.mysql.jdbc.Driver"); 
 Connection con1 = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                    String fetchQuery5 = "select * from companyrequirements ";
                    Statement fetchStatement5 = con1.createStatement();
                    ResultSet rs = fetchStatement5.executeQuery(fetchQuery5);

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
                    Statement fetchStatement1 = con1.createStatement();
                    ResultSet rs5 = fetchStatement1.executeQuery(fetchQuery1);
                    while (rs5.next()) {

                        stu_batch = rs5.getString("batch");
                        stu_deg = rs5.getString("studentdegree");
                        stu_branch = rs5.getString("branch");
                    }

                    if (stu_deg.equals(req_c2) || stu_deg.equals(req_c3)) {
                        String fetchQuery2 = "select * from companyrequirements where (requiredcourse2='" + stu_deg + "' or requiredcourse3='" + stu_deg + "') and requiredbatch='" + stu_batch + "'";
                        Statement fetchStatement2 = con1.createStatement();
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
                    Statement fetchStatement3 = con1.createStatement();
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
        </section>


   
    </body>
</html>