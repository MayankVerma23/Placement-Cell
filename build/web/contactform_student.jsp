<%-- 
    Document   : contactform_student
    Created on : Mar 29, 2019, 1:23:22 PM
    Author     : Divjot
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
        <title>CONTACT FORM STUDENT</title>

        <style>
            body{
                background: -webkit-linear-gradient(left, #0072ff, #00c6ff);
            }
            .contact-form{
                background: #fff;
                margin-top: 10%;
                margin-bottom: 5%;
                width: 70%;
            }
            .contact-form .form-control{
                border-radius:1rem;
            }
            .contact-image{
                text-align: center;
            }
            .contact-image img{
                border-radius: 6rem;
                width: 11%;
                margin-top: -3%;
                transform: rotate(29deg);
            }
            .contact-form form{
                padding: 14%;
            }
            .contact-form form .row{
                margin-bottom: -7%;
            }
            .contact-form h3{
                margin-bottom: 8%;
                margin-top: -10%;
                text-align: center;
                color: #0062cc;
            }
            .contact-form .btnContact {
                width: 50%;
                border: none;
                border-radius: 1rem;
                padding: 1.5%;
                background: #dc3545;
                font-weight: 600;
                color: #fff;
                cursor: pointer;
            }
            .btnContactSubmit
            {
                width: 50%;
                border-radius: 1rem;
                padding: 1.5%;
                color: #fff;
                background-color: #0062cc;
                border: none;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div class="container contact-form">
            <div class="contact-image">
                <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <form method="post" action="contactform_submit_student.jsp">
                <h3>Contact Us</h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" placeholder="Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="email" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="phone" class="form-control" placeholder="Your Phone Number *" value="" />

                        </div>

                        <div class="form-group">
                            <input type="text" name="subject" class="form-control" placeholder="Subject *" value="" />
                        </div>


                        <div class="form-group">
                            <textarea name="message" class="form-control" placeholder="Your Message *" style="width: 150%; height: 150px;"></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div>
                    </div>
                </div>
            </form>


        </div>
    </body>
</html>
