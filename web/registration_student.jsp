<%-- 
    Document   : student_registration
    Created on : 7 Mar, 2019, 7:20:46 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title id="title">STUDENT_REGISTER</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="student.css">
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
        <div class="btn-groupb">
            <h1>STUDENT SIGNUP</h1>
        </div>
        <div class="box" >
         <form action="studentsignup" method="post" onsubmit="return checkpassword()" autocomplete="on">
             <input class="text" type="text" name="name" placeholder="Name" required="">
                <input class="text" type="text" name="roll" placeholder="Roll"  required>
                <input class="text" type="text" name="email" placeholder="Email"    required>   
               
                <select class="text" name="degree" required>
                <option value="">DEGREE</option>
                <option value="B.tech">B.tech</option>
                <option value="MCA">MCA</option>
                <option value="BCA">BCA</option>
                <option value="MBA">MBA</option>
                </select>
     
                
                <input class="text" type="text" name="phoneno" placeholder="phoneno"  required><br>
   
                <div class="radio">
                <label><input type="radio" name="gender" value="Male" required>Male</label>
                </div>
                <div class="radio">
                <label><input type="radio" name="gender" value="Female">Female</label>
                </div>
                <select class="text" name="branch" required>
                <option value="">Branch</option>
                <option value="CSE">CSE</option>
                <option value="MCE">MCE</option>
                <option value="CIVIL">CIVIL</option>
                <option value="ECE">ECE</option>
                </select>
                 <select class="text" name="batch" required>
                <option value="">batch</option>
                <option value="2013-2017">2013-2017</option>
                <option value="2014-2018">2014-2018</option>
                <option value="2015-2019">2015-2019</option>
                <option value="2016-2020">2016-2020</option>
                
                </select>
                
                 <input class="text" type="text" name="ten" placeholder="10%" required>
                 <input class="text" type="text" name="twe" placeholder="12%" required>
                 <input class="text" type="text" name="sem1" placeholder="sem1 marks" required>
                 <input class="text" type="text" name="sem2" placeholder="sem2 marks" required>
                 <input class="text" type="text" name="sem3" placeholder="sem3 marks" required>
                 <input class="text" type="text" name="sem4" placeholder="sem4 marks" required>
                 <input class="text" type="text" name="sem5" placeholder="sem5 marks" required>
                 <input class="text" type="text" name="sem6" placeholder="sem6 marks" required>
                 <input class="text" type="text" name="sem7" placeholder="sem7 marks" required>
                 <input class="text" type="text" name="sem8" placeholder="sem8 marks" required>
                 <input class="text" type="text" name="cgpa" placeholder="Overall CGPA" required>
               
               
                <input class="text" type="password" name="pass" placeholder="Password"  id="t1" required>
                <input class="text" type="password" name="confpass" placeholder="Confirm Password"  id="t2" required>
                <button type="submit" class="text" value="SignUp">SIGNUP</button>
            </form>
            
        </div>
        </div>
    </body>
</html>

