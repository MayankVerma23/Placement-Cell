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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Home company</title>
    
        <style>
           body
            {
               background:url("")center;
               height:100vh;
               background-size:cover;
                }
                .menudropdown1{
                   
                     width:1000px;
                     height:100px;
                  margin:0px auto;
                    
                }
                .menudropdown1 ul{
                  padding:0px;  
                }
                
                .menudropdown1 ul li{
                
                 float:left;
                 background-color:black;
                 color:white;
                 width:200px;
                 list-style:none;
                 height:50px;
                 line-height:50px;
                 font-size:12px;
                 list-style:none;
                 text-align:center;
                 opacity:0.6;
                 
                    
                }
                .menudropdown1 ul li ul{
                    display:none;
                   
                }
                .menudropdown1 ul li:hover > ul{
                   display:block; 
                }
                .menudropdown1 ul li:hover {
                    background-color:#32CD32;
                    opacity:0.9;
                }   
                .menudropdown1 ul li ul li {
                    position:relative;
                }
                .menudropdown1 ul li ul li ul{
                    position:absolute;
                    left:200px;
                    top:0px;
                } 
                #b1
                {
                  width:200px;
                  height:50px;
                  background-color:black;
                  border:black;
                  margin:0px auto;
                    
                }
                #b1:hover{
                 background-color:#32CD32;
                    opacity:0.9;

                }
            
        </style>
        <script>
            function changepassword()
                {
                   
      window.open('changepassword_company.jsp','popUpWindow','height=500,width=600,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
         
              }
        </script>
  
        
    </head>

    
 <body>
        <%@include file = "database_connection.jsp"%>  
        
        
        <div class="container">
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="logout"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
            
<section> 
        <%@include file = "sliding_text.jsp"%>
</section> 
<section>
    
     <div class="menudropdown1">
           <ul>
               
                    
                 
      <li><a href="profile_company.jsp" class="nav_links">COMPANY PROFILE</a></li>
                   
                     
        <li><a href="company_response.jsp" class="nav_links">STATUS</a></li> 
                   
                 
                 <li>STUDENT SECTION
                                 <ul>
   <li><a href="interested_stu_in_comp.jsp" class="nav_links">Participated Candidates</a></li>
    <li><a href="company_decl_res.jsp" class="nav_links">declare result</a></li>
    <li><a href="selected_candidates.jsp" class="nav_links">selected candidates</a></li>
   
                                 </ul>
                         </li>
                   
                         <li><button id="b1" onclick="changepassword()">Change Password</button></li>
              
   <li></li>
                           
                     
                
                   
                        
                   
           </ul>
</div>

</section>
        </div>
    </body>


      
        
  
  
</html>
