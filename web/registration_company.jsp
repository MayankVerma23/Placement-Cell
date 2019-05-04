<%-- 
    Document   : company_registration
    Created on : 7 Mar, 2019, 7:21:07 PM
    Author     : My Lappy
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">COMPANY_REGISTER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="loginsignup.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        
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
                     return true;}
                
                }	
	}

  

</script>
             
      
    </head>
    
    <body >
      
        <div class="container">
        <div class="btn-group">
            <a href="signup.jsp"></a>
            <h1>COMPANY SIGNUP</h1>
        </div>
        <div class="box">

            <form action="companysignup" method="post" onsubmit="return checkpassword()">
                <input class="text" type="text" name="name" placeholder="Company Name" required>  
                <input class="text" type="email" name="email" placeholder="Company Email" required>
                <input class="text" type="text" name="phoneno" placeholder="Contact No." required>
                <input class="text" type="text" name="loc" placeholder="Location" required>
                <input class="text" type="password" name="pass" placeholder="Password" id="t1" required>
                <input class="text" type="password" name="confpass" placeholder="confpass" id="t2" required>
                <button type="submit" class="text" value="SignUp">SIGNUP</button>
                
            </form>
        </div>
        </div>
        
        
    </body>
</html>
