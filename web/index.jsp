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

<body >

        <!-- NAVBAR & BACKGROUND IMAGE-->
        <section>
                <%@include file = "test.jsp"%>
        </section>


        <!--ABOUT-->
        <section style="margin-top:10px">
                    <%@include file = "about.jsp"%>
        </section>

        <%--logo crousel->
        <section style="margin-top:10px">
                    <%@include file = "logocrousel.jsp"%>
        </section>--%>

        <!--GALLERY-->
        <section style="margin-top:10px">
                    <%@include file = "gallery.jsp"%>
        </section>

        <!--FOOTER-->
         <section>
                    <%@include file = "footer.jsp"%>
         </section>

    </body>
</html>
