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
        <title>Sign up</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    </head>

    <body>
        <section>
            <%@include file = "navbar.jsp"%>
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
