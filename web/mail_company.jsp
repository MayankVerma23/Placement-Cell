<%-- 
    Document   : Mail_company
    Created on : 11 May, 2019, 2:10:58 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD NOTICE</title>

        <style>

            textarea{
                width: 650px;
                height: 200px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #2F4F4F;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
                margin-left:3%;
            }

            #subject{
                width: 650px;
                height: 70px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #2F4F4F;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;

            }

            .topics{
                color: #333333;
                text-align:center;
                text-transform: capitalize;
            }


            .form-submit-button {
                background: #333333;
                border-color: #333333;
                color: white;
                height: 40px;
                width: 150px;
                font: bold 15px arial, sans-serif;
            }

            input[type=checkbox]{
                border: 0px;
                width:10%;
                height:1.5em;
            }

            #container-design{
                background-color: wheat;
                padding:30px 60px 30px 60px;;
                border: 2px solid black;

            }
        </style>
    </head>
    <body>
        <section>
            <%@include file = "header_tpo.jsp"%>
        </section>


        <section  style="margin-top: 20px;margin-bottom:20px;min-height:400px;"> 
            <div class="container" id="container-design">
                <h1 style="text-align: center;margin-bottom:30px;"></h1>
                <form action="sending_mail_company.jsp" method="post" style="text-align: center;">
                    <h2 class="topics" ><i class="far fa-clipboard"></i>SEND MAIL</h2><hr style="border: 1px solid black;">

          
                    <textarea cols="20" rows="8" name="to" placeholder="TO" id="subject" required></textarea><br>
                    <textarea cols="60" rows="8" name="message" placeholder="MESSAGE" required></textarea><br>
                    <button type="submit" class="form-submit-button">SEND</button>
                </form>
            </div>
        </section>

        <section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>
    </body>
</html>