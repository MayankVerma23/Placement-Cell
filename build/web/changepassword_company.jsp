<%-- 
    Document   : login
    Created on : 21 Mar, 2019, 2:55:27 PM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
        <style>
body
{
    
    margin:0;
    padding:0;
    font-family:sans-serif;
    background:url(balls3.jpg);
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
           <h2>CHANGE PASSWORD</h2>
            <form action="changepassword_company.jsp" method="post">
               <div class="inputBox">
                   <input type="password" name="old_pass" required="">
                   <label>OLD PASSWORD</label>
               </div>
               <div class="inputBox">
                   <input type="password" name="new_pass" required="">
                   <label>NEW PASSWORD</label>
               </div>
                <div class="inputBox">
                   <input type="password" name="confirm_pass" required="">
                   <label>CONFIRM PASSWORD</label>
               </div>
               <input type="submit" name="" value="Submit">
               </form>
       </div>
        
        
        
          <%!
              String oldpass="",newpass="",confirmpass="",tpopass="",rollno="";
       
        %>
        <%
         oldpass =request.getParameter("old_pass");
         newpass =request.getParameter("new_pass");
         confirmpass =request.getParameter("confirm_pass");
            HttpSession hs=request.getSession();
         String tpo_username= hs.getAttribute("tpo_name").toString();
          
         
       
     
         try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
          String x="select * from companysignup where companyemail='"+email+"'";
         ResultSet rs=stmt.executeQuery(x);
          while(rs.next())
          {          
            companypass=rs.getString("companypassword");
          
          }
              
          if(oldpass.equals(companypass))
          {
            if(newpass.equals(confirmpass))
            {
              String y="Update companysignup set companypassword='"+newpass+"' where companyemail='"+email+"'";
                stmt.executeUpdate(y);
                response.sendRedirect("home_company.jsp");
            }
            else{
            out.print("<script>alert('new password & confirm password must match')</script>");
                }
          }
          else {
            out.print("<script>alert('enter correct password')</script>");
                }
        }
        catch(Exception e)
        {
        out.print(e);
        }
     
     
     
     %>
        
        
    </body>
</html>
