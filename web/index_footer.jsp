<%-- 
    Document   : index_footer
    Created on : Apr 25, 2019, 4:37:26 PM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" >
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Francois+One" >
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Allerta" >
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">


        <style>

            #footer{
                background:#1c1d1f; 
                padding-top: 50px;

            }
            .footer-main-body{
                font-family: "Allerta";
                margin: 0 auto;
                margin-bottom: 50px;
                width:57%;

                color:#ececec;

            }
            @media (min-width: 900px) {

                .footer-main-body{
                    display: flex;
                }
            }
            .main-1
            {

                flex: 1;


            }
            .main-2
            {

                flex: 0.8;

                justify-content: center;
                flex-direction: column;
                margin: 0 auto;
            }

            .main-3
            {

                flex: 1;
            }

            .main-3 p{
                opacity: 0.8;
            }
            .main-1-body{
                display: flex;
                padding: 10px;
                flex-direction: column;
            }
            .main-1-image{


                flex:0.27;
            }  
            .main-1-image img{
                width: 100%;
                height:auto;
            }

            .main-1-desc{
                display: flex;


                flex:0.73;
            }
            .main-1-desc p{
                padding-left:  10px;
                margin-top: 0px;

            }
            .main-1-desc p a{
                color: #ececec;

                text-decoration: none;
                transition: 0.5s;
            }
            .main-1-desc p a:hover{
                color: white;


            }
            .main-1-1{
                display:flex; 
                flex-direction: row;
                padding-bottom: 10px;
                margin-bottom:15px;
            }
            .main-2 p{
                font-size: 15px;
                line-height: 230%;
                padding-left: 5px;

            }
            .main-2 p a{
                text-decoration: none;
                color: white;
                opacity: 0.7;
                transition: 0.4s;
            }
            .main-2 p a:hover{
                opacity: 1;
            }
            .main-2 ul li{
                color: white;
                list-style-type: none;  
            }
            .main-2{
                display: flex;
                text-align: center;
            }
            .main-2-a{

                flex: 1;
            }
            .main-2-b{

                flex: 1;
            }
            .below{

                font-family: "Francois One";
            }

            .below-1{
                display: flex;
                align-items: center;
                flex: 1;
                justify-content: center;
                color:#797979;

            }

            .below-1 p{


                padding-left: 50px; 
                font-size: 14px;
            }
            .below-2{
                display: flex;
                flex: 1;
                justify-content: center;

            }
            .below-3{
                display: flex;
                align-items: center;
                flex:1;
                justify-content: center;

                color:#797979;
                font-size: 20px;
                transition: 0.4s;

            }
            @media (min-width: 900px) {

                .below{
                    display: flex;
                }
                .below-1{
                    justify-content: flex-start;
                }
                .below-2{
                    justify-content: center;
                }
                .below-3{
                    justify-content: center;

                }
                .below-3 p{
                    padding-right:30px;
                }
            }
            .below-3 i:hover{
                color:orange;

            }
            .news{
                border: transparent;
                background-color: transparent;
                padding-bottom: 5px;
                font-size: 13px;
                color:#797979;
                padding-left: 35px;


            }
            .news:focus{
                outline: 0;

            }
            .news:focus::placeholder{
                color: white;
                transition: all 0.5s ;

            }
            .fabutton {
                background: none;
                padding: 0px;
                border: none;
                color: #797979;
                padding-right: 35px;
                font-size: 20px;
            }
            .fabutton:focus{
                outline: none;
            }

            .fabutton:hover{
                color: orange;
            }

            .line1{

                border-top: 1px solid #797979;
                padding: 0px;
                margin: 0px;
                margin-bottom: 20px;
            }

            .belowbelow{
                font-family: "Arimo";
                font-weight: 600;
                padding: 10px 0px 30px;
                display: flex; 
                justify-content: center;
            }
            .belowbelow p,a{

                color: #797979;


            }
            .belowbelow a:hover{
                text-decoration: none;
                color:white;
            }
            .msg{
                border: transparent;
                background-color: #393939;
                padding-bottom: 5px;
                font-size: 13px;
                color:#797979;
                margin-left: 35px;


            }
            .msg:focus{
                outline: 0;

            }
            .msg:focus::placeholder{
                color: white;
                transition: all 0.5s ;

            }

            .msgbox{
                border: transparent;
                background-color: #393939;
                padding-bottom: 5px;
                font-size: 13px;
                color:#797979;
                margin-left: 13px;
                width: 70%;

            }
            .msgbox:focus{
                outline: 0;

            }
            .msgbox:focus::placeholder{
                color: white;
                transition: all 0.5s ;

            }
            .formrow{
                margin-bottom: 10px;
                display: flex;
                flex-direction: row;
            }
            .formrow input{
                flex:0.6;
                padding: 5px;
            }
            .formrow textarea{
                flex: 0.6;
                height: 100px;
                padding: 5px;
            }
            .buttonsend{
                border-radius: 2px;
                color: white;
                padding: 5px;
                margin-left: 75px;  
                background-color:green;
                border: transparent;
                font-size: 15px;
                font-weight: 600;
            }
            .buttonsend:hover{
                color: black;

                background-color:white;
                border: transparent;

            }
            .buttonsend:focus{
                outline: none;

            }


            .main-3 h4,p{
             text-align: center;   
            }

        </style>




    </head>
    <body>
        <footer id="footer">
            <div class="footer-main-body">
                <div class="main-3" style=" line-height: 230%; ">
                    <h4 style="font-weight:600; margin-bottom: 30px;">College Name</h4>
                    <p>
                        <i class="fas fa-map-marker-alt"></i> College Adress<br>
                        <i class="far fa-envelope"></i> College contact main<br>
                        <i class="fas fa-phone fa-flip-horizontal"></i> College Phno


                    </p>
                    <div class="below-3" style="margin-top:20px;"><p >
                            <i class="fab fa-facebook-square"></i> &nbsp; <i class="fab fa-instagram"></i> &nbsp; <i class="fab fa-youtube"></i> &nbsp; <i class="fab fa-linkedin"></i>
                        </p>
                    </div>
                </div>
                <div class="main-2">

                    <h4 style="font-weight:600; margin-bottom: 30px;">Quick Links</h4>     
                    <p><a href="#">Home</a><br>
                        <a href="#">About Us</a><br>
                        <a href="#">Off Campus</a><br>
                        <a href="#">FAQ</a><br>
                        <a href="#">Previous Year Papers</a><br>
                        <a href="#">Gallery</a><br>

                    </p>
                </div>


                <div class="main-1">
                    <h4 style="font-weight:600; margin-bottom: 30px;padding-left:50px;">Contact US</h4>
                    <form action="send_reply_offline" style="padding-left:55px;">
                        <div class="formrow">    <label for="cname">Name</label><input class="msg" type="text" placeholder="name..." name="oname"></div>
                        <div class="formrow"> <label for="cemail" >Email</label><input class="msg" style="margin-left:36px;" type="email" placeholder="email..." name="oemail"></div>
                        <div class="formrow"><label for="cmessage">Message</label><textarea class="msgbox"  placeholder="msg..." name="omessage"></textarea></div>
                        <button type="submit" class="buttonsend" >Send <i class="fas fa-arrow-circle-right"></i></button>
                    </form>
                </div>


            </div>
            <div class="below" style="color:white;">

                <div class="below-2">
                    <form action="index.jsp">
                        <input class="news" type="email" placeholder="Your email,Our Newsletter"><button type="submit" class="fabutton"><i class="far fa-envelope " style="padding-top:3px;padding-left: 20px"></i></button>
                        <hr class="line1">
                    </form>

                </div>

            </div>
            <div class="belowbelow" style="padding: 0 10px 20px;">
                <p>&copy; Placement Cell &nbsp;&nbsp;  info@placementcell.tu, (785) 504-1209    &nbsp;&nbsp;  <a href="#">Our Team</a><p>
            </div>
        </footer>
    </body>
</html>
