<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
         <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">-->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />
<style>


#logo :hover:before{
    
    content: Home;
}
* {box-sizing: border-box;}



.nav {
  overflow: hidden;
  background-color:rgba(0,0,0,0.7);
  color: white;
  font-family: "Arimo";
  transition: 0.4s;
  position: fixed;
  width: 100%;
  left: 0;
  top: 0;
  z-index: 99;
}

.nav a {
  float: left;
  color: white;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 14px; 
  line-height: 25px;
  border-radius: 4px;
}

.nav #logo {
  font-size: 25px;
  font-weight: bold;
  transition: 0.4s;
  color:white;
}

.nav a:hover {
  
  color: #008B8B;
}

.nav a.active {
  background-color: dodgerblue;
  color: white;
}

#navbar .nav-right {
  float: right;
  
}

@media screen and (max-width: 600px) {
  .nav a:not(:first-child) {display: none;}
  .nav a.icon {
    float: right;
    display: block;
  }

  .nav.responsive {position: relative;}
  .nav.responsive .icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  .nav.responsive a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .nav {
      position: relative;
      left: 0;
      right: 0;
      top: 0;
  }
}
</style>
<script>
function myFunction() {
  var x = document.getElementById("navbar");
  if (x.className === "nav") {
    x.className += " responsive";
  } else {
    x.className = "nav";
  }
}
</script>
<script>
// When the user scrolls down 80px from the top of the document, resize the navbar's padding and the logo's font size
window.onscroll = function() {scrollFunction();};

function scrollFunction() {


    var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-100px";
  }
  prevScrollpos = currentScrollPos;
   
}
}
</script>
</head>
<body>
<div class="nav" id="navbar">
  <a href="#default" id="logo">Placement Cell</a>
  <div class="nav-right">
    
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
        <i class="fa fa-bars"></i>
    </a>
    <a href="">About Us</a>
    <a href="">News</a>
    <a href="#">Off Campus</a>
    <a href=""><i class="fas fa-at"></i> Contact</a>
    <a href="login_page.jsp"><i class="fas fa-key"></i> Login</a>
    <a href="signup.jsp"><i class="fas fa-user-plus"></i> SignUp</a>

  </div>
      
</div>



</body>
</html>