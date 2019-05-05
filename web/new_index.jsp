<%-- 
    Document   : viewcards_index
    Created on : Apr 14, 2019, 2:56:47 AM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />
        <style>
            .row{
                justify-content:center;
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

            #viewcards .container{
                margin-top: 100px;
                margin-bottom: 100px;
            }

            .quickv{
                text-align: center;
                margin-bottom: 50px;
            }

        </style>
    </head>
    <body>

        <div id="viewcards" class="container" >
            <h3 class="quickv">Quick Links</h3>
            <div class="row">
                <div class="col-md-4">
                    <div class="card shadow" style="width: 20rem; ">
                        <div class="inner"><img class="card-img-top" src="background_images/1.jpg" alt="..."></div>
                        <div class="card-body text-center">
                            <h5 class="card-title">Gallery</h5>

                            <a href="#" class="btn btn-sucess">View</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner"> <img class="card-img-top" src="background_images/2.jpg" alt="..."></div>
                        <div class="card-body text-center">
                            <h5 class="card-title">Our Team</h5>

                            <a href="#" class="btn btn-sucess">View</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow" style="width: 20rem;">
                        <div class="inner"><img class="card-img-top" src="background_images/1.jpg" alt="..."></div>
                        <div class="card-body text-center">
                            <h5 class="card-title">Placement Data</h5>
                            <a href="#" class="btn btn-sucess">View</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
