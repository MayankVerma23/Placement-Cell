<%-- 
    Document   : home_student_footer
    Created on : 23 Apr, 2019, 11:50:49 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME STUDENT FOOTER</title>

        <style>

            #d2{
                width:100%;
            }       

            #footer {
                background: #000;
                padding: 0 0 30px 0;
                color: #eee;
                font-size: 14px;
                margin-top: 630px;
            }

            #footer .footer-top {
                background: #111;
                padding: 60px 0 30px 0;
            }

            #footer .footer-top .footer-info {
                margin-bottom: 30px;
            }

            #footer .footer-top .footer-info h3 {
                font-size: 34px;
                margin: 0 0 20px 0;
                padding: 2px 0 2px 0px;
                line-height: 1;
                font-family: Verdana, Geneva, sans-serif;
                font-weight: 700;
                letter-spacing: 3px;
                /* border-left: 4px solid #18d26e;*/
            }

            #footer .footer-top .footer-info p {
                font-size: 14px;
                line-height: 24px;
                margin-bottom: 0;
                font-family: Verdana, Geneva, sans-serif;
                color: #eee;
            }
            #footer .footer-top .social-links a {

                #footer .footer-top .social-links a {
                    font-size: 18px;
                    display: inline-block;
                    background: #333;
                    color: #eee;
                    line-height: 1;
                    padding: 8px 0;
                    margin-right: 4px;
                    border-radius: 50%;
                    text-align: center;
                    width: 36px;
                    height: 36px;
                    transition: 0.3s;
                }

                #footer .footer-top .social-links a:hover {
                    background: #18d26e;
                    color: #fff;
                }

                #footer .footer-top h4 {
                    font-size: 14px;
                    font-weight: bold;
                    color: #fff;
                    text-transform: uppercase;
                    position: relative;
                    padding-bottom: 12px;
                }

                #footer .footer-top h4::before,
                #footer .footer-top h4::after {
                    content: '';
                    position: absolute;
                    left: 0;
                    bottom: 0;
                    height: 2px;
                }

                #footer .footer-top h4::before {
                    right: 0;
                    background: #555;
                }
                /*
                #footer .footer-top h4::after {
                  background: white;
                  width: 60px;
                }
                */
                #footer .footer-top .footer-links {
                    margin-bottom: 30px;
                }

                #footer .footer-top .footer-links ul {
                    list-style: none;
                    padding: 0;
                    margin: 0;
                }

                #footer .footer-top .footer-links ul i {
                    padding-right: 8px;
                    color: #ddd;
                }

                #footer .footer-top .footer-links ul li {
                    border-bottom: 1px solid #333;
                    padding: 10px 0;
                }

                #footer .footer-top .footer-links ul li:first-child {
                    padding-top: 0;
                }

                #footer .footer-top .footer-links ul a {
                    color: #eee;
                }

                #footer .footer-top .footer-links ul a:hover {
                    color: #778899;
                }

                #footer .footer-top .footer-contact {
                    margin-bottom: 30px;
                }

                #footer .footer-top .footer-contact p {
                    line-height: 26px;
                }

                #footer .footer-top .footer-newsletter {
                    margin-bottom: 30px;
                }

                #footer .footer-top .footer-newsletter input[type="email"] {
                    border: 0;
                    padding: 6px 8px;
                    width: 65%;
                }

                #footer .footer-top .footer-newsletter input[type="submit"] {
                    background: #18d26e;
                    border: 0;
                    width: 35%;
                    padding: 6px 0;
                    text-align: center;
                    color: #fff;
                    transition: 0.3s;
                    cursor: pointer;
                }

                #footer .footer-top .footer-newsletter input[type="submit"]:hover {
                    background: #13a456;
                }

                #footer .copyright {
                    text-align: center;
                    padding-top: 30px;
                }

                #footer .credits {
                    text-align: center;
                    font-size: 13px;
                    color: #ddd;
                }


            </style>

        </head>
        <body>
            <section>      
                <footer id="footer">
                    <div class="footer-top">
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-4 col-md-6 footer-info">
                                    <h3>Placement Cell</h3>
                                    <p>Our main motive is to provide best facilities to our candidates</p>
                                </div>

                                <div class="col-lg-4 col-md-6 footer-links">
                                    <h4>Quick Links</h4>
                                    <ul>
                                        <li><i class="ion-ios-arrow-right"></i> <a href="home_student.jsp">Home</a></li>
                                        <li><i class="ion-ios-arrow-right"></i> <a href="placement_student.jsp">upcoming companies</a></li>  
                                        <li><i class="ion-ios-arrow-right"></i> <a href="apply_job.jsp">apply in companies</a></li>
                                        <li><i class="ion-ios-arrow-right"></i> <a href="student_result.jsp">my result</a></li>
                                        <li><i class="ion-ios-arrow-right"></i> <a href="our_recruiter.jsp">Our Recruiters</a></li>
                                        <li><i class="ion-ios-arrow-right"></i> <a href="profile_student.jsp">my profile</a></li>
                                    </ul>
                                </div>

                                <div class="col-lg-4 col-md-6 footer-contact">
                                    <h4>Placement Co-ordinator</h4>

                                    <p style="font-size:20px;">
                                        Placement Cell<br>
                                        ABC UNIVERSITY<br>
                                        Patiala<br>
                                        <strong>Phone:</strong>9780578322<br>
                                        <strong>Email:</strong>gursimarsingh020@gmail.com<br>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </section>
        </body>
    </html>
