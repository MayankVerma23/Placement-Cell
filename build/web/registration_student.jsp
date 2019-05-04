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
     <!--  <link rel="stylesheet" href="student.css">
        --><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      
       <style>
           .col-md-3{
                width:50%;
           }  
           
            input[type=radio] {
                border: 0px;
                width: 100%;
                height: 1em;
            }
        </style>
        <script>
          
            
            function sublist()
            {
            h1=document.getElementById("degree").value;
            
             var a2;
                if (window.XMLHttpRequest) {
                    a2 = new XMLHttpRequest();
                }
                else {
                    a2 = new ActiveXObject("Microsoft.XMLHTTP");
                }

                a2.onreadystatechange = function () {
                    if (a2.readyState == 4 && a2.status == 200) 
                    {
             
                      document.getElementById("drp2").innerHTML = a2.responseText;
                    
                    } 
                }
                 
                a2.open("GET","degree_category_student.jsp?degree="+h1, true);
                a2.send(); 
                subtext(h1);
            }
        
        
        function subtext(degree)
        {
            

            
          
              var a3;
                if (window.XMLHttpRequest) {
                    a3 = new XMLHttpRequest();
                }
                else {
                    a3 = new ActiveXObject("Microsoft.XMLHTTP");
                }

                a3.onreadystatechange = function () {
                    if (a3.readyState == 4 && a3.status == 200) 
                    {
             
                      document.getElementById("drp3").innerHTML = a3.responseText;
                    
                    } 
                }
                 
                a3.open("GET","branch_category_student.jsp?degree="+degree, true);
                a3.send(); 
            
            
            
        }
      
           
	function checkpassword()
	{
                
		password=document.getElementById("t1").value;
		length=document.getElementById("t1").value.length;
		var flag_number=0;
		var flag_lowercase=0;
		var flag_upercase=0;
                var a=document.getElementById("t3").value;
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
                  
                else if(isNaN(a)){
                      alert("Eneter only numeric value in Phoneno");
                      return false;
                  }
                 else if(a.length<10){
                      alert("Phoneno must be 10 digit");
                      return false;
                  }
                 else if(a.length>10){
                      alert("Phoneno must be 10 digit");
                      return false;
                  }
                    else if((a.charAt(0)!=9)&&(a.charAt(0)!=8)&&(a.charAt(0)!=7)&&(a.charAt(0)!=6)){
                      alert("Phone number must start with 9,8,7 and 6");
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
                     alert("pass  match");
                     return true;}
                
                }	
	}

  

</script>
<script>
      function validrollno()
             {
            h1=document.getElementById("roll").value;
            if(h1 !== "") {
             var a2;
                if (window.XMLHttpRequest) {
                    a2 = new XMLHttpRequest();
                }
                else {
                    a2 = new ActiveXObject("Microsoft.XMLHTTP");
                }

                a2.onreadystatechange = function () {
                    if (a2.readyState == 4 && a2.status == 200) 
                    {
                      document.getElementById("na").innerHTML = a2.responseText;
                    
                    } 
                }
                 
                a2.open("GET","valid_roll_student.jsp?rol="+h1, true);
                a2.send(); 
                
            }
        }
    </script>

        
    </head>
    
    <body >
      
        <div class="container" >
        
        <section style="background-color:#E9E8E2;padding: 20px;margin-top: 60px;border:2px solid black">
            <div class="row" >
                <div class="col-md-12">
                    <h1 style="text-align: center;color:black">STUDENT SIGNUP</h1>
                </div>
            </div>
            
        <div class="row">    
        <form action="studentsignup" method="post" onsubmit="return checkpassword()" autocomplete="on" style="color: black;" >
            <div class="col-md-6">  
              
                <div class="form-group">
                    <label for="name">NAME:</label>
                    <input type="text" name="name" class="form-control" id="drop" required>
                </div>
                
                
                <div class="form-group">
                    <label for="roll">ROLL NO:</label>
                    <input type="text" name="roll" class="form-control" id="roll" onkeyup="validrollno()" required >
                </div>
                
                <div id="na"></div>
                
                <div class="form-group">
                    <label for="email">EMAIL:</label>
                    <input type="text" name="email" class="form-control" id="drop" required >
                </div>
                
                <div class="form-group">
                <label for="Select Degree">DEGREE :</label>
                <select class="form-control" id="degree" name="degree" onchange="sublist()" required>
                  <option value="">DEGREE</option>
                    <option value="Btech">B.tech</option>
                    <option value="MCA">MCA</option>
                    <option value="BCA">BCA</option>
                    <option value="MBA">MBA</option>
                </select>
                </div>

                <div id="na"></div>
                <div id="drp2" ></div>   
                <div id="drp3" > </div> 
                 
                <div class="form-group">
                    <label for="phno">PHONE NO:</label>
                    <input type="text" name="phoneno" class="form-control" id="t3" required >
                </div>
                
                <div class="col-md-3">
                    <div class="radio">
                        <label><input type="radio" name="gender" required value="Male"><b>Male</b></label>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="radio">
                        <label><input type="radio" name="gender" required value="Female"><b>Female</b></label>
                    </div>
                </div>
            </div>
            
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="ten">10 Percentage:</label>
                            <input type="text" name="ten" class="form-control" id="drop" required >
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="twe">12 Percentage:</label>
                            <input type="text" name="twe" class="form-control" id="drop" required >
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem1">1st SEM CGPA:</label>
                            <input type="text" name="sem1" class="form-control" id="drop" required >
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem2">2nd SEM CGPA:</label>
                            <input type="text" name="sem2" class="form-control" id="drop" required >
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem3">3rd SEM CGPA:</label>
                            <input type="text" name="sem3" class="form-control" id="drop" required >
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem4">4th SEM CGPA:</label>
                            <input type="text" name="sem4" class="form-control" id="drop" required >
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem5">5th SEM CGPA:</label>
                            <input type="text" name="sem5" class="form-control" id="drop" required >
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem6">6th SEM CGPA:</label>
                            <input type="text" name="sem6" class="form-control" id="drop" required >
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sme7">7th SEM CGPA:</label>
                            <input type="text" name="sem7" class="form-control" id="drop" required >
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="sem8">8th SEM CGPA:</label>
                            <input type="text" name="sem8" class="form-control" id="drop" required >
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="cgpa">OVERALL CGPA:</label>
                    <input type="text" name="cgpa" class="form-control" id="drop" required >
                </div>
                
                 <div class="form-group">
                    <label for="backlog">BACKLOG:</label>
                    <input type="text" name="backlog" class="form-control" id="drop" required >
                </div>
                
                <div class="form-group">
                    <label for="pass">PASSWORD:</label>
                    <input type="password" name="pass" class="form-control" id="t1" required >
                </div>
                
                <div class="form-group">
                    <label for="confpass">CONFIRM PASSWORD:</label>
                    <input type="password" name="confpass" class="form-control" id="t2" required >
                </div>
                
            </div>
        </div> <br/><br/>   
            <div class="row">
                <div class="col-md-12" style="text-align: center">
                    <button  type="submit" class="btn btn-success" value="SignUp" style="width:40%;height:20%">SIGNUP</button>
                </div>
            </div>
            </form>
            
        </section>
        </div>
        
    </body>
</html>

