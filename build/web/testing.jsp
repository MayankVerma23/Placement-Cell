
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TESTING</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>

        <style>
            .navbar{
                min-height: 65px;
                padding-top: 6px;
            }
        </style>
    </head>
    <body>

        <div class="navbar navbar-inverse navbar-fixed-top" >

            <div class="container">

                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp" style="color:#FEC901;font-size: 25px">PLACEMENT CELL</a>
                    <a class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>

                <div class="navbar-collapse collapse">

                    <ul class="nav navbar-right navbar-nav">
                        <li><a href="index.jsp" style="color:white;font-size: 25px">Home</a></li>
                        <li><a href="#" style="color:white;font-size: 25px">About</a></li>
                        <li><a href="#" style="color:white;font-size: 25px">Contact Us</a></li>
                    </ul>
                </div>		
            </div>
        </div>










        <section>

            <div id="exTab1" class="container">	
                <ul  class="nav nav-pills">
                    <li class="active">
                        <a  href="#1a" data-toggle="tab">Student</a>
                    </li>
                    <li><a href="#2a" data-toggle="tab">Company</a>
                    </li>

                </ul>

                <div class="tab-content clearfix">
                    <div class="tab-pane active" id="1a">
                        <%@include file = "registration_student.jsp"%>
                    </div>
                    <div class="tab-pane" id="2a">
                        <%@include file = "registration_company.jsp"%>
                    </div>

                </div>
            </div>
        </section>

    </body>
</html>
