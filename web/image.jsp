<%-- 
    Document   : image
    Created on : 27 Mar, 2019, 8:51:23 AM
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
            
               
                 document.f1.action="image?pn1="+a1;  
            }
      </script>
    
    </head>
    <body>
      
       <form name="f1" enctype="multipart/form-data"  method="post">
           <%!String roll="";%>
            <%String roll = (String)request.getAttribute("roll"); %>
           
            <input type="text" value="<%=roll%>"  name="t1">
           <p>Image<input type="file" name="i"><br></p>
           <p><input type="submit" onclick="demo()"></p>
       
        </form>
    </body>
      
</html>
