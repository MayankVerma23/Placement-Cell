<%-- 
    Document   : abouttpo
    Created on : 17 Mar, 2019, 2:20:29 PM
    Author     : HP
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
        <title>INDEX NAVBAR</title>

        <style>
            
            #s1{
                margin-top:100px;
                
            }

            .box1{
                height: 40vh;
                width: 100%;
                background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(background_images/image1.jpg);
                background-size: cover;
                background-position: center;
                display: table;
                background-attachment: fixed;
                color:white;
            }
            .box2{
                height: 100vh;
                width: 100%;

                background-size: cover;
                background-position: center;
                display: table;
                background-attachment: fixed;
            }
            .box3{
                height: 40vh;
                width: 100%;
                background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(image1.jpg);
                background-size: cover;
                background-position: center;
                display: table;
                background-attachment: fixed;
                color: #fff;
                display: flex;
                align-items: center;
                padding-left: 70px;
            }
            @media(min-width:900px)
            {
                .box3{
                    padding-left: 30vw;
                }
            }
            .haa{
                font-family: sans-serif;
                font-size: 48px;
                color: #fff;
                margin: 0px;
                text-align: center;
            }

            body, html {
                height: 100%;
                margin: 0;
                font-family: Arimo;
            }

            .content{
                max-width: 1100px;
                display: flex;
                margin: 0 auto;
                padding: 0 50px 50px;
                flex-direction: column;

            }

            .content p{
                font-size: 18px;
                opacity: 0.9;
            }
            .content h4{
                color: black;
                font-size: 25px;
                font-weight: 700;
            }
            table, td, th {
                border: 1px solid white;
            }

            table {
                border-collapse: collapse;
                width: 100%;
            }

            th {
                margin-left: 10px;
                color:white;
                background-color: #CD5C5C;
                height: 50px;
            }

            .companies {

                background-image:linear-gradient(to bottom, rgba(245, 246, 252, 0.52), rgba(117, 19, 93, 0.73)),url('background_images/cse.png');
                width: 80%;
                height: 400px;
                background-size: cover;
            }
            table{
                font-size: 15px;
            }
            table th,td{

                padding:10px;
            }
            table td{
                padding: 10px;
            }
            table tr:hover{
                background-color: #E9967A;
            }
            .box1{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .box1 h1{
                font-size: 60px;
            }
            .box3 p{
                font-size: 40px;
            }
        </style>

    </head>
    <body>
        <section>
             <%@include file = "index_navbar.jsp"%>
        </section>
        <section>
         <div class="box1">
            <h1>PLACEMENT RECORD</h1>
        </div>
        </section>
        
        <section id="s1">
    
       <h1 style="margin-top: 50px;" ><b>Placement Data</b></h1>
                <table style="margin-top: 50px;">
                    <tr>
                        <th></th>
                        <th colspan="2" >All Branches(including Off-Campus)</th>
                        <th >Total</th>
                    </tr>
                    <tr style="font-weight:700;">
                        <td>Academic Year</td>
                        <td>Companies Visited</td>
                        <td>Total Offers</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>2013-2014</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>2014-2014</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>
                    </tr>
                    <tr>
                        <td>2015-2016</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                    <tr>
                        <td>2016-2017</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                    <tr>
                        <td>2017-2018</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                    <tr>
                        <td>2018-2019*</td>
                        <td>400</td>
                        <td>1200</td>
                        <td>1000</td>

                    </tr>
                </table>
                <br>              
                <br> 
             
         
        <div class="box3" >
            <p class>Over 1000! offers<br>300+ companies<br>6.4 Lpa avg package<p>
        </div>

</section>
        <section>
            <%@include file = "footer-tpo.jsp"%> 
        </section>
    </body>
</html>