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
    
    <body>
       <section >
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
            </div>
        </section>
    </body>
</html>
