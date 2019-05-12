
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : index
    Created on : 26 Apr, 2019, 4:41:27 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

        <style>
            .img-responsive{
                width:100%;
                max-width:100%;
                max-height: 660px;
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

            .progress-container {
                width: 100%;
                height: 6px;  
            }

            .progress-bar {
                height: 2px;
                background: #4caf50;
                width: 0%;
            }

            .carousel-inner{
                max-height: 660px;
            }

            .carousel-caption {
                font-size: -webkit-xxx-large;
                top:40%;
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
                color: white;
            }

            #first-section-box{
                min-height:200px;
            }

            #first-section-heading{
                color:black;
            }

            #first-section-text{
                color:black;
                font-style: bold;
            }

            #fifth-section-box
            {
                background-color: white;
                width:300px;
                height:200px;
                margin:0 auto;
                border: 0px 0px 0px 2px solid purple;
                padding:5px;
                text-align:center;
                font-size:20px;
            }
        </style>

    </head>
    <body>
        <section>
            <!--Start of navbar -->       
            <div class="navbar navbar-fixed-top" data-offset-top="400" data-spy="affix">

                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp" id="nav-options">PLACEMENT CELL</a>

                    <a class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-right navbar-nav">
                        <li><a href="aboutus.jsp" id="nav-options">About Us</a></li>
                        
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"  id="nav-options">offcampus<span class="caret"></span></a>
                            <ul class="dropdown-menu">

                                <li><a href="offcampus.jsp" id="nav-options">offcampus signup</a></li>
                                <li><a href="offcampus_comp.jsp" id="nav-options">offcampus companies</a></li>

                            </ul>
                        </li>

                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"  id="nav-options">Placement Section<span class="caret"></span></a>
                            <ul class="dropdown-menu">

                                <li><a href="placement_data.jsp" id="nav-options">Placement Record</a></li>
                                <li><a href="placement_process.jsp" id="nav-options">Placement Process</a></li>
                                <li><a href="our_recruiter.jsp" id="nav-options">Our Recruiters</a></li>
                            </ul>
                        </li>
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
                <div class="carousel-inner" role="listbox" style="min-height:100vh">
                    <div class="item active">
                        <img src="background_images/bck3.jpg" alt="..." class="img-responsive" style="min-height:100vh">
                        <div class="carousel-caption">
                            <div data-aos="fade-down" data-aos-duration="3000">
                                <h1 style="font-size:55px;"><b><span style="color:#62ff15;">EDUCATION</span> IS THE MOST POWERFUL WEAPON WHICH<br>YOU CAN USE TO CHANGE THE <span style="color:#62ff15;">WORLD</span></b></h1>
                                <a href="signup.jsp" style="color:white"><button class="btn btn-warning">SIGN UP FREE</button></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="background_images/bck4.jpg" alt="..." class="img-responsive" style="min-height:100vh">
                        <div class="carousel-caption">
                            <div data-aos="fade-down" data-aos-duration="3000">
                                <h1 style="font-size:55px;"><b>IF YOU WANT TO <span style="color:#62ff15;">ACHIEVE GREATNESS </span><br>STOP ASKING FOR PERMISSION</b></h1>
                                <a href="signup.jsp" style="color:white"><button class="btn btn-warning">SIGN UP FREE</button></a>
                            </div>
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



        <section style="width: 80%;margin:0 auto;height: auto !important;padding-top:80px !important;padding-bottom: 80px !important;">
            <div class="row" >
                <div class="col-md-6">
                    <div data-aos="fade-right" data-aos-duration="3000"><h2>ABOUT</h2></div>
                    <div data-aos="fade-left" data-aos-duration="3000"><h2><span style="color:red;">OUR PLACMENT CELL</span></h2></div>
                    <div data-aos="fade-up" data-aos-delay="500" data-aos-duration="3000" ><h3>Our Placement Cell  is well-equipped with the latest technologies and world-class state-of-the-art Infrastructure for pre-placement 
                            talks, seminars, workshops, counselling, meetings; group discussions, and personal interviews. <br/></h3></div>
                    <div data-aos="fade-up" data-aos-delay="700" data-aos-duration="3000" ><h3>The placement department works diligently
                            towards providing students with genuine opportunities to give their career a kick-start. The Placement Office is managed by of a team of
                            committed professionals, some of whom have seen 8 cycles of placement.</h3></div>
                    <div data-aos="fade-up" data-aos-delay="900" data-aos-duration="3000" ><h3>Shortlisting, screening and providing jobs to candidates has been our forte for the past 2 decades.<br> As a Executive search consultant we ensure that we provide appropriate manpower to all our clients within the specified time frames.</h3></div>
                    <div data-aos="fade-up" data-aos-delay="900" data-aos-duration="3000"><button class="btn btn-primary"><a href="aboutus.jsp" style="color:white;"> Read MORE</a></button></div>
                </div>
                <div class="col-md-6">
                    <div data-aos="zoom-in" data-aos-duration="3000">
                        <img src="background_images/child.jpg" alt="child-img" style="width:100%;">
                    </div>
                </div>
            </div>
        </section>



        <section style="height: auto;">
            <div class="parralax" style="background-image: url(background_images/image1.jpg);min-height:400px;background-attachment: fixed;background-position: center;background-repeat: no-repeat;background-size: cover;">
                <div style="background-color:#00000042;">
                    <div class="container" style="padding-bottom: 100px;padding-top:100px;">
                        <div data-aos="zoom-in" data-aos-duration="3000"><h1 style="text-align: center;margin-bottom: 20px;"><b><span style="color:white;">OUR</span><span style="color:#62ff15;">SERVICES</span></b></h1></div>
                        <div class="row" style="margin-top:50px;">
                            <div class="col-md-4">
                                <div data-aos="zoom-in" data-aos-duration="3000">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/1.svg" height="90" width="70"></div>
                                        <div>Weekend Classes for working Professionals</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div data-aos="zoom-in" data-aos-duration="3000">
                                    <div id="fifth-section-box">
                                        <div > <img src="svg_icons/5.svg" height="90" width="70"></div>
                                        <div>we provide appropriate manpower to our clients within the specified time</div>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div data-aos="zoom-in" data-aos-duration="3000">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/3.svg" height="90" width="70"></div>
                                        <div>Provide skills in Group discussions & in personal interviews</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row" style="margin-top:50px;">
                            <div class="col-md-4">
                                <div data-aos="zoom-in" data-aos-duration="3000">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/4.svg" height="90" width="70"></div>
                                        <div>Create Technical awareness through competitions</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div data-aos="zoom-in" data-aos-duration="3000">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/2.svg" height="90" width="70"></div>
                                        <div>We give the best facilities to our students as well as to companies </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div data-aos="zoom-in" data-aos-duration="3000">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/6.svg" height="90" width="70"></div>
                                        <div>Provide summer and Winter internships</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        
        
