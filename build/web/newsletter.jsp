<%-- 
    Document   : newsletter
    Created on : 11 Apr, 2019, 12:19:45 PM
    Author     : hp
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <title>NEWSLETTER</title>
        <style>
            .subscribe-area {
                background-image: linear-gradient(to top, #00c6fb 0%, #005bea 100%);
            }

            .pb-50 {
                padding-bottom: 50px;
            }
            .pt-70 {
                padding-top: 70px;
            }

            .mb-15 {
                margin-bottom: 15px;
            }

            .subscribe-text span {
                font-size: 12px;
                font-weight: 700;
                color: #fff;
                letter-spacing: 5px;
            }
            .subscribe-text h2 {
                color: #fff;
                font-size: 36px;
                font-weight: 300;
                margin-bottom: 0;
                margin-top: 6px;
            }
            .subscribe-wrapper {
                overflow: hidden;
            }
            .mb-15 {
                margin-bottom: 15px;
            }
            .subscribe-form {
            }
            .subscribe2-wrapper .subscribe-form input {
                background: none;
                border: 1px solid #fff;
                border-radius: 30px;
                color: #fff;
                display: inline-block;
                font-size: 15px;
                font-weight: 300;
                height: 57px;
                margin-right: 17px;
                padding-left: 35px;
                width: 70%;
                cursor: pointer;
            }

            .subscribe2-wrapper .subscribe-form button {
                background: #ffff;
                border: none;
                border-radius: 30px;
                color: #4b5d73;
                display: inline-block;
                font-size: 18px;
                font-weight: 400;
                line-height: 1;
                padding: 18px 46px;
                transition: all 0.3s ease 0s;
            }
            .subscribe2-wrapper .subscribe-form button i {
                font-size: 18px;
                padding-left: 5px;
            }

        </style>

    </head>
    <body>
        <section class="subscribe-area pb-50 pt-70">
            <div class="container">
                <div class="row">

                    <div class="col-md-4">
                        <div class="subscribe-text mb-15">
                            <span>JOIN OUR NEWSLETTER</span>
                            <h2>subscribe newsletter</h2>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="subscribe-wrapper subscribe2-wrapper mb-15">
                            <div class="subscribe-form">
                                <form action="#">
                                    <input placeholder="enter your email address" type="email">
                                    <button>subscribe <i class="fas fa-long-arrow-alt-right"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </section>
    </body>
</html>
