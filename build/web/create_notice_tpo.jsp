<%-- 
    Document   : create_notice
    Created on : Apr 5, 2019, 6:45:10 PM
    Author     : Divjot
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Create Notice</title>
        <style>
            body{
                background-color: #ffffff;
            }

             .msg{
                 align-items: center;
                 border: 2px solid #2F4F4F;;
                 background-color: #ddd;
                 color:#333333;
                     border-radius:5px;
                     padding: 10px;
                    width: 60%;
                    float:right;
                     opacity: 0.9;
                     filter: alpha(opacity=50); 
                    margin-bottom:10px;
                    
                }   
                .reply{
                    align-items: center;
                    text-align: center;
                    border: 2px solid #2F4F4F;
                    background-color: 	#E9967A;
                     color: #333333;
                     border-radius:5px;
                     padding: 10px;
                        
                      width :100%;
                    opacity: 0.9;
                    filter: alpha(opacity=50); 
                   margin-bottom:10px;
                }  
                .adminr{
                text-align: right;
                color: #333333;
            }
            .userr{
                text-align: center;
                color: #333333;
            }
             
                .msgbox{
                    align-items:   center;
                    width: 100%
                    
                }
                 .form-submit-button {

                    background: #333333;
                    border-color: #333333;
                    color: #ffffff;

                    float:right;
                    height: 40px;

                    width: 150px;

                    font: bold 15px arial, sans-serif;
                    }
            textarea{
                  width: 100%;
                  height: 250px;
                   padding: 12px 20px;
                   box-sizing: border-box;
                  border: 2px solid #2F4F4F;
                   border-radius: 10px;
                   background-color: #f8f8f8;
                   font-size: 16px;
                   resize: none;
            }  
            .time-right{
                color: #696969;
                
                
                
            }
           .topics{
                    color: #333333;
                        text-align:left;
                        text-transform: capitalize;
                }
                .line1{
                    border-color: #A9A9A9;
                }
                    .subject{
                                          width: 100%;
                
                   padding: 12px 20px;
                   box-sizing: border-box;
                  border: 2px solid #2F4F4F;
                   border-radius: 10px;
                   background-color: #f8f8f8;
                   font-size: 16px;
                   resize: none;
                    }    
                    .container{
                        align-content: center;
                        
                    }
        </style>        
    </head>
    <body>
               
     
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        <div class="container">
        <section>
                       <h2 class="topics" ><i class="far fa-paper-plane "></i> New Notice</h2>
                 <hr class="line1">
                 <br>
                 <br>
                                 <form action="post_notice_tpo.jsp">
                     <label>Subject</label></h4>
                  <input type="text" name="subject" class="subject" placeholder="subject...">
                  <br>
                  <br>
                    <textarea name="message"  placeholder="Add a reply..." required></textarea>
                    <br>
                    <br>
                    <input type="submit" class=form-submit-button value="Post Notice">
                </form>  
                <br><br>
                <br><br>
            </section>
            </div>
    </body>
</html>
