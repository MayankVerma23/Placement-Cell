<%-- 
    Document   : index
    Created on : 7 Mar, 2019, 11:24:54 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="icon.png" type="image/png" sizes="16x16">
        <title>Home Page</title>      
    </head>

<body>

        <!-- NAVBAR & BACKGROUND IMAGE-->
        <section>
                <%@include file = "test.jsp"%>
        </section>

        <!--ABOUT-->
        <section style="margin-top:10px">
                <%@include file = "about.jsp"%>
        </section>

        <!--FOOTER-->
        <section>
                <%@include file = "footer_index.jsp"%>
        </section>

    </body>
</html>
