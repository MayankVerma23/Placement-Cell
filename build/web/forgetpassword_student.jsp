<%-- 
    Document   : forgetpassword_student
    Created on : 25 Mar, 2019, 12:53:45 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>FORGETPASSWORD STUDENT</title>

        <style>
            div {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
                height:300px;
                width: 400px;
                margin: 0 auto;
                margin-top:200px;
            }
        </style>
    </head>
    <body background="background_images/bg1.png">
        <div>

            <form action="forgetpassword" method="post" autocomplete="off">

                <label><h1>Forget Password</h1></label><br>
                <label style="margin-top:8%;margin-right:20px">Enter Email</label>
                <input type="text" placeholder="Enter Your E-Mail" name="email" style="width:100%">
                <button class="btn btn-success" style="width:100%;height:40px;margin-top:14%" name="btn-save">Submit</button>
                <%
                    HttpSession hs = request.getSession();
                    hs.setAttribute("forget", "bcha");
                %>
            </form>

        </div>
    </body>
</html>
