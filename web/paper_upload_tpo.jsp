<%-- 
    Document   : tpo_paper_uploaad
    Created on : 9 Apr, 2019, 11:09:57 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PAPER UPLOAD</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
            /* cfoley.net */
            html,body {
                height: 100%;
                overflow: hidden;
            }
            body {

                background: #00c6ff;
                background-size: cover;
                margin: 0;
                padding: 0;
                font-family: Verdana, sans-serif;
                position: relative;
            }


            form {
                position: absolute;
                top: 50%;
                left:40%;
                margin: -105px 0 0 -150px;
                padding: 10px 20px;
                width: 400px;
                height: 250px;
                background: #E9E8E2;
                border-radius: 5px;
                box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2) inset, 0 0 3px 1px rgba(255, 255, 255, 0.2) inset, 0px 1px 2px 0px rgba(0, 0, 0, 0.7);
                border: 1px solid rgba(0, 0, 0, 0.8);

            }


            .input:focus {
                outline: none;
                box-shadow: 0 0 3px 2px rgba(255,255,255,0.4);
                text-align: center;
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
            .form-actions {
                margin: 0;
                background-color: transparent;
                text-align: center;
            }
            .center { 
                margin: 0 auto !important; /* I have added the !important attribute just for debugging, you can remove it. */ 
            }

        </style>
        <script>
            function demo()
            {
                a1 = document.f1.t1.value;
                document.f1.action = "paper_tpo?pn1=" + a1;
            }
        </script>

    </head>
    <body>

        <form name="f1" enctype="multipart/form-data" method="post">   
            <div class="form-group text-center">
                <div class="input-group" style="margin:auto;">
                    <input type="text" class="text-center" Placeholder="txt"  name="t1"><br>
                </div>
            </div>
            <h4 style="text-align: center">Paper</h4>

            <input type="file"  name="i" required><br>

            <div class="form-actions">
                <input type="submit" value="Submit" class="btn btn-primary" onclick="demo()">
            </div>
        </form>
    </body>

</html>

