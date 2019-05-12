<%-- 
    Document   : home_company
    Created on : 19 Mar, 2019, 1:05:51 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>HOME COMPANY</title>
        <style>

           .box
            {
                margin: 10px;
                height:600px;
                width:400px;
                box-sizing:border-box;
                border-radius:10px;
                border: 1px solid black;
                background-color: #add8e682;
                color:white;
                font-size:20px;
            }
            #d2{
                width:100%;


            }       
            .topics{
                color: #333333;
                text-align:center;
                text-transform: capitalize;
            }
            .line1{
                border-color: #A9A9A9;
            }
            
             #notice1{
              float:right;  
            }
            
            #d1{
               float:left;
               margin-left:120px;
               margin-top:-40px;
               margin-bottom:30px;
              
                
            }
        </style>
        <script>
            function message(x) {
                window.open('notice_message.jsp?id=' + x, 'popUpWindow', 'height=400,width=600,left=450,top=200,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no, status=yes');
            }
        </script>
    </head>

    <body>
        <section>
        <!--Start of Navbar Section-->
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->
    </section>

         
         
        
        
           <section class="container" style="min-width:100%;">
            <div id="notice1">
            <%@include file = "notice_company.jsp"%>
            </div>
            <div id="d1">
            <%@include file = "comp_ex.jsp"%>
            </div>
        </section>
            
            
            
            
        
       

        <!--Start of Footer Section-->
        <section>
            <%@include file = "footer-company.jsp"%>
        </section>
        <!--End of Footer Section--> 


    </body>
</html>
