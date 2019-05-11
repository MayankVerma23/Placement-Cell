<%-- 
    Document   : header_tpo
    Created on : 3 Apr, 2019, 11:22:51 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
        <title>HEADER TPO</title>
        <style>

            #navbar-links{
                color: white;
            }
            #navbar-links:hover{
                color:black;
            }

        </style>



    </head>
  <%! String name1="" ;%>
        <%
          
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                    String fetchQuery1 = "select * from tpo_password";
                    Statement fetchStatement1 = con.createStatement();
                    ResultSet rs1 = fetchStatement1.executeQuery(fetchQuery1);
                    while (rs1.next()) {

                        name1 = rs1.getString("username");
                    
                    }
                
            } catch (Exception ex) {
                out.print(ex);
            }

        %>
    <body>

        <section> 
            <div class="row">
                <div class="col-lg-12">
                    <h1 style="float:left;padding-left:20px;">Placement Cell</h1>
                       <h1 style="float:right;padding-right:20px;text-transform: uppercase"><%=name1%></h1>
                </div>
            </div>
        </section>

        <section>
            <nav class="navbar navbar-dark bg-primary">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>                        
                        </button>
                    </div>
                    
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="home_tpo.jsp" id="navbar-links">HOME</a></li>
                            <li><a href="profile_tpo.jsp" id="navbar-links">PROFILE</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="navbar-links">COMPANIES INFORMATION<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="placement_tpo.jsp" >NEW COMPANY REQUEST</a></li>
                                    <li><a href="approved_table.jsp" >APPROVED COMPANIES</a></li>
                                    <li><a href="declined_table.jsp" >DECLINED COMPNIES</a></li>
                                    <li><a href="company_responsetable.jsp" >ACCEPTED COMPANY REQUIREMENTS</a></li>
                                    <li><a href="result_announce.jsp" >PUBLISH RESULT</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="navbar-links">STUDENTS INFORMATION<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="participation_tpo.jsp" >INTERESTED STUDENTS IN COMPANY</a></li>
                                    <li><a href="tpo_placed_student.jsp">PLACED STUDENTS</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="navbar-links">OFFCAMPUS SECTION <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="offcampus_student.jsp">OFFCAMPUS STUDENT</a></li>
                                    <li><a href="send_mail_offcampus_comp.jsp" >MAIL OFFCAMPUS STUDENTS</a></li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="navbar-links">NOTICE SECTION<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="notice1.jsp">ADD NOTICE</a></li>
                                    <li><a href="remove_notice.jsp">REMOVE NOTICE</a></li>
                                </ul>
                            </li>
                            
                            <li><a href="Your_Queries.jsp" id="navbar-links">INBOX</a></li>
                            <li><a href="paper_upload_tpo.jsp" id="navbar-links">UPLOAD PAPER</a></li> 
                            <li><a href="mail_company.jsp" id="navbar-links">MAIL NEW COMPANY</a></li>
                            <li><a href="changepassword_tpo.jsp" id="navbar-links">CHANGE PASSWORD</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right" >
                            <li><a href="logout" id="navbar-links"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </section>

    </body>
</html>
