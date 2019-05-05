<%-- 
    Document   : offcampus_detail
    Created on : 4 Apr, 2019, 8:34:44 PM
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
        <title id="title">STUDENT_INFORMATION</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

        <script>
            function back() {
                window.close();
            }
        </script>
    </head>

    <body >

        <%!String coll_roll = "", stu_id = "", coll_name = "", phoneno = "", stuname = "",
                    branch = "", email1 = "", backlog1 = "", pass_year = "", twelve = "", degree = "", batch = "", gender = "", ten = "", twe = "",
                    sem1 = "", sem2 = "", sem3 = "", sem4 = "", sem5 = "", sem6 = "", sem7 = "", sem8 = "", cgpa = "", backlog = "";%>

        <%
            stu_id = request.getParameter("studentid");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String x = "select * from offcampus_table where id='" + stu_id + "'";
                ResultSet rs = stmt.executeQuery(x);
                while (rs.next()) {
                    stuname = rs.getString("name");
                    coll_name = rs.getString("college_name");
                    coll_roll = rs.getString("roll");
                    email1 = rs.getString("email");
                    degree = rs.getString("degree");
                    branch = rs.getString("branch");
                    batch = rs.getString("batch");
                    phoneno = rs.getString("phoneno");
                    gender = rs.getString("gender");
                    ten = rs.getString("ten");
                    twe = rs.getString("twe");
                    sem1 = rs.getString("sem1");
                    sem2 = rs.getString("sem2");
                    sem3 = rs.getString("sem3");
                    sem4 = rs.getString("sem4");
                    sem5 = rs.getString("sem5");
                    sem6 = rs.getString("sem6");
                    sem7 = rs.getString("sem7");
                    sem8 = rs.getString("sem8");
                    cgpa = rs.getString("cgpa");
                    backlog = rs.getString("backlog");

                }
            } catch (Exception ex) {
                out.print(ex);
            }
        %>






        <div style="text-align:right;">

        </div>
        <br>
        <form action=" " method="post" >
            <table class="table table-hover">
                <tr>
                    <td>NAME</td>
                    <td></td>
                    <td><%=stuname%> </td>
                </tr>
                <tr>
                    <td>COLLEGE/UNIVERSITY NAME </td>
                    <td></td>

                    <td><%=coll_name%></td>
                </tr>
                <tr>
                    <td>COLLEGE ROLL NO.</td>
                    <td></td>

                    <td><%=coll_roll%></td>
                </tr>

                <tr>
                    <td>EMAIL</td>

                    <td></td>

                    <td><%=email1%></td>
                </tr>

                <tr>
                    <td>DEGREE</td>

                    <td></td>

                    <td><%=degree%></td>
                </tr>


                <tr>
                    <td>BRANCH</td>

                    <td></td>

                    <td><%=branch%></td>
                </tr>
                <tr>
                    <td>BATCH </td>

                    <td></td>


                    <td><%=batch%> </td>
                </tr>

                <tr>
                    <td>PHONENO </td>

                    <td></td>


                    <td><%=phoneno%> </td>
                </tr>
                <tr>
                    <td>GENDER </td>
                    <td></td>
                    <td><%=gender%> </td>
                </tr>

                <tr>
                    <td>10th PERCENTAGE</td>
                    <td></td>
                    <td><%=ten%></td>
                </tr>

                <tr>
                    <td>12th PERCENTAGE</td>
                    <td></td>
                    <td><%=twe%> </td>
                </tr>
                <tr>
                    <td>SEM 1</td>
                    <td></td>
                    <td><%=sem1%> </td>
                </tr>
                <tr>
                    <td>SEM 2 </td>
                    <td></td>
                    <td><%=sem2%> </td>
                </tr>
                <tr>
                    <td>SEM 3</td>
                    <td></td>
                    <td><%=sem3%> </td>
                </tr>
                <tr>
                    <td>SEM 4</td>
                    <td></td>
                    <td><%=sem4%> </td>
                </tr>
                <tr>
                    <td>SEM 5</td>
                    <td></td>
                    <td><%=sem5%> </td>
                </tr>
                <tr>
                    <td>SEM 6</td>
                    <td></td>
                    <td><%=sem6%> </td>
                </tr>
                <tr>
                    <td>SEM 7</td>
                    <td></td>
                    <td><%=sem7%> </td>
                </tr>
                <tr>
                    <td>SEM 8</td>
                    <td></td>
                    <td><%=sem8%> </td>
                </tr>
                <tr>
                    <td>OVERALL CGPA</td>
                    <td></td>
                    <td><%=cgpa%> </td>
                </tr>
                <tr>
                    <td>BACKLOG('S) </td>
                    <td></td>
                    <td><%=backlog%> </td>
                </tr>
            </table>
            <input type="button" class="btn btn-warning" onclick="back()" value="BACK">
        </form>

    </body>
</html>
