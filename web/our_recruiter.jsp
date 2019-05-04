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
 <title id="title"></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">  
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>about</title>
   
     <script>    
$(document).ready(function(){
  $("#div1").mouseenter(function(){
    $("#pic").slideDown(2000);
  });
});


$(document).ready(function(){
  $("#div2").mouseenter(function(){
    $("#pic2").slideDown(2000);
  });
});
</script>
<style> 
#first, #pic,#div1,#div2,#pic2{
  padding: 5px;
  text-align: center;
  background-color: #e5eecc;
  border: solid 1px #c3c3c3;
}
#second {
 
  display: none;
}
#pic{
 
  display: none;
}
#pic2{
 
  display: none;
}
 .text{    
                font-family: "Times New Roman", Times, serif;
                font-size: 24px;
       }
            
            </style>
        
    </head>
    <body>
        <section>
            
      
<nav class="navbar navbar-inverse" style="margin-bottom:0px;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <span class="active"> <a class="navbar-brand " href="#">PLACEMENT PORTAL</a></span>>
    </div>
    <div class="collapse navbar-collapse navbar-right" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        
        <li><a href="aboutus.jsp">ABOUT</a></li>
        <li><a href="#">CONTACT US</a></li>
      </ul>
      
    </div>
  </div>
</nav>  
        </section>
        
        
        <section>
<pre>
<div id="first">
<p class="text"><b><u>Department of Training & Placement:</u><b></p>
            <p class="text">   our Placement Office  is well-equipped with the latest technologies and world-class state-of-the-art Infrastructure for pre-placement 
   talks, seminars, workshops, counselling, meetings; group discussions, and personal interviews. The placement department works diligently
   towards providing students with genuine opportunities to give their career a kick-start. The Placement Office is managed by of a team of
   committed professionals, some of whom have seen 8 cycles of placement.</p></div>

<div id="div1" class="text"><b><u><h1>Our CSE Recruiters </h1></u></b></div>
<div>
    
<div id="pic"><img src="background_images/cse.png" width="1500"></div>
</div>
<div id="div2" class="text"><b><u><h1>Our other field Recruiters </h1></u></b></div>
<div id="pic2"><img src="background_images/other.jpg" width="1500"></div>
</section>
        
        
        <section>
            
            <%@include file="footer.jsp" %>
        </section>
    </body>
</html>