<%-- 
    Document   : student_information
    Created on : 14 Mar, 2019, 11:55:14 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">STUDENT PROFILE UPDATE</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>


        <style>
            table{
                border:2px solid black;
            }

            .r1{
                background-color: #E3F2E1;
            }
        </style>

    </head>

    <body>
        <%!String stu_roll1 = "", sturoll = "", stuname = "", stuemail = "", studegree = "", stuphno = "", stugender = "", stupass = "", stubranch = "", stubatch = "", stutwe = "", stuten = "", stusem1 = "", stusem2 = "", stusem3 = "", stusem4 = "", stusem5 = "", stusem6 = "", stusem7 = "", stusem8 = "", stucgpa = "", stubacklog = "";%>

        <%
            try {
                HttpSession hs = request.getSession();
                stu_roll1 = hs.getAttribute("stu_roll").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String x = "select * from studentsignup where studentrollno='" + stu_roll1 + "'";
                ResultSet rs = stmt.executeQuery(x);

                //  response.sendRedirect("home_student.jsp");
                while (rs.next()) {
                    sturoll = rs.getString("studentrollno");
                    stuname = rs.getString("studentname");
                    stuemail = rs.getString("studentemail");
                    studegree = rs.getString("studentdegree");
                    studegree = rs.getString("studentdegree");
                    stubranch = rs.getString("branch");
                    stubatch = rs.getString("batch");
                    stuphno = rs.getString("studentphno");
                    stugender = rs.getString("studentgender");
                    stutwe = rs.getString("twe");
                    stuten = rs.getString("ten");
                    stusem1 = rs.getString("sem1");
                    stusem2 = rs.getString("sem2");
                    stusem3 = rs.getString("sem3");
                    stusem4 = rs.getString("sem4");
                    stusem5 = rs.getString("sem5");
                    stusem6 = rs.getString("sem6");
                    stusem7 = rs.getString("sem7");
                    stusem8 = rs.getString("sem8");
                    stucgpa = rs.getString("cgpa");
                    stubacklog = rs.getString("backlog");
                }

            } catch (Exception e) {
                out.print(e);
            }
        %>

        <form action="studentprofile">

            <table>
                <tr>
                    <th><b><h2 style="text-align:center;">UPDATE CHANGES FORM</h2></b></th>
                </tr>

                <tr class="r1">
                    <td><label for="name">ROLLNO:</label></td>
                    <td><label><%=sturoll%></label></td>
                </tr>

                <tr class="r2">

                    <td><label for="t1">NAME:</label></td>
                    <td><input type="text" name="t1"  value=<%=stuname%> class="form-control"  required></td>

                </tr>

                <tr class="r1">

                    <td><label for="t3">Email:</label></td>
                    <td><input type="text" name="t3"  value=<%=stuemail%> class="form-control"  required></td>

                </tr>

                <tr class="r2">

                    <td><label for="t4">PhoneNo:</label></td>
                    <td><input type="text" name="t4"  value=<%=stuphno%> class="form-control"  required></td>

                </tr>

                <tr class="r1">

                    <td><label for="t5">Degree:</label></td>
                    <td><input type="text" name="t5"  value=<%=studegree%> class="form-control"  required></td>

                </tr>

                <tr class="r2">

                    <td><label for="t6">Gender:</label></td>
                    <td><input type="text" name="t6"  value=<%=stugender%> class="form-control"  required></td>

                </tr>

                <tr class="r1">
                    <td><button class="btn btn-success" type="submit" >SUBMIT</button></td>
                </tr>

            </table>

        </form>

    </body>
</html>
