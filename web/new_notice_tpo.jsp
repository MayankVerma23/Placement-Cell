<%-- 
    Document   : post_updates
    Created on : Apr 4, 2019, 9:04:42 PM
    Author     : Divjot
--%>



<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Messages</title>
        <style>
            body{
                background-color: #ffffff;
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
        </style>
    
    </head>
    <body>
               <%@include file = "database_connection.jsp"%>  
        
        <!--Start of Navbar Section-->
            <%@include file = "header_tpo.jsp"%>
        <!--End of Navbar Section-->
        <div class="container">
       
        <%! String sub="";
            String message="";
            String time="";
            int sno;
        %>
       
        <section>   
            <h2 class="topics" ><i class="far fa-clipboard"></i> Your Notices</h2>
            <hr class="line1">
            <a href="create_notice_tpo.jsp"><h5 class="create_notice"><i class="far fa-edit"></i>New Notice</h5></a> 
            <br><br><br>
        <% String t;
           SimpleDateFormat sdf=new SimpleDateFormat(" mm dd yyyy ");
           
          Calendar cal=Calendar.getInstance();
           Date date;
           
           int d;
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select * from notices order by sno DESC";
        int i=0;
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {
             
            sub=rs.getString("subject");
            message=rs.getString("message");
            date=rs.getDate("date");
            time=rs.getString("date");
            sno=rs.getInt("sno");
          
           
            
                 %>
             
              
                 <a href="view_notices_tpo.jsp?id=<%=sno%>">
                  <div class="msgbox">
                <div class="container-center" >
                    <div class="notices">
                <h4 class="userr"><i class="far fa-file-alt"></i></i>  <%=sub%></h4><h6> <span class="time-right"><%=time%></span></h6>
                     
                 </div>
                  </div>
              </div>
                </a>
             <%
                }

                %>
                     <%
            }
            
 
             catch(Exception ex)
             {
                 out.print(ex);
             }
         
            %>
           
        <section>
            </div>
    </body>
</html>