<%-- 
    Document   : signup
    Created on : 7 Mar, 2019, 7:20:20 PM
    Author     : My Lappy
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>SIGNUP PAGE</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
    </head>

    <body>
        <section>
            <%@include file = "index_navbar.jsp"%>
        </section>

        <section style="margin-top:5%;">
            <div class="container">
                <div id="exTab1" class="container">	
                    <ul  class="nav nav-pills">
                        <li class="active" style="width:50%;text-align:center;">
                            <a  href="#1" data-toggle="tab" >Student</a>
                        </li>
                        <li style="width:49%;text-align:center;">
                            <a href="#2" data-toggle="tab" >Company</a>
                        </li>

                    </ul>

                    <div class="tab-content clearfix">
                        <div class="tab-pane active" id="1">
                            <%@include file = "registration_student.jsp"%>
                        </div>
                        <div class="tab-pane" id="2">
                            <%@include file = "registration_company.jsp"%>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
