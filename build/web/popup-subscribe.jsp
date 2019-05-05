<%-- 
    Document   : popup-subscribe
    Created on : Apr 26, 2019, 11:40:02 PM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Francois+One" />
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Allerta" />

        <style>
            .box{
                font-family: Allerta;
                display: flex;
                width: 900px;
                height:500px;

                flex-direction: row;

                text-align: center;
            }
            .fab {
                background: none;
                padding: 0px;
                border: none;
                color: #797979;
                padding-right: 35px;
                font-size: 40px;
            }
            .fab:focus{
                outline: none;
            }

            .fab:hover{
                color: orange;
            }
            .popnew{
                border: transparent;
                background-color: transparent;
                padding-bottom: 5px;
                font-size: 35px;
                color:#797979;
                padding-left: 35px;


            }
            .popnew:focus{
                outline: 0;

            }
            .popnew:focus::placeholder{
                color: black;
                transition: all 0.5s ;

            }
            .line1{

                border-top: 1px solid #797979;
                padding: 0px;
                margin: 0px;
                margin-bottom: 20px;
            }
            .box h1{
                font-size: 50px;
            }
            .box p{
                font-size: 20px;
            }
            .box-left img{
                max-height: 500px;
                width: auto;
                padding-right: 20px;

            }
            .box-right{
                flex:1;
                display: flex;
                padding-top: 50px;
                flex-direction: column;
            }
        </style>



    </head>
    <body>
        <div class="box">
            <div class="box-left">
                <img src="background_images/test.jpg">                    
            </div>
            <div class="box-right">
                <h1>Never Miss Out!</h1>
                <p>Subscribe to our News Letter to receive latest updates</p>




                <form action="index.jsp">
                    <input style="margin-top:50px;"class="popnew" type="email" placeholder="Your E-mail......"><button type="submit" class="fab"><i class="far fa-envelope " style="padding-top:3px;padding-left: 20px"></i></button>
                    <hr class="line1">
                </form>


            </div>
    </body>
</html>
