<%-- 
    Document   : comp_image
    Created on : 29 Mar, 2019, 9:53:29 PM
    Author     : My Lappy
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
            
               
                 document.f1.action="image_company?pn1="+a1;  
            }
      </script>
    
    </head>
    <body>
        <% HttpSession hs=request.getSession();%>
      
       <form name="f1" enctype="multipart/form-data"  method="post">
           <%!String email="";%>
            <%String email = (String)hs.getAttribute("company_email"); %>
           
            <input type="text" value="<%=email%>"  name="t1">
           <p>Image<input type="file" name="i" required><br></p>
           <p><input type="submit" onclick="demo()"></p>
       
        </form>
    </body>
      
</html>

