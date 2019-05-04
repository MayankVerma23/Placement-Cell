<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />
<style>
    .left{
        
        background-color: #1b1d1e;
        height: 100vh; 
        color: white;
        
    }
    
    .right{
        
        background-color: #fff;
        height:100vh;
    }
    .regiser{
  

 
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
        margin:100px;
        margin-left: 100px;
          animation-name: rightFadeInOut;
  animation-delay: 0s;
  animation-duration: 4s;
    }
    @keyframes rightFadeInOut {
  0% {
   
    
    opacity: 0;
  }

  75% {
  
    opacity: 1;
  }

  100% {
    
   opacity:1;
  }
}
        .login{
              display: flex;
flex-direction: column;
  align-items: center;
  position: absolute;
  bottom: 0;
  top: 0;
  left: 0;
  right: 0;
      
        margin:100px;
    }
    
    .logo{
        padding-left: 50px;
        font-weight: 700;
    }
.vl {
  border-left: 6px solid green;
  height: 100px;
  padding-left: 10px;
}

.question{
    font-weight: 700;
  
    font-size: 50px;
    color: #b3c1d6;
}

.btn{
    margin-top: 50px;
    font-weight: 700;
    color: #333333;
    background-color: green;
    border: none;
    margin-left:10px;
}
 .form-submit-button {

   background: #333333;
   border-color: #333333;
   color: #ffffff;
   border-radius: 5px;
   float:right;
   height: 35px;
   width: 80px;
   font: bold 13px arial, sans-serif;
    }
    .form-submit-button:hover{
       background: green;
   border-color: green;
   color: #333333;
    }   
.btn:hover{
    background-color: #fff;
    color: #1b1d1e;
    
}
.btn1:hover{
    background-color: #fff;
    color: #1b1d1e;
}

.textb{
    margin: 20px;
    padding: 10px;
    width:300px;
    height:50px;
}

.login h1{
    font-weight: 700;
    
}
.btn-group
 {
  margin: auto;
  display: flex;
  flex-direction: row;
  justify-content: center;
  
}

.btn-group-button {
  background-color: #1b1d1e; /* Green background */
  border: none; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
}

.btn-highlighted {
     background-color: #fff;
     border:none;
     color: #1b1d1e;
     outline: 0;
}
.info{
    margin-top: 200px;
}

.info p,h4{
    color: #6a6a6a;
}
.container-fluid{
    font-family: "Arimo";
}
    </style>
    <%
        HttpSession hs=request.getSession();
    %>
    <script>
        
        function removeActiveClasses() {
            
            $(document).ready( function() {

            });
        } 
$(document).ready(function(){
    
    
  $("#student").click(function(){
      $("#loginas").prop("value", "student");
            if($("#tpo").hasClass('btn-highlighted')) 
                $("#tpo").removeClass('btn-highlighted');
            if($("#company").hasClass('btn-highlighted')) 
                $("#company").removeClass('btn-highlighted');
      $("#student").addClass('btn-highlighted');
  });
  $("#company").click(function(){
      $("#loginas").prop("value", "company");
            if($("#student").hasClass('btn-highlighted')) 
                $("#student").removeClass('btn-highlighted');
            if($("#tpo").hasClass('btn-highlighted')) 
                $("#tpo").removeClass('btn-highlighted');
      $("#company").addClass('btn-highlighted');
      
  });
  $("#tpo").click(function(){
      $("#loginas").prop("value", "tpo");
            if($("#student").hasClass('btn-highlighted')) 
                $("#student").removeClass('btn-highlighted');
            if($("#company").hasClass('btn-highlighted')) 
                $("#company").removeClass('btn-highlighted');
      $("#tpo").addClass('btn-highlighted');
  });
});
</script>


</head>
<body>
</head>


<body>

    <div class="container-fluid" >

  <div class="row">

    <div class="col-md-6 right">
      <h3 class="logo">Placement Cell</h3>
        <div class=" login">
           <h1 >LOGIN</h1>
            <form action="login" style="margin-top:20px; margin-bottom:100px;">
                <div class="btn-group">
                    <button id="student" type="button" class="btn-group-button btn-highlighted" name="bgrp1" value="student" ><i class="fas fa-user-graduate"></i> Student</button>
                    <button id="company" type="button" class="btn-group-button" name="bgrp1" value="company" ><i class="fas fa-building"></i> Company</button>
                    <button id="tpo" type="button" class="btn-group-button" name="bgrp1" value="tpo" ><i class="fas fa-user-cog"></i> TPO</button>
                </div>
    
                
                    <input type="textfield" id="loginas" name="LoginAs" value="student" hidden>
     
                    
                <br>
            <i class="far fa-envelope fa-2x"></i><input class="textb" style="margin-top: 50px"type="text" name="email" placeholder="Email">
              <br>
             <i class="fas fa-lock fa-2x"></i> <input class="textb" style="margin-bottom: 50px;" type="password" name="password" placeholder="Password">
               <br>
               <span style="color:red;">${errorMessage}</span> <br>
               <a href="#">Forgot Password?</a>
               <i class="fas fa-key"></i> <input type="submit" class="form-submit-button" value="Login">
                </h4>
            </form>
   </div>
    </div>
          <div id="right"class="col-md-6 left" >
        
      <div class="regiser">
          <h1 class="question">New to <br>the<br> Website?</h1>
          <h3 style="padding-left: 10px">Regiser now to<br> get acess to<br> various<br> features.</h3>
          <a href="signup.jsp"><button  type="button" class="btn "><i class="fas fa-user-edit"></i> Register Now</button></a>
          <div class="info">
                          <h4>Support</h4>
            <p style="font-size:15px;">
              Mr Someone <br>
             College Name<br>
              Patiala<br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> admin@mail.com<br>
            </p>
          </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
