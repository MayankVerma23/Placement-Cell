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
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registration Student</title>

        <style>

            .affix {
                -webkit-transition:padding 0.2s ease-out;
                -moz-transition:padding 0.2s ease-out;  
                -o-transition:padding 0.2s ease-out;         
                transition:padding 0.2s ease-out;
            }

            .affix-top {
                /* navbar style at top */
                background:transparent !important;
                border-color:transparent !important;
                padding: 15px;
                -webkit-transition:all 0.5s ease;
                -moz-transition:all 0.5s ease; 
                -o-transition:all 0.5s ease;         
                transition:all 0.5s ease;  
            }

            .affix-top .navbar-collapse {
                border-color:transparent;
                box-shadow:initial;
            }
            .affix
            {
                color: black !important;
                height: 65px;
                padding-right: 5px;
            }

            .navbar{
                border: 1px solid transparent !important;
                background-color: white !important;
                padding: 0px 10px 0px 0px !important;
                width:100%;
            }

            #nav-options{
                color:black;
                font-size: 25px; 
            }

            #nav-options:hover{
                color: red !important; 
            }

        </style>


    </head>

    <body style="background-image: url('background_images/bck6.jpg');background-attachment: fixed;background-size: cover;">


        <section>
            <%@include file = "index_navbar.jsp"%>
        </section>

        <section style="margin-top:5%;">

            <div id="exTab1" class="container">	
                <ul  class="nav nav-pills">
                    <li class="active" style="width:50%;text-align:center;">
                        <a href="#1" data-toggle="tab" >Student</a>
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

        </section>
    </body>

</html>
