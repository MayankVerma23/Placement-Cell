
<%-- 
    Document   : contactf_stud.jsp
    Created on : Mar 31, 2019, 2:02:41 PM
    Author     : Divjot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Home Student</title>
        
        <style>
            .navbar{
            background-color: #4379C0;
            border-color: #4353C0;
           
            }
            .nav_links{
                color:white;
            }
            .nav_links:hover{
                color: black;
            }  
            section{
                margin-top: 10px;
               
            }
            textarea{
                  width: 100%;
                  height: 150px;
                   padding: 12px 20px;
                   box-sizing: border-box;
                   border: 2px solid #ccc;
                   border-radius: 10px;
                   background-color: #f8f8f8;
                   font-size: 16px;
                   resize: none;
            }            
             h4{
                   color: #008B8B;
                   font-size: 1.5em;
                   font-weight: bold;
                   font-family: Arial, Helvetica, sans-serif;
               }
            
            h1{
                color:#6495ED;
                font-weight: bold;
            }
                           .form-submit-button {

                    background: #4379C0;

                    color: white;

                    border-style: outset;

                    border-color: #4379C0;

                    height: 50px;

                    width: 100px;

                    font: bold 15px arial, sans-serif;
                    }
                    .subject{
                                          width: 100%;
                
                   padding: 12px 20px;
                   box-sizing: border-box;
                   border: 2px solid #ccc;
                   border-radius: 10px;
                   background-color: #f8f8f8;
                   font-size: 16px;
                   resize: none;
                    }
            
        </style>
    </head>
    
    <body>
         <%@include file = "database_connection.jsp"%>  
    
    <div class="container">
        
        <!--TOP LOGOS--> 
        <section>
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="#"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
        </section> 
        
        <!--SLIDING TEXT-->    
        <section> 
                <%@include file = "sliding_text.jsp"%>
        </section> 

        <!--NAVBAR-->
        <section> 
            <nav class="navbar">
                <ul class="nav navbar-nav">
                       <li><a href="profile_company.jsp" class="nav_links">Complete Info</a></li>
                        <li><a href="placement_company.jsp" class="nav_links">Placement Info</a></li>
                        <li><a href="changepassword_company.jsp" class="nav_links">Change Password</a></li>
                         <li><a href="contactf_company.jsp" class="nav_links"><i class="fas fa-cog"></i>Support</a></li>
                         <li><a href="company_inbox.jsp" class="nav_links"><i class="fas fa-envelope"></i>inbox</a></li>

                </ul>
            </nav>
        </section> 

    </div>
        
        <br>
         <%!String roll =""; %>

       <div class="container"> 
       <secton>
               <i class="fas fa-cogs fa-5x" style="color:84868D" ></i>
               <%--<h1>Contact us</h1>--%>
                       <br><br>
                <form action="send_reply_company.jsp">
              <h4>
                    <label>Subject</label></h4>
                  <input type="text" name="subject" class="subject" placeholder="subject...">
                    <br>
                    <br>
                    <h4>
                    <label>Please Describe your Issue</label>
                    </h4>
                     <br>
                   
                    <textarea name="issue"  placeholder="...." ></textarea>
                    </br>
                    <input type="submit" class=form-submit-button value="submit">
                </form>
              
       </secton>   
       </div>
        
        
    </body>
</html>

