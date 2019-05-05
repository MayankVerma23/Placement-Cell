<%-- 
    Document   : contactf_stud.jsp
    Created on : Mar 31, 2019, 2:02:41 PM
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
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

        <title>CONTACT FORM STUDENT</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <style>
            textarea{
                width: 100%;
                height: 150px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
            }            
            h4{
                color: #008B8B;
                font-size: 1.5em;
                font-weight: bold;
                font-family: Arial, Helvetica, sans-serif;
            }

            .form-submit-button {
                background: #4379C0;
                color: white;
                border-style: outset;
                border-color: #4379C0;
                height: 50px;
                width: 100px;
                font: bold 15px arial, sans-serif;
            }
            .subject{
                width: 100%;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 10px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
            }

        </style>
    </head>

    <body>
        <%@include file = "header_student.jsp"%>

        <%!String roll = "";%>

        <div class="container"> 
            <secton>
                <i class="fas fa-cogs fa-5x" style="color:84868D" ></i><br><br>
                <form action="send_reply_student.jsp">
                    <h4>
                        <label>Subject</label></h4>
                    <input type="text" name="subject" class="subject" placeholder="subject...">
                    <br><br>
                    <h4><label>Please Describe your Issue</label></h4>
                    <br>
                    <textarea name="issue"  placeholder="...." required ></textarea>
                    <br>
                    <input type="submit" class=form-submit-button value="submit">
                </form>

            </secton>   
        </div><br>
        <section>
            <%@include file = "footer-student.jsp"%>
        </section>
    </body>
</html>

