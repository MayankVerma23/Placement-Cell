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
              
                 margin-right: 400px;
                    margin-left:400px;
            }
            
            .hover tr:hover{
                background-color:#F2D0D1;
            }
            
           th {
                 padding-top: 12px;
                 padding-bottom: 12px;
                 padding-left: 15px;
                 text-align: left;
                 background-color: #4CAF50;
                 color: white;
             }
            
            tr{
                font-size:150%;
              
            }
            td{
                font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
                font-size:90%;
                            }
        </style>
    
    </head>
    <body>
        <%@include file = "database_connection.jsp"%>
        <div class="container"></div>
        <section>
            <div class="row">
                <h1 style="float:left;padding-left:20px;">Placement<br>Cell</h1>
                <a href="#"><h4 style="float:right;padding-right:20px;">Logout</h4></a>
            </div>
        </section>    

        <section> 
            <%@include file = "sliding_text.jsp"%>
        </section> 

        <section> 
            <nav class="navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="profile_student.jsp" class="nav_links">Complete Info</a></li>
                        <li><a href="placement_student.jsp" class="nav_links">Placement Info</a></li>
                        <li><a href="changepassword_student.jsp" class="nav_links">Change Password</a></li>
                        <li><a href="contactf_stud.jsp" class="nav_links"><i class="fas fa-cog"></i>Support</a></li>
                        <li><a href="your_inbox_student.jsp" class="nav_links"><i class="fas fa-envelope"></i>Your Queries</a></li>

                     </ul>
            </nav>
        </section>
        <%! String name="";
            String email="";
            String subject=""; 
            String id="";
            String design="";
            String roll_no="";
        %>
        <section> 
            <table class="hover">
                <tr>
                 
                    
                 
                    
                    <th>Subject</th>
                 
                    <th>       </th>
                </tr>
        
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
            catch(Exception ex){out.print(ex);}
        
           %> 
      <%
             try{ 
           
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/placementcell","root","");
         Statement st=con.createStatement();
         String x1="Select * from queries where Name='"+name+"' group by ID having Designation='student'   ";
       
        ResultSet rs1=st.executeQuery(x1);
         while(rs1.next())
         {
           id=rs1.getString("ID");
           name=rs1.getString("Name");
           email=rs1.getString("Email");
           subject=rs1.getString("Subject");
           design=rs1.getString("Designation");
           
             %>
                <tr>            
                  
                   
                   
                   <td><%=subject%></td>
                  
                   <td> <a href="student_tickets.jsp?id=<%=id%>"><i class="far fa-comment-dots fa-2x"></i></a></td>
                </tr>
                <%
          
            }
         
            }
            catch(Exception ex)
            {
                out.print(ex);
            }               
         
            %>
        
    </body>
</html>