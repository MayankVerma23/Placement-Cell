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
        <meta charset="UTF-8">
        <title>Registration Company</title>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>

            <script>

            function checkpassword1()
            {
                password = document.getElementById("comp_pass").value;
                lengthh = document.getElementById("comp_pass").value.length;
                var a = document.getElementById("compy_phoneno").value;
                var comp_name = document.getElementById("comp_name").value;
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

                if (!comp_name.match(/^[A-Za-z. ]+$/)) {
                    alert("Name Fill Only With Alphabate");
                    return false;
                }
                else if (a.length < 10) {
                    alert("Phoneno Must be 10 digit");
                    return false;
                } else if (a.length > 10) {
                    alert("Phoneno Must be 10 digit");
                    return false;
                } else if ((a.charAt(0) != 9) && (a.charAt(0) != 8) && (a.charAt(0) != 7) && (a.charAt(0) != 6)) {
                    alert("Phone Number must start with 9,8,7 and 6");
                    return false;
                } else if (lengthh < 8)
                {
                    alert("Your Password Must Be At Least 8 Characters Long.");
                    return false;
                } else if (flag_number === 0)
                {
                    alert(Your Password Must Contain At Least One Digit .");
                    return false;
                } else if (flag_lowercase === 0)
                {
                    alert("Your Password Must Contain At Least a Letter In LOWER CASE .");
                    return false;
                } else if (flag_upercase === 0)
                {
                    alert(Your Password Must Contain At Least a Letter In UPER CASE .");
                    return false;
                } else
                {
                    var a = (document.getElementById("comp_pass").value);
                    var b = (document.getElementById("comp_confpass").value);
                    if (a !== b) {
                        alert("pass not match");
                        return false;
                    } else {
                       
                        return true;
                    }
                }
            }
        </script>
        
    </head>

    <body>

            <section class="container" style="background-color:#ffffff4a;padding:20px !important;border:2px solid black">
                <div class="row" >
                    <div class="col-md-12">
                        <h1 style="text-align: center;color:black">COMPANY SIGNUP</h1>
                    </div>
                </div>

                <div class="row">

                    <form action="companysignup" method="post" onsubmit="return checkpassword1()" style="color: black;" >

                        <div class="col-md-12">  

                            <div class="form-group">
                                <label for="comp_name">COMPANY NAME:</label>
                                <input type="text" name="comp_name" class="form-control" id="comp_name" required>
                            </div> 

                            <div class="form-group">
                                <label for="comp_email">EMAIL:</label>
                                <input type="email" name="comp_email" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="compy_phoneno">MOBILE NO:</label>
                                <input type="text" name="compy_phoneno" class="form-control" id="compy_phoneno" required>
                            </div>

                            <div class="form-group">
                                <label for="comp_loc">LOCATION:</label>
                                <input type="text" name="comp_loc" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="comp_pass">PASSWORD:</label>
                                <input type="password" name="comp_pass" class="form-control" id="comp_pass" required>
                            </div>

                            <div class="form-group">
                                <label for="comp_confpass">CONFIRM PASSWORD:</label>
                                <input type="password" name="comp_confpass" class="form-control" id="comp_confpass" required>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12" style="text-align: center">
                                <button  type="submit" class="btn btn-success" value="SignUp" style="width:40%;height:5%">SIGNUP</button>
                            </div>
                        </div>

                    </form>
                </div>
            </section>
    </body>
</html>
