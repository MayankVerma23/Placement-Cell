<%-- 
    Document   : navbar
    Created on : 19 Mar, 2019, 5:30:17 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Navbar</title>
        
        <style>
            .navbar{
                height: 65px;
                padding-top: 6px;
            }
            </style>
    </head>
    <body>
        
      <div class="navbar navbar-inverse navbar-fixed-top" data-offset-top="400" data-spy="affix">
   
        <div class="container">
     
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp" style="color:#FEC901;font-size: 25px">PLACEMENT CELL</a>
                    <a class="navbar-toggle" data-target=".navbar-collapse" data-toggle="collapse">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>
                
            <div class="navbar-collapse collapse">

                <ul class="nav navbar-right navbar-nav">
                    <li><a href="index.jsp" style="color:white;font-size: 25px">Home</a></li>
                    <li><a href="#" style="color:white;font-size: 25px">About</a></li>
                    <li><a href="#" style="color:white;font-size: 25px">Contact Us</a></li>
                </ul>
            </div>		
        </div>
      </div>
<!-- /.navbar -->
    </body>
</html>
