<%-- 
    Document   : header_company
    Created on : 3 Apr, 2019, 11:23:06 PM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>HEADER COMPANY</title>
        <style>
            #navbar-links{
                color: white;
            }
            #navbar-links:hover{
                color:black;
            }

        </style>


        <%
            int ct = 0;
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/placementcell", "root", "");
                Statement st = conn.createStatement();
                String x1 = "Select count(*) from queries where seen='0' and designation='company'";

                ResultSet rs = st.executeQuery(x1);
                while (rs.next()) {
                    ct = rs.getInt(1);
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
                            <li class="active"><a href="home_company.jsp" id="navbar-links">HOME</a></li>
                            <li><a href="profile_company.jsp" id="navbar-links">PROFILE</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown"  id="navbar-links" href="#">STUDENT SECTION<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="interested_stu_in_comp.jsp">Participated Candidates</a></li>
                                    <li><a href="company_decl_res.jsp">declare result</a></li>
                                    <li><a href="selected_candidates.jsp">selected candidates</a></li>
                                </ul>
                            </li>
                            <li><a href="company_response.jsp" id="navbar-links">STATUS</a></li>
                            <li class="active"><a href="contactf_company.jsp" id="navbar-links">SUPPORT</a></li>
                            <li class="active"><a href="company_inbox.jsp" id="navbar-links">INBOX</a></li>


                            <li><a href="changepassword_company.jsp" id="navbar-links">CHANGE PASSWORD</a></li>
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
