<%-- 
    Document   : demo
    Created on : 5 Apr, 2019, 9:38:12 PM
    Author     : My Lappy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Roboto:400,700,900' rel='stylesheet' type='text/css'>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 
<style>
   $input-height: 75px;

body {
  font-family: "Roboto";
}

.back {
  background: linear-gradient(120grad, rgb(100, 57, 134), rgb(152, 174, 213));
  position: absolute;
  width: 100%;
  height: 100%;
}

.registration-form {
  width: 400px;
  position: absolute;
  left: 50%;
  transform: translate(-50%, 0%);
  top: 15%;
  
  background: transparent;
  
  header {
    position: relative;
    z-index: 4;
    background: white;
    padding: 20px 40px;
    border-radius: 15px 15px 0 0;
    
    h1 {
      font-weight: 900;
      letter-spacing: 1.5px;
      color: #333;
      font-size: 23px;
      text-transform: uppercase;
      margin: 0;
    }
    
    p {
      word-spacing: 0px;
      color: rgb(159, 172, 182); 
      font-size: 17px;
      margin: 0;
      margin-top: 5px;
    }
  }
  
  form {
    position: relative;
  }
  
  .input-section {
    width: 100%;
    position: absolute;
    display: flex;
    left: 50%;
    transform: translate(-50%, 0);
    height: $input-height;
    border-radius: 0 0 15px 15px;
    overflow: hidden;
    z-index: 2;
    box-shadow: 0px 0px 100px rgba(0,0,0,0.2);
    transition: all 0.2s ease-in;
    
    &.folded {
      width: 95%;
      margin-top: 10px;
      left: 50%;
      transform: translate(-50%, 0);
      z-index: 1;
      
      input {
        background-color: rgb(233, 226, 192);
      }
      
      span {
        background-color: rgb(233, 226, 192);
      }
    }
    
    &.folded + .folded {
      width: 90%;
      margin-top: 20px;
      left: 50%;
      transform: translate(-50%, 0);
      z-index: 0;
      
      input {
        background-color: rgb(225, 188, 239);
      }
      
      span {
        background-color: rgb(225, 188, 239);
      }
    }
    
    &.fold-up {
      margin-top: ;
    }
  }
  
  form input {
    background: lighten(rgb(243, 243, 251), 5%);
    color: rgb(143, 143, 214);
    width: 80%;
    border: 0;
    padding: 20px 40px;
    margin: 0;
    
    &:focus {
      outline: none;
    }
    
    &::placeholder {
      color: rgb(143, 143, 214);
      font-weight: 100;
    }
  }
}

.animated-button {
  width: 20%;
  background-color: rgb(212, 212, 255);
  
  span {
    display: flex;
    flex-direction: row;
    justify-content: space-around;
    align-items: center;
    line-height: $input-height;
    text-align: center;
    height: $input-height;
    transition: all 0.2s ease-in;
    
    i {
      font-size: 25px;
      color: rgb(153, 153, 248);
    }
  }
  
  .next-button {
    background: transparent;
    color: rgb(153, 153, 248);
    font-weight: 100;
    width: 100%;
    border: 0;
  }
}

.next {
  margin-top: -$input-height;
}

.success {
  width: 100%;
  position: absolute;
  display: flex;
  align-items: center;
  left: 50%;
  transform: translate(-50%, 0);
  height: $input-height;
  border-radius: 0 0 15px 15px;
  overflow: hidden;
  z-index: 2;
  box-shadow: 0px 0px 100px rgba(0,0,0,0.2);
  transition: all 0.2s ease-in;
  background: limegreen;
  margin-top: -$input-height;
  
  p {
    color: white;
    font-weight: 900;
    letter-spacing: 2px;
    font-size: 18px;
    width: 100%;
    text-align: center;
  }
}
</style>
<script>
$('.email').on("change keyup paste",
  function(){
    if($(this).val()){
      $('.icon-paper-plane').addClass("next");
    } else {
      $('.icon-paper-plane').removeClass("next");
    }
  }
);

$('.next-button').hover(
  function(){
    $(this).css('cursor', 'pointer');
  }
);

$('.next-button.email').click(
  function(){
    console.log("Something");
    $('.email-section').addClass("fold-up");
    $('.password-section').removeClass("folded");
  }
);

$('.password').on("change keyup paste",
  function(){
    if($(this).val()){
      $('.icon-lock').addClass("next");
    } else {
      $('.icon-lock').removeClass("next");
    }
  }
);

$('.next-button').hover(
  function(){
    $(this).css('cursor', 'pointer');
  }
);

$('.next-button.password').click(
  function(){
    console.log("Something");
    $('.password-section').addClass("fold-up");
    $('.repeat-password-section').removeClass("folded");
  }
);

$('.repeat-password').on("change keyup paste",
  function(){
    if($(this).val()){
      $('.icon-repeat-lock').addClass("next");
    } else {
      $('.icon-repeat-lock').removeClass("next");
    }
  }
);

$('.next-button.repeat-password').click(
  function(){
    console.log("Something");
    $('.repeat-password-section').addClass("fold-up");
    $('.success').css("marginTop", 0);
  }
);
</script>





<body>
<div class="back"></div>
<div class="registration-form">
  <header>
    <h1>Sign Up</h1>
    <p>Fill in all informations</p>
  </header>
  
  <form>
    <div class="input-section email-section">
      <input class="email" type="email" placeholder="ENTER YOUR E-MAIL HERE" autocomplete="off"/>
      <div class="animated-button"><span class="icon-paper-plane"><i class="fa fa-envelope-o"></i></span><span class="next-button email"><i class="fa fa-arrow-up"></i></span></div>
    </div>
    <div class="input-section password-section folded">
      <input class="password" type="password" placeholder="ENTER YOUR PASSWORD HERE"/>
      <div class="animated-button"><span class="icon-lock"><i class="fa fa-lock"></i></span><span class="next-button password"><i class="fa fa-arrow-up"></i></span></div>
    </div>
    <div class="input-section repeat-password-section folded">
      <input class="repeat-password" type="password" placeholder="REPEAT YOUR PASSWORD HERE"/>
      <div class="animated-button"><span class="icon-repeat-lock"><i class="fa fa-lock"></i></span><span class="next-button repeat-password"><i class="fa fa-paper-plane"></i></span></div>
    </div>
    <div class="success"> 
      <p>ACCOUNT CREATED</p>
    </div>
  </form>
        </div>
    </body>

