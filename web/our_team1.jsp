<%-- 
    Document   : page1
    Created on : 23 Apr, 2019, 11:06:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" >
    <meta charset="UTF-8">
    <title>Parallax Flipping Cards</title>


    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:300,400,700'>
    <style>
        *{
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;

        }

        h1{
            font-size: 2.5rem;
            font-family: 'Montserrat';
            font-weight: normal;
            color: #444;
            text-align: center;
            margin: 2rem 0;

        }

        .wrapper{
            width: 90%;
            margin: 0 auto;
            max-width: 80rem;


        }

        .cols{
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            justify-content: center;


        }

        .col{
            width: calc(25% - 2rem);
            margin: 1rem;
            cursor: pointer;


        }

        .container{
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
            -webkit-perspective: 1000px;
            perspective: 1000px;


        }

        .front,
        .back{
            background-size: cover;
            background-position: center;
            -webkit-transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            -o-transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1), -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            text-align: center;
            min-height: 280px;
            height: auto;
            border-radius: 10px;
            color: #fff;
            font-size: 1.5rem;


        }

        .back{
            background: #cedce7;
            background: -webkit-linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
            background: -o-linear-gradient(45deg,  #cedce7 0%,#596a72 100%);
            background: linear-gradient(45deg,  #cedce7 0%,#596a72 100%);

        }

        .front:after{
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
            width: 100%;
            height: 100%;
            content: '';
            display: block;
            opacity: .6;
            background-color: #000;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            border-radius: 10px;

        }
        .container:hover .front,
        .container:hover .back{
            -webkit-transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            transition: -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            -o-transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);
            transition: transform .7s cubic-bezier(0.4, 0.2, 0.2, 1), -webkit-transform .7s cubic-bezier(0.4, 0.2, 0.2, 1);

        }

        .back{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;

        }

        .inner{
            -webkit-transform: translateY(-50%) translateZ(60px) scale(0.94);
            transform: translateY(-50%) translateZ(60px) scale(0.94);
            top: 50%;
            position: absolute;
            left: 0;
            width: 100%;
            padding: 2rem;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            outline: 1px solid transparent;
            -webkit-perspective: inherit;
            perspective: inherit;
            z-index: 2;

        }

        .container .back{
            -webkit-transform: rotateY(180deg);
            transform: rotateY(180deg);
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
            height: 500px;

        }

        .container .front{
            -webkit-transform: rotateY(0deg);
            transform: rotateY(0deg);
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
            height: 500px;
        }

        .container:hover .back{
            -webkit-transform: rotateY(0deg);
            transform: rotateY(0deg);
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;

        }

        .container:hover .front{
            -webkit-transform: rotateY(-180deg);
            transform: rotateY(-180deg);
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;

        }

        .front .inner p{
            font-size: 2rem;
            margin-bottom: 2rem;
            position: relative;

        }

        .front .inner p:after{
            content: '';
            width: 4rem;
            height: 2px;
            position: absolute;
            background: #C6D4DF;
            display: block;
            left: 0;
            right: 0;
            margin: 0 auto;
            bottom: -.75rem;

        }

        .front .inner span{
            color: rgba(255,255,255,0.7);
            font-family: 'Montserrat';
            font-weight: 300;
            height:50%;
        }

        @media screen and (max-width: 64rem){
            .col{
                width: calc(33.333333% - 2rem);

            }
        }

        @media screen and (max-width: 48rem){
            .col{
                width: calc(50% - 2rem);

            }
        }

        @media screen and (max-width: 32rem){
            .col{
                width: 100%;
                margin: 0 0 2rem 0;

            }
        }

    </style>

</head>

<body>

    <div class="wrapper">
        <h1>OUR TPO TEAM</h1>
        <div class="cols">

            <div class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/500/500/)">
                        <div class="inner">
                            <p>GURSIMAR SINGH</p>
                            <span>TEAM MEMBER</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Gursimar Singh (Student of Chitkara University) </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/511/511/)">
                        <div class="inner">
                            <p>MAYANK VERMA</p>
                            <span>TEAM MEMBER</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Mayank verma (student of punjabi university)</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/502/502/)">
                        <div class="inner">
                            <p>DIVJOT SINGH</p>
                            <span>TEAM MEMBER</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Divjot singh (student of Thapar college)</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col" ontouchstart="this.classList.toggle('hover');">
                <div class="container">
                    <div class="front" style="background-image: url(https://unsplash.it/503/503/)">
                        <div class="inner">
                            <p>MOHIT SHARMA</p>
                            <span>TEAM MEMBER</span>
                        </div>
                    </div>
                    <div class="back">
                        <div class="inner">
                            <p>Mohit sharma (student of RIMT university)</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</body>

</html>

