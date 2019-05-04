<%-- 
    Document   : Queries
    Created on : Mar 29, 2019, 11:14:34 PM
    Author     : Divjot
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
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
            table
            {
                width : 100%;
            }
            
            td
            {
                
                padding : 20px;
                width : 100px;
                height : 50px;
            }
                
            th
            {
                background-color: #4CAF50;
                color: white;
                text-align: left;
            }

            section{
                margin-top: 10px;
              
          
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
                    border: 2px solid #2F4F4F;
                    background-color: 	#E9967A;
                     color: #333333;
                     border-radius:5px;
                     padding: 10px;
                   width:60%;  
                   float: left;
                    opacity: 0.9;
                    filter: alpha(opacity=50); 
                   margin-bottom:10px;
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
                   border: 2px solid #ccc;
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
                .issueres{
                    text-align: center;
                }  
                .para{
                    font-size:150%;
                }                
        </style>
    
    </head>
    <body>
              
              <%
                  
                           try{
                               Statement stmt=conn.createStatement();
                               String x3="Update queries set seen='1' where ID='"+id+"'";
                              stmt.executeUpdate(x3);
                           }
                           catch(Exception ex){

                               out.print(ex);
               }
              %>
        <!--Start of Navbar Section-->
        
        <%@include file = "header_company.jsp"%>
        <!--End of Navbar Section-->   
        <div class="container">

        <%! String name="";
            String email="";
            String subject=""; 
            String id="";
            String design="";
            String message="";
            String author="";
            String time="";
            int statuskey;
        %>
       
         <section>     
        
        <%
            HttpSession hs = request.getSession();
            name=hs.getAttribute("company_name").toString();
            email=hs.getAttribute("company_email").toString();
           %> 
      <%
          id=request.getParameter("id");
     
          
          
             try{ 
           String stud="student";
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=conn.createStatement();
          
       String x1="Select * from qmessages where id='"+id+"'";
         String x2="Select * from queries where id='"+id+"'";
         ResultSet rs=st.executeQuery(x2);
         while(rs.next())
         {
              statuskey=rs.getInt("Status");
         }
        int i=0;
         rs=st.executeQuery(x1);
         while(rs.next())
         {
             
             message=rs.getString("message");
             subject=rs.getString("subject");
             author=rs.getString("name");
             design=rs.getString("designation");
             time=rs.getString("time");
             while(i==0)
             {
                 %>
             
                 <h1 class="topics" >ID <%=id%>: <%=subject%></h1>
                 <hr class="line1">
                 <%
                 i++;
             }

             if(design.equals("company"))
             {
             %>
                <div class="msgbox">
                <div class="container"  >
                    
                <h3 class="userr"><i class="fas fa-building"></i> <%=author%></h3>
               
                  <div class="reply">
                  <p class="para"><%=message%></p> 
                  <br>
                   <span class="time-right"><%=time%></span>
                  </div>
                  </div>
               
                </div>
             <%
                 }
            else
                {
                    %>
                <div class="msgbox">
                <div class="container"  >
                    
                <h3 class="adminr"><i class="fas fa-user-cog"></i> <%=author%></h3>
                
                  <div class="msg">
                  <p class="para"><%=message%></p>  
                  <br>
                  <span class="time-right"><%=time%></span>
                  </div>
                  </div>
               
                    <%--<span class="time-right">11:00</span>--%>
                
                </div>
                     <%
            }
            
}

                 HttpSession ticketc=request.getSession();
                ticketc.setAttribute("ct_id", id);
                ticketc.setAttribute("c_id",author);
                ticketc.setAttribute("design", design);
                ticketc.setAttribute("ct_sub",subject);
                %>
                <br><br>
                <%if(statuskey!=2){%>
                <form action="ticket_reply_company.jsp">
                    
                    <textarea name="rback"  placeholder="was your issue resolved?" required ></textarea>
                    </br>
                    <input type="submit" class=form-submit-button value="submit">
                </form>    
                <%}else{%>
                 <br><br>
            <h4 class="issueres"><i class="fas fa-cogs"></i> Still have any issues?<a href="contactf_company.jsp">Contact Us Again</a></h4>

                     <%}
    }
             catch(Exception ex)
             {
                 
             }
         
            %>

                       <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>  
                        </section>
        </div>
    </body>
</html>