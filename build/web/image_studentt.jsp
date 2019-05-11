<%-- 
    Document   : image
    Created on : 27 Mar, 2019, 8:51:23 AM
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
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script>
            function demo()
            {
                a1 = document.f1.t1.value;


                document.f1.action = "image_student?pn1=" + a1;
            }
        </script>
        <style>
            /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
            /* cfoley.net */
            html,body {
                height: 100%;
                overflow: hidden;
            }
            body {
                color: #333;
                background: rgb(0, 255, 255);
                background-size: cover;
                margin: 0;
                padding: 0;
                font-family: Verdana, sans-serif;
                position: relative;
            }
            .darken {
                background-image: -webkit-radial-gradient(center,transparent,rgba(0, 0, 0, 0.8));
                background-size: cover;
                height: 100%;
                width: 100%;
                position: absolute;
                top: 0;
                right: 0;
                margin: 0;
                padding: 0;
            }
            .noise {
                z-index: 1;
            }
            .noise:before,.body-noise:before {
                content: "";
                position: absolute;
                z-index: -1;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                -webkit-background-size: 3px 3px;
                -moz-background-size: 3px 3px;
                background-size: 3px 3px;
                background-position: 0 0, 1px 1px;
                background-image: linear-gradient(45deg, rgba(0,0,0,0.05) 25%, transparent 25%, transparent 75%, rgba(0,0,0,0.05) 75%, rgba(0,0,0,0.05)), linear-gradient(45deg, rgba(0,0,0,0.05) 25%, transparent 25%, transparent 75%, rgba(0,0,0,0.05) 75%, rgba(0,0,0,0.05));
            }
            form {
                position: absolute;
                top: 30%;
                left:40%;

                margin: -105px 0 0 -150px;
                padding: 10px 20px;
                width: 400px;
                height: 350px;
                background: rgba(0, 0, 0, 0.7);
                border-radius: 5px;
                box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2) inset, 0 0 3px 1px rgba(255, 255, 255, 0.2) inset, 0px 1px 2px 0px rgba(0, 0, 0, 0.7);
                border: 1px solid rgba(0, 0, 0, 0.8);

            }
            .input {
                display: block;
                margin: 20px auto;
                height: 80px;
                width: 100%;
                border: 1px solid black;
                border-radius: 5px;
                background: rgba(0, 0, 0, 0.26);
                font-size: 1.25em;
                font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
                padding: 5px 10px;
                box-shadow: 0 0 3px 1px rgba(255, 255, 255, 0.15), 0 -1px 1px rgba(255, 255, 255, 0.1), 0 0 3px 1px rgba(0, 0, 0, 0.2) inset;
                color: rgba(255, 255, 255, 0.79);
                box-sizing: border-box;
                text-shadow: 0 1px 1px rgb(0, 0, 0);
            }
            .input:focus {
                outline: none;
                box-shadow: 0 0 3px 2px rgba(255,255,255,0.4);
            }
            .submit {
                height: 50px;
                width: 100%;
                box-shadow: none;
                background: linear-gradient(top, rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.15));
                border: 1px solid rgba(0, 0, 0, 0.7);
                box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2) inset, 0 0 3px 1px rgba(255, 255, 255, 0.15) inset, 0 1px 1px rgba(0, 0, 0, 0.2);
                text-shadow: 1px -1px 1px rgba(0, 0, 0, 0.5);
                color: #ffffff;
                letter-spacing: 1px;
                cursor: pointer;
            }
            .submit:hover {
                background: linear-gradient(top, rgba(255, 255, 255, 0.4), rgba(255, 255, 255, 0.15));
            }
            .submit:active {
                background: linear-gradient(top, rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.1));
            }
        </style>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/index.js"></script>
    </head>
    <body>
      
        <% HttpSession hs = request.getSession();%>
        <div class="darken">
            <div class="noise">
                <!-- form is not functional -->
                <form name="f1" enctype="multipart/form-data"  method="post">
                    <%!String roll = "";%>
                    <%
                        String roll = (String) hs.getAttribute("stu_roll");
                    %> 
                    <!-- <label></label>-->
                    <input type="text" class="input top" value="<%=roll%>"  name="t1" readonly="">
                    <input type="file" class="input top" name="i" required><br>
                    <input type="submit" class="input submit" value="Submit" onclick="demo()">
                </form>
            </div>
        </div>
    </body>

</html>
