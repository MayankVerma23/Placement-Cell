<%-- 
    Document   : header_student
    Created on : 3 Apr, 2019, 10:39:10 PM
    Author     : hp
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
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

        <title>HEADER STUDENT</title>

        <style>
            #navbar-links{
                color: white;
            }
            #navbar-links:hover{
                color:black;
            }
        </style>
        <%! String roll_no2,name1;%>
        <%
          
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                  HttpSession hss = request.getSession();
                    roll_no2 = hss.getAttribute("stu_roll").toString();
                    String fetchQuery1 = "select * from studentsignup where studentrollno='" + roll_no2 + "'";
                    Statement fetchStatement1 = con.createStatement();
                    ResultSet rs1 = fetchStatement1.executeQuery(fetchQuery1);
                    while (rs1.next()) {

                        name1 = rs1.getString("studentname");
                    
                    }
                
            } catch (Exception ex) {
                out.print(ex);
            }

        %>

    </head>
    <body>
        <section> 
            <div class="row">
                <div class="col-lg-12">
                    <h1 style="float:left;padding-left:20px;">Placement Cell</h1>
                     <h1 style="float:right;padding-right:20px;"><%=name1%></h1>
                </div>
            </div>
        </section>
        <section>
            <nav class="navbar navbar-dark bg-primary ">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                    </div>

                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="home_student.jsp" id="navbar-links">HOME</a></li>
                            <li><a href="profile_student.jsp" id="navbar-links">PROFILE</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="placement_student.jsp" id="navbar-links">COMPANIES INFORMATION<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="placement_student.jsp">UPCOMING COMPANIES</a></li>
                                    <li><a href="apply_job1.jsp">APPLY FOR JOB</a></li>
                                    <li><a href="student_result.jsp">COMPANIES RESULT</a></li>
                                </ul>
                            </li>                          
                            <li><a href="contactf_stud.jsp" id="navbar-links">CONTACT FORM</a></li>
                            <li><a href="view_upload_paper_student.jsp" id="navbar-links">PREVIOUS YEAR PAPERS</a></li>
                            <!--                            <li><a href="your_inbox_student.jsp" id="navbar-links">MESSAGES</a></li>
                            -->
                            <li><a href="your_inbox_student.jsp"  id="navbar-links">INBOX</a></li>

                            <li><a href="changepassword_student.jsp" id="navbar-links">CHANGE PASSWORD</a></li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="logout" id="navbar-links"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>
    </body>
</html>
