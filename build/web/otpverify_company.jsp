<%-- 
    Document   : otpverify_company
    Created on : 29 Mar, 2019, 11:11:43 PM
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <title>OTP VERIFY</title>
        <style>
            div {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
                height:400px;
                width: 600px;
                margin: 0 auto;
                margin-top:200px;
            }
        </style>

        <%! String temp = "";%>
        <%
            HttpSession hs = request.getSession();
            temp = (String) hs.getAttribute("otpstored");
        %>

        <script>
            function check(x)
            {
                if (x ==<%=temp%>)
                {
                    alert("OTP MATCHED");
                    window.location.href = "newpassword_company.jsp";
                } else
                {
                    alert("OTP UNMATCHED");
                    window.location.href = "otpverify_company.jsp";
                }

            }

            function resend()
            {
                window.location.href = "forgetpassword_company.jsp";
            }
        </script>
    </head>
    <body background="background_images/bg1.png">

        <div>

            <label><h1 >OTP VERIFICATION</h1></label><br>
            <label class="label" style="margin-right:20px;margin-top:4%"><b>OTP</b></label>
            <p><input type="password" placeholder="Enter OTP" name="otpvalue" id="t1" style="width:100%;margin-top:1%;"></p>
            <button class="btn btn-success" style="height:40px;margin-top:15%" name="save" onclick="check(document.getElementById('t1').value)">Submit</button>
            <button class="btn btn-danger" style="height:40px;margin-top:15%" name="resend" onclick="resend()">Resend</button>

        </div>
    </body>
</html>
