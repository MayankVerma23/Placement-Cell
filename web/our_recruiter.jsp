<%-- 
    Document   : our_recruiter1
    Created on : 9 May, 2019, 11:06:40 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>

        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

        <style>
            #fifth-section-box
            {
                background-color: white;
                width:300px;
                height:200px;
                margin:0 auto;
                padding:5px;
                text-align:center;
                font-size:20px;
            }
        </style>
    </head>
    <body>
        <section>
            <%@include file = "index_navbar.jsp"%>
        </section>
        
        <section>
            <div class="parralax" style="background-image: url(background_images/image1.jpg);min-height:800px;background-attachment: fixed;background-position: center;background-repeat: no-repeat;background-size: cover;">
                <div style="background-color:#00000042;">
                    <div class="container" style="padding-bottom: 100px;padding-top:100px;">
                        <div data-aos="zoom-out" data-aos-duration="3000"><h1 style="text-align: center;margin-bottom: 20px;"><b><span style="color:white;">OUR</span><span style="color:#62ff15;"> MAIN RECRUITERS</span></b></h1></div>

                        <div data-aos="zoom-in" data-aos-duration="3000" data-aos-delay="500">
                            <div class="row" style="margin-top:50px;">
                                <div class="col-md-4">

                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp1.jpg" height="190" width="170"></div>

                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div id="fifth-section-box">
                                        <div > <img src="svg_icons/comp2.jpg" height="190" width="170"></div>


                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div id="fifth-section-box">

                                        <div> <img src="svg_icons/comp9.png" height="190" width="170"></div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div data-aos="zoom-in" data-aos-duration="3000" data-aos-delay="1000">    
                            <div class="row" style="margin-top:50px;">
                                <div class="col-md-4">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp4.jpg" height="190" width="170"></div>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp5.jpg" height="190" width="170"></div>

                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp6.jpg" height="190" width="170"></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div data-aos="zoom-in" data-aos-duration="3000" data-aos-delay="1500">
                        <div class="row" style="margin-top:50px;">
                            <div class="col-md-4">
                                
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp7.jpg" height="190" width="170"></div>

                                    </div>
                                </div>
                            
                            <div class="col-md-4">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp8.png" height="190" width="170"></div>

                                    </div>
                                </div>
                           

                            <div class="col-md-4">
                                    <div id="fifth-section-box">
                                        <div> <img src="svg_icons/comp7.png" height="190" width="170"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </body>


    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    <script>
        AOS.init();
    </script>

</html>
