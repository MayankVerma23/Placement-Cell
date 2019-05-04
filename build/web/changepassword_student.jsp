<%-- 
    Document   : login
    Created on : 21 Mar, 2019, 2:55:27 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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
         <script>
           
	function checkpassword()
	{
		password=document.getElementById("t1").value;
		length=document.getElementById("t1").value.length;
		var flag_number=0;
		var flag_lowercase=0;
		var flag_upercase=0;
		for(i=0;i<length;i++)
		 {
			if(password.charAt(i)>=0&&password.charAt(i)<=9)
			{
				flag_number=flag_number+1;
			}
			if(password.charAt(i)>='a'&&password.charAt(i)<='z')
			{
				flag_lowercase=flag_lowercase+1;
			}
			if(password.charAt(i)>='A'&&password.charAt(i)<='Z')
			{
				flag_upercase=flag_upercase+1;
			}
		}
		if(length<8)
		{
                    alert("Your password must be at least 8 characters long.");
		    return false;
		} 
                else if(flag_number===0)
		{
                    alert("Your password must contain at least one digit .");
	            return false;	
                }
		else if(flag_lowercase===0)
		{
                    alert("Your password must contain at least a letter in lower case .");
	            return false;	
                }
                else if(flag_upercase===0)
		{
                    alert("Your password must contain at least a letter in uper case .");
	            return false;	
                }
               
                else
                {
                   var a=(document.getElementById("t1").value);
                   var b=(document.getElementById("t2").value);
                   if(a!==b){
                    alert("pass not match");
                     return false;}
                   else{
                       alert("pass match");
                       return true;
                 
                     }
                
                }	
	}

  

</script>
    </head>
    <body>
         <%@include file = "pic.jsp"%>
       <div class="box">
           <h2>CHANGE PASSWORD</h2>
            <form action="changepassword_student.jsp" method="post" onsubmit="return checkpassword() " autocomplete="on">
               <div class="inputBox">
                   <input type="text" name="old_pass" required="">
                   <label>OLD PASSWORD</label>
               </div>
               <div class="inputBox">
                   <input type="text" name="new_pass" id="t1" required >
                   <label>NEW PASSWORD</label>
               </div>
                <div class="inputBox">
                   <input type="text" name="confirm_pass" id="t2" required>
                   <label>CONFIRM PASSWORD</label>
               </div>
               <input type="submit"  value="Submit" >
               </form>
       </div>
        
        <%!
              String oldpass=" ",newpass="",confirmpass="",stupass="",rollno=" ";
       
        %>
        <%
         oldpass =request.getParameter("old_pass");
         newpass =request.getParameter("new_pass");
         confirmpass =request.getParameter("confirm_pass");
          
       //  HttpSession hs=request.getSession();
         rollno= hs.getAttribute("stu_roll").toString();
  
     
         try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://Localhost/placementcell","root","");
         Statement stmt=con.createStatement();
         String x="select * from studentsignup where studentrollno='"+rollno+"'";
         ResultSet rs=stmt.executeQuery(x);
          while(rs.next())
          {          
            stupass=rs.getString("studentpassword");
          
          }
              
          if(oldpass.equals(stupass))
          {
            if(newpass.equals(confirmpass))
            {
                String y="update studentsignup set studentpassword='"+newpass+"' where studentrollno='"+rollno+"'";
                stmt.executeUpdate(y);
                out.print("<script>window.close();</script>");           }
            else{
            out.print("<script>alert('new password & confirm password must match')</script>");
                }
            }
            else {
            out.print("<script>alert('enter correct password')</script>");
                }
        }
         catch(NullPointerException e)
        {
            out.print(" ");        
        }
        catch(Exception e)
        {
        out.print(e);
        }
     
     
  
     %>
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
