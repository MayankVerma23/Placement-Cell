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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <title>PROFILE STUDENT</title>

        <%@include file = "header_student.jsp"%>

        <script>
            function changeprofile1() {
                var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
                if (r == true) {
                    window.open('profile_student_1.jsp', 'popUpWindow', 'height=600,width=700,left=550,top=240,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                }
            }

            function uploadimag() {
                var r = confirm("R U SURE!! U WANT CHANGES IN PROFILE");
                if (r == true) {
                    window.open('image_studentt.jsp', 'popUpWindow', 'height=400,width=600,left=450,top=150,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
                }
            }
        </script>

        <style>
            table{
                border:2px solid black;
                margin:10px;
            }

            .r1{
                background-color: #E3F2E1;
            }

            #d4{
                text-align:center;  

            }
        </style>
    </head>

    <body>  
        <%@include file = "pic.jsp"%>

        <section>
            <%
                HttpSession hs1 = request.getSession();
                String rollno = hs1.getAttribute("stu_roll").toString();

                String imgroll = "000";
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    Statement stm = con.createStatement();
                    String y = "select * from student_image where rollno='" + rollno + "'";
                    ResultSet rs1 = stm.executeQuery(y);
                    while (rs1.next()) {
                        imgroll = rs1.getString("rollno");
                    }
                    if (!rollno.equals(imgroll)) {
            %> 

            <div style="margin:10px;">
                <h4>Please upload image</h4><button class="btn btn-danger" type="button" onclick="uploadimag()">UPLOAD IMAGE</button>
            </div>

            <%
                    } else {
                    }
                } catch (Exception ex) {
                    out.println(ex.getCause() + " " + ex.getMessage());
                }
            %>



            <%!String stuname = "", stuemail = "", studegree = "", stuphno = "", stugender = "", stupass = "",
                    stu_batch, stu_ten, stu_twe, stu_sem1, stu_sem2, stu_sem3, stu_sem4, stu_sem5, stu_sem6, stu_sem7, stu_sem8, stu_cgpa, stu_branch, backlog;%>

            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement stmt = conn.createStatement();
                String x = "select * from studentsignup where studentrollno='" + rollno + "'";
                ResultSet rs = stmt.executeQuery(x);
                while (rs.next()) {
                    stuname = rs.getString("studentname");
                    stuemail = rs.getString("studentemail");
                    stuphno = rs.getString("studentphno");
                    studegree = rs.getString("studentdegree");
                    stugender = rs.getString("studentgender");
                    stu_batch = rs.getString("batch");
                    stu_ten = rs.getString("ten");
                    stu_twe = rs.getString("twe");
                    stu_sem1 = rs.getString("sem1");
                    stu_sem2 = rs.getString("sem2");
                    stu_sem3 = rs.getString("sem3");
                    stu_sem4 = rs.getString("sem4");
                    stu_sem5 = rs.getString("sem5");
                    stu_sem6 = rs.getString("sem6");
                    stu_sem7 = rs.getString("sem7");
                    stu_sem8 = rs.getString("sem8");
                    stu_cgpa = rs.getString("cgpa");
                    stu_branch = rs.getString("branch");
                    backlog = rs.getString("backlog");
                }
            %>

            <table class="table table-hover" style="width:85%">
                <tr class="r1">
                    <td><strong>NAME</strong></td>
                    <td><%=stuname%></td>
                </tr>

                <tr class="r2">
                    <td><b>ROLL NO.</b></td>
                    <td><%=rollno%></td>
                </tr>

                <tr class="r1">
                    <td><b>EMAIL ID</b></td>
                    <td><%=stuemail%></td>
                </tr>

                <tr class="r2">
                    <td><b>DEGREE</b></td>
                    <td><%=studegree%></td>
                </tr>

                <tr class="r1">
                    <td><b>PHONE NO.</b></td>
                    <td><%=stuphno%></td>
                </tr>

                <tr class="r2">
                    <td><b>GENDER</b></td>
                    <td><%=stugender%></td>
                </tr>

                <tr class="r1">
                    <td><b>BRANCH</b></td>
                    <td><%=stu_branch%></td>
                </tr>

                <tr class="r2">
                    <td><b>10th PERCENTAGE</b></td>
                    <td><%=stu_ten%></td>
                </tr>

                <tr class="r1">
                    <td><b>12th PERCENTAGE</b></td>
                    <td><%=stu_twe%></td>
                </tr>


                <tr class="r2">
                    <td> <b>1st SEM PERCENTAGE</b></td>
                    <td><%=stu_sem1%></td>
                </tr>

                <tr class="r1">
                    <td> <b>2nd SEM PERCENTAGE</b></td>
                    <td><%=stu_sem2%></td>
                </tr>

                <tr class="r2">
                    <td> <b>3rd SEM PERCENTAGE</b></td>
                    <td><%=stu_sem3%></td>
                </tr>

                <tr class="r1">
                    <td> <b>4th SEM PERCENTAGE</b></td>
                    <td><%=stu_sem4%></td>
                </tr>

                <tr class="r2">
                    <td><b> 5th SEM PERCENTAGE</b></td>
                    <td><%=stu_sem5%></td>
                </tr>

                <tr class="r1">
                    <td> <b>6th SEM PERCENTAGE</b></td>
                    <td><%=stu_sem6%></td>
                </tr>

                <tr class="r2">
                    <td> <b>7th SEM PERCENTAGE</b></td>
                    <td><%=stu_sem7%></td>
                </tr>

                <tr class="r1">
                    <td><b> 8th SEM PERCENTAGE</b></td>
                    <td><%=stu_sem8%></td>
                </tr>

                <tr class="r2">
                    <td><b>CURRENT DEGREE PERCENTAGE</b></td>
                    <td><%=stu_cgpa%></td>
                </tr>
                <tr class="r1">
                    <td><b>PASSOUT YEAR</b></td>
                    <td><%=stu_batch%></td>
                </tr>
                <tr class="r2">
                    <td><b>BACKLOG</b></td>
                    <td><%=backlog%></td>
                </tr>
                <tr class="r1">
                    <td colspan="2" style="text-align: center">
                        <button  class="btn btn-primary" value="UPDATE PROFILE" onclick="changeprofile1()">Update Profile</button>
                    </td>
                </tr>
            </table>
        </section>


        <section>
            <%@include file = "footer-student.jsp"%>
        </section>
    </body>
</html>
