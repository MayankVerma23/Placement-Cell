<%-- 
    Document   : footer
    Created on : 9 Mar, 2019, 12:44:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">-->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<style>
.full {
    width: 100%;	
}

.footer {
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
    color:#fff;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
    background: #182765;  
    background: -webkit-linear-gradient(to right, #FDBD37, #B92020, #182765);  
    background: linear-gradient(to right, #FDBD37, #B92020, #182765); 
 
}


.footer h3 {
	border-bottom: 1px solid #BAC1C8;
    color:#fff;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D;
    color:#fff;
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}

.subscribe-btn .btn {
	border: medium none;
	border-radius: 4px;
	display: inline-block;
	height: 40px;
	padding: 0;
	width: 100%;
	color: #fff;
    margin-top:10px;
}
.subscribe-btn {
	overflow: hidden;
}

.social li {
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}

.social li a {
	color: #EDEFF1;
}
.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}
.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}

.pay-icons {
	font-size: 1.9em;	
}
</style>
</head>
<body>



<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
               
                
                <div class="col-sm-4 col-xs-6">
                    <h3> About </h3>
                    <ul>
                        <li> <a href="#"> Our Company </a> </li>
                        <li> <a href="#"> About Us </a> </li>
                        <li> <a href="#"> Terms of Services </a> </li>
                        <li> <a href="#"> Our Team </a> </li>
                    </ul>
                </div>
                <div class=" col-sm-4 col-xs-6">
                    <h3> Contact </h3>
                    <ul>
                        <li> <a href="#"> Contact Marketing </a> </li>
                        <li> <a href="#"> Contact Sales </a> </li>
                        <li> <a href="#"> Contact HR </a> </li>
                        <li> <a href="#"> Contact Admin </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3> Subscribe Us </h3>
                    <ul>
                        <li>
                            <div class="input-append subscribe-btn text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  btn-warning" type="button"> Subscribe <i class="fa fa-mail"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
   
    <!--/.footer-bottom--> 
</footer>


</body>

</html>
