<%-- 
    Document   : Queries
    Created on : Mar 29, 2019, 11:14:34 PM
    Author     : Divjot
--%>

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

            
            .hover tr:hover{
                background-color:#F2D0D1;
            }

            tr{
                font-size:150%; 
            }
               .topics{
                    color: #333333;
                        text-align:left;
                        padding-left:100px;
                        text-transform: capitalize;
                }
                .line1{
                    border-color: #A9A9A9;
                }
                                    .linkq{
                        text-align: right;
                        padding-right:50px;
                        color:  #333333;
                        font-size: 130%;
                    }
                    .linkq:hover{
                        opacity: 0.9;
                    }
                               .topics{
                    color: #333333;
                        text-align:left;
                        text-transform: capitalize;
                }
                .line1{
                    border-color: #A9A9A9;
                }
                            .time-right{
                color: #696969;
               text-align: right;
               padding-right: 50px;
                            }
                                        .userr{
                padding-top:10px;
                padding-left:50px;
                text-align: left;
                font-weight: 600;
                color: #333333;
            }
                            .notices{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                   
                    
                    border: solid #2F4F4F;
                    background-color: 	#E9967A;
                     color: #333333;
                     border-radius:2px;
                     padding: 10px;
                       
                      width :80%;
                    opacity: 1;
                    filter: alpha(opacity=50); 
                   margin-bottom:10px;
                   
                }  
                       .notices:hover{
                    
                        opacity: 0.8;
                        
                    }
                                            .notices-uns{
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                   
                    
                    border: solid #2F4F4F;
                    background-color: 	#FF7F50;
                     color: #333333;
                     border-radius:2px;
                     padding: 10px;
                       
                      width :80%;
                    opacity: 1;
                    filter: alpha(opacity=50); 
                   margin-bottom:10px;
                   
                }  
             
                    .notices-uns:hover
                    {
                        opacity: 0.8;
                    }
                 

           
        </style>
    
    </head>
    <body>
        <%@include file = "database_connection.jsp"%>
        
        <!--Start of Navbar Section-->
           <%@include file = "header_student.jsp"%>
        <!--End of Navbar Section-->
        
                <%! String name="";
            String message="";
            String subject=""; 
            int id;
            String design="";
            String roll_no="";
            String time="";
            int statuskey;
            int seen;
        %>
        <section>
            <div class="container">
  
                         <h1 class="topics" ><i class="fas fa-envelope-open-text"></i> Your Queries</h1>
            <hr class="line1">
            <a href="contactf_stud.jsp"><h5 class="linkq"><i class="far fa-edit"></i>New Query</h5></a> 
            <br><br>
        <%
            HttpSession hs = request.getSession();
            roll_no=hs.getAttribute("stu_roll").toString();
        
            try{ 
           
                Class.forName("com.mysql.jdbc.Driver");
                Connection con1=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
                Statement st=con1.createStatement();
                String x2="Select * from studentsignup where studentrollno='"+roll_no+"'";
                ResultSet rs=st.executeQuery(x2);
                while(rs.next())
                {
                    name=rs.getString("studentname");

                }
            }   
            catch(Exception ex){
                out.print(ex);
            }
        
           %>
           
          <%
           
            roll_no=hs.getAttribute("stu_roll").toString();
        
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection con1=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con1.createStatement();
                 String x2="Select * from studentsignup where studentrollno='"+roll_no+"'";
         ResultSet rs=st.executeQuery(x2);
         while(rs.next())
         {
             name=rs.getString("studentname");
         
         }

        String x1="Select * from queries where Name='"+name+"' having Designation='student'  order by ID Desc ";
       
        ResultSet rs1=st.executeQuery(x1);
          while(rs1.next())
         {
             id=rs1.getInt("ID");
           name=rs1.getString("Name");
           message=rs1.getString("Message");
           subject=rs1.getString("Subject");
           design=rs1.getString("Designation");  
           statuskey=rs1.getInt("Status");
          time=rs1.getString("TimeofReply");
          seen=rs1.getInt("seen");
          %>
                           <a href="student_tickets.jsp?id=<%=id%>  ">
                  <div class="msgbox">
                <div class="container-center" >
                    <div    <%if(seen==0){%> class="notices-uns"<%}else{%>class="notices" <%}%>>
                        <h4 class="userr">      <%if(statuskey==2){%><i class="fas fa-envelope"></i><%}else if(statuskey==1){%><i class="far fa-envelope-open"></i><%}else{%><i class="far fa-envelope"></i><%}%>      <%=subject%><h6 class="time-right"><%=time%></h6></h4> 
                     
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
                       <br>
                <br>
  

                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
                <br><br>
        <section>
        </div>
    </body>
</html>