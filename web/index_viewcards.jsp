<%-- 
    Document   : viewcards_index
    Created on : Apr 14, 2019, 2:56:47 AM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Index</title>
     
        <style>
            .card-img{
                width:100%;
                border-radius: 10px 10px 0px 0px; 
            }

            .card-title{
                text-align:center;
                font-size: x-large;
                font-family: auto;
            }

            .inner{
                overflow: hidden;
            }
            .inner img{
                transition: all 1.5s ease;
            }

            .inner:hover img{
                opacity: 0.7;
                transform: scale(1.5);
            }

            #cards {
                box-shadow: 0 12px 8px 0 rgba(0, 0, 0, 0.6), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                text-align: center;
                padding: 0px !important;
                border-radius: 10px;
                background-color: white;
                transition: transform 1s ease-out;
            }
            #cards:hover {
                transform: scale(1.1);
            }
            #card-button{
                padding:10px 60px;
                margin:10%;
            }
            #card-button:hover{
                background-color: gold;
                color:black;
            }
        </style>
    </head>
    <body>

        <div class="container" style="padding-bottom: 100px;padding-top:100px;" >
            <p class="index-section-heading">Quick Links</p>
            <div class="row">
                <div class="col-md-4">
                    <div id="cards">
                        <div class="inner"><img class="card-img" src="background_images/1.jpg" alt="1 pic"></div>
                        <h5 class="card-title">GALLERY</h5>
                        <a href="#"><button class="btn btn-success" id="card-button">View</button></a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div id="cards">
                        <div class="inner"><img class="card-img" src="background_images/2.jpg" alt="2 pic"></div>
                        <h5 class="card-title">OUR TEAM</h5>
                        <a href="#"><button class="btn btn-success" id="card-button">View</button></a>
                    </div>
                </div>

                <div class="col-md-4" >
                    <div id="cards">
                        <div class="inner"><img class="card-img" src="background_images/1.jpg" alt="3 pic"></div>
                        <h5 class="card-title">PLACEMENT RECORD</h5>
                        <a href="#"><button class="btn btn-success" id="card-button">View</button></a>
                    </div>
                </div>

            </div>
        </div>
    </body>

   
</html>