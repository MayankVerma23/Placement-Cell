<%-- 
    Document   : notifications_studnet
    Created on : Apr 8, 2019, 12:01:31 PM
    Author     : Divjot
--%>

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
       

    <style>
        h4{
            overflow:hidden;
            
        }
                   .topics{
                    color: #333333;
                        text-align:center;
                        text-transform: capitalize;
                }
                .notices{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                   
                    
                   <%-- border: 2px solid #2F4F4F;--%>
                    background-color: 	#ffffff;
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
                .line1{
                    border-color: #A9A9A9;
                }  
                .col-md-6{
                   background-color: #FFA07A;
                }
                
                                .col-md-3{
                   background-color: #FFA07A;
                   width:200px;
                   height:300px;
                }
                .sizeofmarquee{
                     height: 300px;
                }
    </style>
    
    <META HTTP-EQUIV="Refresh" CONTENT="10">
    </head>
    <body>
        <%@include file = "database_connection.jsp"%>  
        
        
        
        <%! String sub="";
            String message="";
            String time="";
            String time1="";
            int sno;
        %>      
<div class="container">
    <div class="row">
     
        <div class="col-md-6" style="border:2px solid black">
            <marquee direction="up" scrolldelay="300" class="sizeofmarquee" >
<%
             try{ 
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select * from notices order by sno desc";
        int i=0;
         ResultSet rs=st.executeQuery(x1);
         while(rs.next())
         {  
             time=rs.getString("date");
             if(!time.equals(time1))
             {
             %>
             <h5 class="topics" ><i class="far fa-clock"></i> <span class="time-right"><%=time%></h5>
             <%
             }
             time1=time;
                sub=rs.getString("subject");
                message=rs.getString("message");
                sno=rs.getInt("sno");

                 %>
                   <a href="view_notice.jsp?id=<%=sno%>">
                  <div class="msgbox">
                      <div class="container-center" >
                             <div class="notices">
                                <h4 class="userr"><i class="far fa-file-alt"></i> <%=sub%></h4><h6></h6>
                             </div>
                        </div>
                    </div>
                </a>
                
                <%
                }
             }
            
       
            
 
             catch(Exception ex)
             {
                out.print(ex); 
             }
         
            %>
            </marquee>
        </div>
            
            <div class="col-md-2">
                
                </div>
        <div class="col-md-3" style="border:2px solid black">
            <h2>Quote of the day</h2>
           <%int count;
           int n;
           String message="";
           String name="";
           Random r=new Random();
             try{ 
         
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select count(*) from quotes";
        int i=0;
         ResultSet rs=st.executeQuery(x1);
        rs.next();
        
        count=rs.getInt(1);
       
            n=r.nextInt(count);
       
            n+=1;
             String x2="Select * from quotes where sno='"+n+"'";
             
             rs=st.executeQuery(x2);
             
             while(rs.next())
             {
                 message=rs.getString("quote");
                 name=rs.getString("author");
              %>
              <h4>"<%=message%>"
               by <%=name%></h4>
              <%
             }
             }  
             catch(Exception ex)
             {
                out.print(ex); 
             }
         
            %>

        </div>
</div>
    </body>
</html>
