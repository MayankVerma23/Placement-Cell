<%-- 
    Document   : company_registration
    Created on : 7 Mar, 2019, 7:21:07 PM
    Author     : My Lappy
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">COMPANY_REGISTER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <style>
            .container{
                padding: 0px !important;
            }
        </style>
        <script>

            function checkpassword1()
            {
                password = document.getElementById("pass").value;
                lengthh = document.getElementById("pass").value.length;
                var a = document.getElementById("num1").value;
                var flag_number = 0;
                var flag_lowercase = 0;
                var flag_upercase = 0;
                for (i = 0; i < lengthh; i++)
                {
                    if (password.charAt(i) >= 0 && password.charAt(i) <= 9)
                    {
                        flag_number = flag_number + 1;
                    }
                    if (password.charAt(i) >= 'a' && password.charAt(i) <= 'z')
                    {
                        flag_lowercase = flag_lowercase + 1;
                    }
                    if (password.charAt(i) >= 'A' && password.charAt(i) <= 'Z')
                    {
                        flag_upercase = flag_upercase + 1;
                    }
                }

                if (lengthh < 8)
                {
                    alert(password);
                    return false;
                }
                else if (flag_number === 0)
                {
                    alert("Your password must contain at least one digit .");
                    return false;
                }
                else if (flag_lowercase === 0)
                {
                    alert("Your password must contain at least a letter in lower case .");
                    return false;
                }
                else if (flag_upercase === 0)
                {
                    alert("Your password must contain at least a letter in uper case .");
                    return false;
                }
                else if (a.lengthh < 10) {
                    alert("Phoneno must be 10 digit");
                    return false;
                }
                else if (a.lengthh > 10) {
                    alert("Phoneno must be 10 digit");
                    return false;
                }
                else if ((a.charAt(0) != 9) && (a.charAt(0) != 8) && (a.charAt(0) != 7) && (a.charAt(0) != 6)) {
                    alert("Phone number must start with 9,8,7 and 6");
                    return false;
                }

                else
                {
                    var a = (document.getElementById("t3").value);
                    var b = (document.getElementById("t4").value);
                    if (a !== b) {
                        alert("pass not match");
                        return false;
                    }
                    else {
                        alert("pass match");
                        return true;
                    }
                }
            }
        </script>
    </head>

    <body>

        <div class="container">

            <section style="background-color:#E9E8E2;padding: 20px;margin-top: 60px;border:2px solid black">
                <div class="row" >
                    <div class="col-md-12">
                        <h1 style="text-align: center;color:black">COMPANY SIGNUP</h1>
                    </div>
                </div>

                <div class="row">

                    <form action="companysignup" method="post" onsubmit="return checkpassword1()" style="color: black;" >

                        <div class="col-md-12">  

                            <div class="form-group">
                                <label for="name">COMPANY NAME:</label>
                                <input type="text" name="name" class="form-control" required>
                            </div> 

                            <div class="form-group">
                                <label for="email">EMAIL:</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="phno">MOBILE NO:</label>
                                <input type="text" name="phoneno" class="form-control" id="num1" required>
                            </div>

                            <div class="form-group">
                                <label for="loc">LOCATION:</label>
                                <input type="text" name="loc" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="pass">PASSWORD:</label>
                                <input type="password" name="pass" class="form-control" id="pass" required>
                            </div>

                            <div class="form-group">
                                <label for="confpass">PASSWORD:</label>
                                <input type="password" name="confpass" class="form-control" id="conf" required>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12" style="text-align: center">
                                <button  type="submit" class="btn btn-success" value="SignUp" style="width:40%;height:5%">SIGNUP</button>
                            </div>
                        </div>

                    </form>
                </div>
        </div>

    </body>
</html>
