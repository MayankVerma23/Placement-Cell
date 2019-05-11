<%-- 
    Document   : home_student
    Created on : 19 Mar, 2019, 12:56:36 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     

        <title>HOME STUDENT</title>
        <style>
            
            #notice1{
              float:right;  
            }
            
            #d1{
               float:left;
               margin-left:120px;
               margin-top:15px;
                
            }
            </style>

    </head>

    <body>

        <section>
            <%@include file = "header_student.jsp"%>
        </section>
        
         
        <section class="container" style="min-width:100%;">
            <div id="notice1">
            <%@include file = "notice_student.jsp"%>
            </div>
            <div id="d1">
            <%@include file = "stu_ex.jsp"%>
            </div>
        </section>
            
            
   
    
        <section>
            <%@include file = "footer-student.jsp"%>
        </section>

    </body>


    
</html>

