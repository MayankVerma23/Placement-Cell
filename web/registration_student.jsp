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
      
        <style>
            #drop{
                background-color: black;
            }
            #degree{
                background-color: black;
            }
             #t1{
                background-color: black;
            }
             #t2{
                background-color: black;
            }
             #t3{
                background-color: black;
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
    function onDegreeChange() {
        var deg = document.getElementById("degree").value;
        $('#BTechBranch').hide();
        $('#MCABranch').hide();
         $('#BCABranch').hide();
          $('#MBABranch').hide();
           $('#btechbach').hide();
            $('#mcabach').hide();
             $('#bcabach').hide();
              $('#mbabach').hide();
             
        if(deg === 'B.tech') {
            $('#BTechBranch').show();
            $('#btechbach').show();
        }
        else if(deg === 'MCA') {
            $('#MCABranch').show();
              $('#mcabach').show();
        }
          else if(deg === 'BCA') {
            $('#BCABranch').show();
              $('#bcabach').show();
        }
          else if(deg === 'MBA') {
            $('#MBABranch').show();
              $('#mbabach').show();
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
             <input class="text" type="text" name="name" placeholder="Name" required="" id="drop">
                <input class="text" type="text" name="roll" placeholder="Roll"  required id="drop">
                <input class="text" type="text" name="email" placeholder="Email"    required id="drop">   
                
                <select id="degree" class="text" name="degree"  onchange="onDegreeChange()" required>
                <option value="">DEGREE</option>
                <option value="B.tech">B.tech</option>
                <option value="MCA">MCA</option>
                <option value="BCA">BCA</option>
                <option value="MBA">MBA</option>
                </select>
               
   
                <div id="BTechBranch" hidden="">
                <select id="drop"  class="text" name="branch">
                <option value="">Branch</option>
                <option value="CSE">CSE</option>
                <option value="MCE">MCE</option>
                <option value="CIVIL">CIVIL</option>
                <option value="ECE">ECE</option>
                </select>
                </div>
                
               <div id="MCABranch" hidden=""> 
                <select id="drop"  class="text" name="branch" hidden="">
                <option value="">Branch</option>
                <option value="MCA1">MCA1</option>
                <option value="MCA2">MCA2</option>
                </select>
                    </div>
                
                <div id="MBABranch" hidden=""> 
                <select id="drop"  class="text" name="branch" hidden="">
                <option value="">Branch</option>
                <option value="MBA1">MBA1</option>
                <option value="MBA2">MBA2</option>
                </select>
                    </div>
                <div id="BCABranch" hidden=""> 
                <select id="drop"  class="text" name="branch" hidden="">
                <option value="">Branch</option>
                <option value="MCA1">BCA1</option>
                <option value="MCA2">BCA2</option>
                </select>
                    </div>
                
                <div id="btechbach" hidden="">
                <select id="drop" class="text" name="batch" required>
                <option value="">Batch</option>
                <option value="2013-2017">2013-2017</option>
                <option value="2014-2018">2014-2018</option>
                <option value="2015-2019">2015-2019</option>
                <option value="2016-2020">2016-2020</option>
                </select>
                </div>
                
                <div id="mcabach" hidden="">
                <select id="drop" class="text" name="batch" required>
                <option value="">Batch</option>
                <option value="2013-2015">2013-2015</option>
                <option value="2014-2016">2014-2016</option>
                <option value="2015-2017">2015-2017</option>
                <option value="2016-2018">2016-2018</option>
                </select>
                </div>
                
                <div id="bcabach" hidden="">
                <select id="drop" class="text" name="batch" required>
                <option value="">Batch</option>
                <option value="2013-2016">2013-2016</option>
                <option value="2014-2017">2014-2017</option>
                <option value="2015-2018">2015-2018</option>
                <option value="2016-2019">2016-2019</option>
                </select>
                </div>
                
                <div id="mbabach" hidden="">
                <select id="drop" class="text" name="batch" required>
                <option value="">Batch</option>
                <option value="2013-2016">2013-2016</option>
                <option value="2014-2017">2014-2017</option>
                <option value="2015-2018">2015-2018</option>
                <option value="2016-2019">2016-2019</option>
                </select>
                </div>
                
                
                 <input class="text" type="text" name="phoneno" placeholder="phoneno"  id="t3" required >
              
                
                <div class="radio" >
                <label><input type="radio" name="gender"  value="Male" required>Male</label>
                </div>
                <div class="radio" >
                <label><input type="radio" name="gender" value="Female">Female</label>
                </div>
                
                 <input class="text" type="text" name="ten" placeholder="10%" required id="drop">
                 <input class="text" type="text" name="twe" placeholder="12%" required id="drop">
                 <input class="text" type="text" name="sem1" placeholder="sem1 marks" required id="drop">
                 <input class="text" type="text" name="sem2" placeholder="sem2 marks" required id="drop">
                 <input class="text" type="text" name="sem3" placeholder="sem3 marks" required id="drop">
                 <input class="text" type="text" name="sem4" placeholder="sem4 marks" required id="drop">
                 <input class="text" type="text" name="sem5" placeholder="sem5 marks" required id="drop">
                 <input class="text" type="text" name="sem6" placeholder="sem6 marks" required id="drop">
                 <input class="text" type="text" name="sem7" placeholder="sem7 marks" required id="drop">
                 <input class="text" type="text" name="sem8" placeholder="sem8 marks" required id="drop">
                 <input class="text" type="text" name="cgpa" placeholder="Overall CGPA" required id="drop">
               
               
                <input class="text" type="password" name="pass" placeholder="Password"  id="t1" required >
                <input class="text" type="password" name="confpass" placeholder="Confirm Password"  id="t2" required>
                <button type="submit" class="text" value="SignUp" id="drop">SIGNUP</button>
            </form>
            
        </div>
        </div>
    </body>
</html>

