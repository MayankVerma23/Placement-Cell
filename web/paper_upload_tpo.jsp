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



            form {
                text-align: center;
                margin: 0 auto;
                width: 410px;
                height: 260px;
                background: #E9E8E2;
                border-radius: 5px;
                box-shadow: 0 1px 1px rgba(255, 255, 255, 0.2) inset, 0 0 3px 1px rgba(255, 255, 255, 0.2) inset, 0px 1px 2px 0px rgba(0, 0, 0, 0.7);
                border: 1px solid rgba(0, 0, 0, 0.8);

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
        <section>
            <%@include file = "header_tpo.jsp"%>
        </section>

        <section style="min-height: 400px">
            <form name="f1" enctype="multipart/form-data" method="post" >   

                <h3 style="text-align: center">UPLOAD PAPER</h3>
                <div class="form-group text-center">
                    <div class="input-group" style="margin:auto;">
                        <input type="text" class="text-center" Placeholder="txt"  name="t1"><br>
                    </div>
                </div>

                <input style="margin-left: 30%" type="file"  name="i" required>&nbsp;.


                <div class="form-actions"  style="text-align: center">
                    <button type="submit" class="btn btn-primary" onclick="demo()" >SUBMIT</button>
                </div>
            </form>
        </section> 

        <section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>
    </body>

</html>

