<%-- 
    Document   : abouttpo
    Created on : 17 Mar, 2019, 2:20:29 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>ABOUT</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script>
            $(document).ready(function () {
                $("#div1").mouseenter(function () {
                    $("#pic").slideDown(2000);
                });
            });


            $(document).ready(function () {
                $("#div2").mouseenter(function () {
                    $("#pic2").slideDown(2000);
                });
            });
        </script>
        <style> 
            #first, #pic,#div1,#div2,#pic2{
                padding: 5px;
                text-align: center;
                background-color: #e5eecc;
                border: solid 1px #c3c3c3;
            }
            #second {

                display: none;
            }
            #pic{

                display: none;
            }
            #pic2{

                display: none;
            }
            .text{    
                font-family: "Times New Roman", Times, serif;
                font-size: 24px;
            }
</style>

    </head>
    <body>
        <section>
            <%@include file = "index_navbar.jsp"%>
        </section>


        <section>

            <div id="first">
                <p class="text"><b><u>Department of Training & Placement:</u></b></p>
                            <p class="text">   our Placement Office  is well-equipped with the latest technologies and world-class state-of-the-art Infrastructure for pre-placement 
                                talks, seminars, workshops, counselling, meetings; group discussions, and personal interviews. The placement department works diligently
                                towards providing students with genuine opportunities to give their career a kick-start. The Placement Office is managed by of a team of
                                committed professionals, some of whom have seen 8 cycles of placement.</p></div>

                            <div id="div1" class="text"><h1><b><u>Our CSE Recruiters</u></b> </h1></div>
                            
                            <div>
                                <div id="pic"><img src="background_images/cse.png" width="1500"></div>
                            </div>
                            
                            <div id="div2" class="text"><h1><b><u>Our other field Recruiters</u></b> </h1></div>
                            
                            <div id="pic2"><img src="background_images/other.jpg" width="1500"></div>
        </section>



        </body>
</html>