
<%-- 
    Document   : index
    Created on : 26 Apr, 2019, 4:41:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>Index</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

        <style>
            .img-responsive{
                width:100%;
                max-width:100%;
                max-height: 630px;
            }

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

            .affix-top .nav>li>a {
                color: #000;
            }

            .affix-top .navbar-collapse {
                border-color:transparent;
                box-shadow:initial;
            }
            .affix
            {
                background-color: black !important;
                height: 65px;
                padding-right: 5px;

            }

            .navbar{
                border: 1px solid transparent !important;
            }

            .progress-container {
                width: 100%;
                height: 6px;  
            }

            .progress-bar {
                height: 5px;
                background: #4caf50;
                width: 0%;
            }

            .carousel-inner{
                max-height: 630px;
            }

            .carousel-caption {
                font-size: -webkit-xxx-large;
                top:45%;
            }

            #first-card{
                text-align: center;
            }

            .row{
                width:100%;
            }

            .col-md-6.my-scroll {
                transition: 1s ease-in-out;
            }

            .col-md-6.my-scroll:hover {
                background-position: 0px -100px;
                transition: 1s ease-in-out;
            }
            .index-section-heading{
                text-align: center;
                font-size: -webkit-xxx-large;
                font-family: serif;
            }


        </style>

        <script>
            // When the user scrolls the page, execute myFunction 
            window.onscroll = function () {
                myFunction()
            };

            function myFunction() {
                var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
                var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
                var scrolled = (winScroll / height) * 100;
                document.getElementById("myBar").style.width = scrolled + "%";
            }
        </script>
    </head>

    <body>
        <section>
            <!--Start of navbar -->       
            <div class="navbar navbar-default navbar-fixed-top" data-offset-top="400" data-spy="affix">

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

        <section>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>

                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="background_images/1.jpg" alt="..." class="img-responsive" max-height="630px">
                        <div class="carousel-caption">
                            <h1>BE GOOD WITH YOUR MONEY<br> SO YOU CAN BE CREATIVE WITH YOUR TIME</h1>
                            <button class="btn btn-warning">SIGN UP FREE</button>
                        </div>
                    </div>
                    <div class="item">
                        <img src="background_images/2.jpg" alt="..." class="img-responsive">
                        <div class="carousel-caption">
                            <h1>BE GOOD WITH YOUR MONEY<br> SO YOU CAN BE CREATIVE WITH YOUR TIME</h1>
                            <button class="btn btn-warning">SIGN UP FREE</button>

                        </div>
                    </div>

                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </section>

        <section style="background-color:#F0F0F0;min-height: 400px;">
            <p class="index-section-heading">HEADING</p>
            <div class="container">
                <div class="row">
                    <div class="col-md-4" id="first-card">
                        <h1><b>PLACEMENT CELL</b></h1>
                        <h3>Some Text here</h3>
                    </div>
                    <div class="col-md-4" id="first-card">
                        <h1><b>PLACEMENT CELL</b></h1>
                        <h3>Some Text here</h3>
                    </div>
                    <div class="col-md-4" id="first-card">
                        <h1><b>PLACEMENT CELL</b></h1>
                        <h3>Some Text here</h3>
                    </div>
                </div>
            </div>
        </section>

        <section style="background-color:white;min-height: 400px;">
            <p class="index-section-heading">HEADING</p>
            <div class="row">

                <div class="col-md-6">
                    <img src="background_images/tablet.png" alt="tablet-image"> 
                </div>
                <div class="col-md-6"style="text-align:center">
                    <h1><b>PLACEMENT CELL</b></h1>
                    <h3>Some Text here</h3>
                </div>
            </div>
        </section>


        <section style="background-color:#F0F0F0;min-height: 400px;">
            <div class="container">
                <p class="index-section-heading">HEADING</p>
                <div class="row">
                    <div class="col-md-6">
                        <h1><b>PLACEMENT CELL</b></h1>
                        <h3>Some Text here</h3>
                    </div>
                    <div class="col-md-6 my-scroll" style="padding: 0px;height: auto;background-image: url(background_images/template.jpg);background-size: 36% 76%;background-repeat-x: no-repeat;background-repeat-y: repeat;background-position-x: center">
                        <img src="background_images/phn.png" style="width:100%;">
                    </div>
                </div>
        </section>

        <section style="background-color:#6A979A;min-height: 400px;padding-bottom: 100px;"> 
            <%@include file = "index_viewcards.jsp"%>
        </section>

        <section>
            <%@include file = "index_footer.jsp"%>
        </section>
    </body>

</html>

