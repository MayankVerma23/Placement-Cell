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
       <script>
            function demo()
            {
                a1=document.f1.t1.value;
              
               
                 document.f1.action="paper_tpo?pn1="+a1;  
            }
      </script>
    
    </head>
    <body>
      
       <form name="f1" enctype="multipart/form-data" method="post">
          
           
           <input type="text" Placeholder="name"  name="t1"><br><br>
              <p>Paper<input type="file" name="i" required><br></p>
            <p><input type="submit" value="Submit" onclick="demo()"></p>
       
        </form>
    </body>
      
</html>