<!--        <section>
            <div class="row">

                <div class="col-md-2" style="padding:0px;">
                    <div id="first-section-box" style="background-color: white;">
                        <p id="first-section-heading">Learn While you Earn</p>
                        <p id="first-section-text">Weekend Classes for working Professionals</p>
                    </div>
                </div>
                
                <div class="col-md-2" style="padding:0px;">
                    <div id="first-section-box" style="background-color: blanchedalmond;">
                        <p id="first-section-heading">Learn from Industry Experts</p>
                        <p id="first-section-text">Comprising over 95CXOs, VPx, Bussiness Heads</p>
                    </div>
                </div>
                
                <div class="col-md-2" style="padding:0px;">
                    <div id="first-section-box" style="background-color: gainsboro;">
                        <p id="first-section-heading">Internships for Freshers</p>
                        <p id="first-section-text">Start earning while you are learning</p>
                    </div>
                </div>
                
                <div class="col-md-2" style="padding:0px;">
                    <div id="first-section-box" style="background-color: springgreen;">
                        <p id="first-section-heading">100% Placement Assistance</p>
                        <p id="first-section-text">Get a Job before you Complete our Course</p>
                    </div>
                </div>
                
                <div class="col-md-2" style="padding:0px;">
                    <div id="first-section-box" style="background-color: skyblue;">
                        <p id="first-section-heading">International Certificate</p>
                        <p id="first-section-text">Industry Recognised Certificate</p>
                    </div>
                </div>

                <div class="col-md-2" style="padding:0px;">
                    <div id="first-section-box" style="background-color: white;">
                        <p id="first-section-heading">Learn While you Earn</p>
                        <p id="first-section-text">Weekend Classes for working Professionals</p>
                    </div>
                </div>
            </div>

        </section>
        END of first section-->

        
        <!-- Second section-->
        <section style="min-height: 300px;">

            <div class="row" style="padding-bottom: 100px;padding-top:100px;">
                <div class="col-md-6">
                    <div data-aos="fade-right" data-aos-duration="3000">
                        <img src="background_images/interview.jpg" alt="interview-image"  style="height: auto;padding: 10%;width:100%;">
                    </div>
                </div>

                <div class="col-md-6" style="padding:5%;">
                    <h3><b>Placement Record</b></h3>
                    <div data-aos="fade-left" data-aos-duration="3000">
                        <h3>230+ Companies Visited in 2019</h3>
                        <h3>More Than 800 Student Placed</h3> 
                        <h3>13 Lac Highest Package</h3>
                        <h3>Average Package is 5.5 Lac</h3>
                        <a href="placement_data.jsp"><button class="btn btn-primary">View More</button></a>
                    </div>
                </div>
            </div>

        </section>
        <!--END of Second section-->

        <section style="min-height:400px;">
            <div class="parralax" style=" background-image: url(background_images/bck5.jpg);min-height:400px;background-attachment: fixed;background-position: center;background-repeat: no-repeat;background-size: cover;">
                <div style="background-color: #ffffff75;">
                    <div class="row" style="padding-bottom: 100px;padding-top:100px;width:80%;margin:0 auto;">
                        <div class="col-md-4">
                            <h2 style="text-align:center"><b><span style="color:white">Latest News</span><span style="color:red"> & Updates</span></b></h2>
                            <div class="box" style="background-color: #000000a8;height:300px;">

                                <%
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://Localhost/placementcell", "root", "");
                                    String fetchQuery = "select * from companyrequirements where inoffcampus='both'";
                                    String fetchQuery1 = "select * from notice_table where common='common'";
                                    Statement fetchStatement = conn.createStatement();

                                %>
                                <marquee direction="up" height="300" onmouseover="this.stop();" onmouseout="this.start();">
                                    <%  ResultSet rs2 = fetchStatement.executeQuery(fetchQuery1);
                                        while (rs2.next()) {
                                    %> 

                                    <a style="color:white;" href="news_feed.jsp"><p style="text-align:center;"><b><%=rs2.getString("subject")%></b></p></a>                             

                                    <% }%>

                                </marquee>
                            </div>
                        </div>
                        <div class="col-md-4" style="padding-top:3%;">
                            <img src="background_images/lates.png" alt="sign-board" style="width:100%;min-height:100px">
                            <img src="background_images/featurejobs.png" alt="sign-board" style="width:100%;min-height:100px">
                        </div>
                        <div class="col-md-4">
                            <h2 style="text-align:center"><b><span style="color:red">Featured</span><span style="color:white"> Jobs</span></b></h2>
                            <div class="box" style="background-color: #000000a8;height:300px;">


                                <marquee direction="up" height="300" onmouseover="this.stop();" onmouseout="this.start();">
                                    <%  ResultSet rs1 = fetchStatement.executeQuery(fetchQuery);
                                        while (rs1.next()) {
                                    %> 
                                    <a  style="color:white;" href="offcampus_comp.jsp"><p style="text-align:center;text-transform: uppercase;"><b><%=rs1.getString("companyname")%></b></p></a>

                                        <%}%>
                                </marquee>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!--Fourth section-->
        <section style="background-color:#021827;"> 
            <%@include file = "index_viewcards.jsp"%>
        </section>
        <!--END of Fourth Section-->

        <!--footer Section-->
        <section>
            <%@include file = "index_footer.jsp"%>
        </section>
        <!--END of Footer Section-->
    </body>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <script>
                                    AOS.init();
    </script>

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

</html>

