<%-- 
    Document   : view_notice
    Created on : Apr 5, 2019, 10:57:03 PM
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

        <title>Show Notice</title>
        <style>
            body{
                background-color: #ffffff;
            }


 
            section{
                margin-top: 10px;
              
            
            }
            
  
                .notices{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                   
                    
                   <%-- border: 2px solid #2F4F4F;--%>
                    background-color: 	#008B8B;
                     color: #333333;
                     border-radius:2px;
                     padding: 10px;
                        
                      width :80%;
                    opacity: 1;
                    filter: alpha(opacity=50); 
                   margin-bottom:10px;
                   
                }  
                    .notices:hover{
                    
                        background-color:#008080;
                        
                    }
                 
 
                    
                .adminr{
                text-align: right;
                color: #333333;
            }
            .userr{
                text-align: left;
                color: #333333;
            }
             
                .msgbox{
                    
                    align-items:   center;
                    width: 100%
                    
                }
                .container-center{
                                        display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
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
               text-align:right;
                
                
            }
           .topics{
                    color: #333333;
                        text-align:center;
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

                    .create_notice{
                        text-align: right;
                        padding-right:50px;
                        color: #008080;
                        font-size: 130%;
                    }
                    .create_notice:hover{
                        opacity: 0.9;
                    }
                    .notice_sub{
                        text-align:center;
                    }
        </style>        
    </head>
    <body>
                


 
        <!--Start of Navbar Section-->
        <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->
        <div class="container">
       <section> 
        
        <%@include file = "display_notice.jsp"%>
       </section>
       </div>
    </body>
</html>