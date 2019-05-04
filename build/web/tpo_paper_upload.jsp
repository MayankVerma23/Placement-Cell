<%-- 
    Document   : tpo_paper_uploaad
    Created on : 9 Apr, 2019, 11:09:57 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- <script>
            function demo()
            {
                a1=document.f1.t1.value;
            
               
                 document.f1.action="image_student?pn1="+a1;  
            }
      </script>-->
    
    </head>
    <body>
      
       <form name="f1" enctype="multipart/form-data" action="image_tpo" method="post">
          
           
          <!--  <input type="text" value="ghcjg"  name="t1">-->
            <p>Image<input type="file" name="i" required><br></p>
            <p><input type="submit" value="Submit"></p>
       
        </form>
    </body>
      
</html>

