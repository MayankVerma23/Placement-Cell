<%-- 
    Document   : sliding text
    Created on : 16 Mar, 2019, 12:42:45 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
  <style>
div.slide-left {
  width:100%;
  overflow: hidden;
  background-color: #FFCA83;
}
div.slide-left p {
  animation: slide-left 30s;
}
p{
    font-size: 20px;
    padding-top: 10px; 
}

@keyframes slide-left {
  from {
    margin-left: 100%;
    width: 300%; 
  }

  to {
    margin-left: -60%;
    width: 100%;
  }
}
</style>
    <body>
<div class="slide-left">
<p >Never fight an inanimate object.</p>
</div>



    </body>
</html>
