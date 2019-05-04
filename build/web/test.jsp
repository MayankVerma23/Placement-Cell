<%-- 
    Document   : test
    Created on : 11 Mar, 2019, 3:52:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        
        <style>

            .first {
              padding-top: 210px;
              height:100vh;
              min-height:400px;
              background-size:cover;
              background-image:url('background_images/back2.jpg');
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
                padding-top: 6px;
            }


            .buttonlogin {
                    background: #3498db;
                    border: 0;
                    padding: 20px;
                    font-size: 30px;
                    text-align: center;

                    width: 300px;
                    outline: none;
                    color: white;
                    border-radius: 20px ;
                    transition: 0.25s;
                }

            .buttonlogin:hover {
                     width: 380px;
                    background: #2ecc71 !important;
            }
            p {
                color: white;
                font-size: 100px;
                font-family: cursive;
            }
            </style>
    </head>
    
 <body>
     
     
<!--Start of navbar -->       
<div class="navbar navbar-default navbar-fixed-top" data-offset-top="400" data-spy="affix">
  <div class="container">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.jsp" style="color:white;font-size: 25px">PLACEMENT CELL</a>
      
        <a class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
          <i class="fa fa-bars"></i>
        </a>
    </div>
      
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-right navbar-nav">
        <li><a href="index.jsp" style="color:white;font-size: 25px">Home</a></li>
        <li><a href="aboutus.jsp" style="color:white;font-size: 25px">About Us</a></li>
        <li><a href="#" style="color:white;font-size: 25px">Contact Us</a></li>
        <li><a href="our_recruiter.jsp" style="color:white;font-size: 25px">Our Recruiter</a></li>
      </ul>
    </div>		
  </div>
</div>
     
<!--End of Navbar -->


<!--Start of Front Text-->
        <section class="first">
          <div class="container" style="padding: 0px">
                <p>WELCOME TO<br>PLACEMENT<br>CELL</p>
                <a href="login.jsp"><button class="buttonlogin" name="login" style="margin-left: 1%; margin-right:7%;margin-top: 8%">LOGIN</button></a>
                <a href="signup.jsp"><button class="buttonlogin" name="signup" >SIGN UP</button></a>
          </div>
        </section>
<!--End of Front Text-->


    </body>
</html>
