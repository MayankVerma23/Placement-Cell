<%-- 
    Document   : newpassword_company
    Created on : 29 Mar, 2019, 11:14:14 PM
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
        <title>JSP Page</title>
    </head>
    
    <style>
        body
        {
            margin:0;
            padding:0;
            font-family:sans-serif;
            background:url(background_images/balls3.jpg);
            background-size:cover;
        }
        .box
        {
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            width:400px;
            padding:40px;
            background:rgba(0,0,0,.8);
            box-sizing:border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.5);
            border-radius:10px;

        }
        .box h2
        {
            margin:0 0 30px;
            padding:0;
            color:#fff;
            text-align:center;
        }
        .box .inputBox
        {
            position:relative;
        }
        .box .inputBox input
        {
            width:100%;
            padding:10px 0;
            font-size:16px;
            color:#fff;
            letter-spacing:1px;
            margin-bottom:30px;
            border:none;
            border-bottom:1px solid #fff;
            outline:none;
            background:transparent;
           }
        .box .inputBox label
        {   
            position:absolute;
            top:0;
            left:0;
            letter-spacing:1px;
            padding:10px 0;
            font-size:16px;
            color:#fff;
            pointer-events:none;
            transitions:.5s;

        }
        .box .inputBox input:focus~label,
        .box .inputBox input:valid~label
        {
            top:-18px;
            left:0;
            color:#03a9f4;
            font-size:12px;
        }

        .box input[type="submit"]
        {
            background:transparent;
            border:none;
            outline:none;
            color:#fff;
            background:#03a9f4;
            padding:10px 20px;
            cursor:pointer;
            border-radius:5px;
            }
    </style>

    <body>
        <div class="box">
        <form action="newpassword_company_update.jsp">
            <h2>SET NEW PASSWORD</h2>
            <div class="inputBox">
                   <input type="text" name="new_pass" required>
                   <label>NEW PASSWORD</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="confirm_pass" required>
                   <label>CONFIRM PASSWORD</label>
               </div>
            <input type="submit"  value="Submit">
        </form>
        </div>
    </body>
</html>
