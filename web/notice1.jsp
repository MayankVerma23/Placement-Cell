<%-- 
    Document   : notice1
    Created on : 18 Apr, 2019, 8:49:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice 1</title>

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
            .topics{
                color: #333333;
                text-align:center;
                text-transform: capitalize;
            }
            .line1{
                border-color: #A9A9A9;
            }

            .form-submit-button {
                background: #333333;
                border-color: #333333;
                color: #ffffff;
                margin-left:40%;
                height: 40px;
                width: 150px;
                font: bold 15px arial, sans-serif;
            }

            input[type=checkbox]{
                border: 0px;
                width:100%;
                height:2em;
            }
        </style>
    </head>
    <body>
         <%@include file = "header_tpo.jsp"%>
        <form action="notice2.jsp" method="post">
            <h2 class="topics" ><i class="far fa-clipboard"></i> Your Notices</h2>
            <hr class="line1">

            <div class="inputBox">
                <label style="margin:0 auto;">MSG FOR</label><br>
                <input type="checkbox" name="student" value="student" style="float:left">Student</div>
                <input type="checkbox" name="company"  value="company">Company<br>
                      <input type="checkbox" name="both"  value="comman">Comman<br>
            

            <textarea cols="60" rows="8" name="t1"></textarea><br>
            <input type="submit" class=form-submit-button value="Post Notice">
        </form>
     
    </body>
    &nbsp;
      <%@include file = "footer-tpo.jsp"%> 
</html>
