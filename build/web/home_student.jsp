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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>Home Tpo</title>
    
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
                   
      window.open('changepassword_student.jsp','popUpWindow','height=500,width=600,left=100,top=100,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
         
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
               
                    
                 
      <li><a href="profile_student.jsp">MY PROFILE</a></li>
                   
                     
     <li><a href="contactf_stud.jsp" class="nav_links"><i class="fas fa-cog"></i>Contact Form</a></li>                      
                         
                   
                 
                 <li>COMPANY SECTION
                                 <ul>
      <li><a href="placement_student.jsp" class="nav_links">Upcoming Compnies</a></li>
        <li><a href="company_responsetable.jsp">Company Requirments</a></li>
  <li><a href="apply_job.jsp" class="nav_links">Apply in company</a></li>
  <li><a href="student_result.jsp" class="nav_links">companies result</a></li>
                    
                                 </ul>
                         </li>
                   
                
   <li><a href="student_inbox.jsp"><i class="fas fa-envelope"></i>Message</a></li>
   <li><button id="b1" onclick="changepassword()">Change Password</button></li>
                          
                     
                
                   
                        
                   
           </ul>
</div>

</section>
        </div>
    </body>
</html>
