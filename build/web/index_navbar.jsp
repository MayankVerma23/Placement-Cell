<%-- 
    Document   : index_navbar
    Created on : 29 Apr, 2019, 5:34:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>INDEX NAVBAR</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>


        <style>
            .affix {
                -webkit-transition:padding 0.2s ease-out;
                -moz-transition:padding 0.2s ease-out;  
                -o-transition:padding 0.2s ease-out;         
                transition:padding 0.2s ease-out;
            }

            .affix-top {
                /* navbar style at top */

                padding: 6px;
                -webkit-transition:all 0.5s ease;
                -moz-transition:all 0.5s ease; 
                -o-transition:all 0.5s ease;         
                transition:all 0.5s ease;  
            }

            .affix-top .nav>li>a {
                color: #000;
            }

            .affix-top .navbar-collapse {
                border-color:transparent;
                box-shadow:initial;
            }
            .affix
            {
                height: 65px;
                padding-right: 5px;
            }

            .navbar{
                border: 1px solid transparent !important;
            }

        </style>
    </head>
    <body>
        <section>
            <!--Start of navbar -->       
            <div class="navbar navbar-inverse navbar-fixed-top" data-offset-top="400" data-spy="affix">

                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp" style="color:white;font-size: 25px">PLACEMENT CELL</a>

                    <a class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>


                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-right navbar-nav">
                        <li><a href="aboutus.jsp" style="color:white;font-size: 25px" >About Us</a></li>
                        <li><a href="offcampus.jsp" style="color:white;font-size: 25px">Off Campus</a></li>
                        <li><a href="our_recruiter.jsp" style="color:white;font-size: 25px">Our Recruiter</a></li>
                        <li><a href="login_page.jsp" style="padding-top:8px;"><button class="btn btn-primary" style="width: 80px;" >Login</button></a></li>
                        <li><a href="signup.jsp" style="padding-top:8px;"><button class="btn btn-warning" style="width: 80px;">Signup</button></a></li>

                    </ul>
                </div>		


                <div class="header">
                    <div class="progress-container">
                        <div class="progress-bar" id="myBar"></div>
                    </div>      
                </div>

            </div>
        </section>
        <!--End of Navbar -->
    </body>
</html>
