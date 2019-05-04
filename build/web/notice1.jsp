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
        <title>JSP Page</title>
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
            </style>
    </head>
    <body>
        <form action="notice2.jsp" method="post">
             <h2 class="topics" ><i class="far fa-clipboard"></i> Your Notices</h2>
            <hr class="line1">
  
            <textarea cols="60" rows="8" name="t1"></textarea><br>
            <input type="submit" class=form-submit-button value="Post Notice">
        </form>
    </body>
</html>
