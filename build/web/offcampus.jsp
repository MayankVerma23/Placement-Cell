<%-- 
    Document   : offcampus
    Created on : 31 Mar, 2019, 7:22:19 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
body
{
    
    margin:0;
    padding:0;
    font-family:sans-serif;
    background:url(background_images/balls3.jpg);
    background-size:cover;
}
.box
{
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    width:400px;
    padding:40px;
    background:rgba(0,0,0,.8);
    box-sizing:border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.5);
    border-radius:10px;
    
}
.box h2
{
    margin:0 0 30px;
    padding:0;
    color:#fff;
    text-align:center;
}
.box .inputBox
{
    position:relative;
}
.box .inputBox input
{
    width:100%;
    padding:10px 0;
    font-size:16px;
    color:#fff;
    letter-spacing:1px;
    margin-bottom:30px;
    border:none;
    border-bottom:1px solid #fff;
    outline:none;
    background:transparent;
   }
.box .inputBox label
{
        
    position:absolute;
    top:0;
    left:0;
    letter-spacing:1px;
    padding:10px 0;
    font-size:16px;
    color:#fff;
    pointer-events:none;
    transitions:.5s;
     
}
.box .inputBox input:focus~label,
.box .inputBox input:valid~label
{
    top:-18px;
    left:0;
    color:#03a9f4;
    font-size:12px;
}

.box input[type="submit"]
{
    background:transparent;
    border:none;
    outline:none;
    color:#fff;
    background:#03a9f4;
    padding:10px 20px;
    cursor:pointer;
    border-radius:5px;
    }
        </style>
    </head>
    <body>
       <div class="box">
           <h2>Apply For Off Campus Placement</h2>
            <form action="offcampus_signup.jsp" method="post">
               <div class="inputBox">
                   <input type="text" name="name" required="">
                   <label>NAME</label>
               </div>
               <div class="inputBox">
                   <input type="text" name="coll" required="">
                   <label>COLLEGE/UNIVERSITY</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="coll_roll" required="">
                   <label>COLLEGE ROLL NO.</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="email" required="">
                   <label>Email</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="course" required="">
                   <label>COURSE</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="branch">
                   <label>BRANCH</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="backlog">
                   <label>BACKLOG IF ANY</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="passyear" required="">
                   <label>PASSING YEAR</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="12" required="">
                   <label>12th %AGE</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="degree_per" required="">
                   <label>DEGREE %AGE</label>
               </div>
                
                
               <input type="submit" name="" value="Submit">
               </form>
       </div>
        
        
        
         
                
        <%--
        <%
         String name1=request.getParameter("name");
         String collname=request.getParameter("coll");
          String coll_roll1=request.getParameter("coll_roll");
         String coursename =request.getParameter("course");
         String branchname =request.getParameter("branch");
         String backlog1 =request.getParameter("backlog");
         String passyear1 =request.getParameter("passyear");
         String percent1 =request.getParameter("12");
         String percent2 =request.getParameter("degree_per");
         String password =request.getParameter("pass");
                 
         try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
          
              String y="insert into offcampus_table values(null,'"+name1+"','"+collname+"','"+coll_roll1+"','"+coursename+"','"+branchname+"','"+backlog1+"','"+passyear1+"','"+percent1+"','"+percent2+"','"+password+"')";
                stmt.executeUpdate(y);
                response.sendRedirect("index.jsp");
            
            
        }
        catch(Exception e)
        {
        out.print(e);
        }
     
     
     
     %>  --%>
        
        
    
</html>
