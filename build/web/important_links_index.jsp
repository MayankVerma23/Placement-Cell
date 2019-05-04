<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>bootstrap 3 multiple items responsive carousel</title>
  
  
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Arimo" />

 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

      <link rel="stylesheet" href="css/style.css">

  <style>
      .col-centered {
    float: none;
    margin: 0 auto;
}

.carousel-control { 
    width: 8%;
    width: 0px;
}
.carousel-control.left,
.carousel-control.right { 
    margin-right: 40px;
    margin-left: 32px; 
    background-image: none;
    opacity: 1;
}
.carousel-control > a > span {
    color: white;
	  font-size: 29px !important;
}

.carousel-col { 
    position: relative; 
    min-height: 1px; 
    padding: 5px; 
    float: left;
 }

 .active > div { display:none; }
 .active > div:first-child { display:block; }

/*xs*/
@media (max-width: 767px) {
  .carousel-inner .active.left { left: -50%; }
  .carousel-inner .active.right { left: 50%; }
	.carousel-inner .next        { left:  50%; }
	.carousel-inner .prev		     { left: -50%; }
  .carousel-col                { width: 50%; }
	.active > div:first-child + div { display:block; }
}

/*sm*/
@media (min-width: 768px) and (max-width: 991px) {
  .carousel-inner .active.left { left: -50%; }
  .carousel-inner .active.right { left: 50%; }
	.carousel-inner .next        { left:  50%; }
	.carousel-inner .prev		     { left: -50%; }
  .carousel-col                { width: 50%; }
	.active > div:first-child + div { display:block; }
}

/*md*/
@media (min-width: 992px) and (max-width: 1199px) {
  .carousel-inner .active.left { left: -33%; }
  .carousel-inner .active.right { left: 33%; }
	.carousel-inner .next        { left:  33%; }
	.carousel-inner .prev		     { left: -33%; }
  .carousel-col                { width: 33%; }
	.active > div:first-child + div { display:block; }
  .active > div:first-child + div + div { display:block; }
}

/*lg*/
@media (min-width: 1200px) {
  .carousel-inner .active.left { left: -25%; }
  .carousel-inner .active.right{ left:  25%; }
	.carousel-inner .next        { left:  25%; }
	.carousel-inner .prev		     { left: -25%; }
  .carousel-col                { width: 25%; }
	.active > div:first-child + div { display:block; }
  .active > div:first-child + div + div { display:block; }
	.active > div:first-child + div + div + div { display:block; }
}
 .browse {

  
  background-color: #222222;
  padding: 30px 0;
  display: flex;
  align-items: center;
  justify-content: center;
  
  flex-wrap: wrap;
  flex-direction:column;
  
 
font-family: "Arimo";
}

    
.heading{
   flex:1;
   font-size: 40px;
   font-weight: 700;
   color:#999999;
}
.bottom{
   flex:1;
}
.block {
	width: 306px;
	height: 230px;
  color: #FFF;
  
  
  align-items: center;
  justify-content: center;
  text-align: center;
  display: flex;
 
  
        
}
.link-icon{
    
    color: #CD853F;
 flex:3;
    margin:15px;
    margin-top: 0px;
}
.link-desc{
   font-size: 20px;
    flex: 9;
    color: #fff;
}
.block a{
    text-decoration: none;
   
}

.browse .link-icon:hover{
    
    font-size: 20px;
    transition: transform .2s;
}
.imp{
    
   
}

      </style>
</head>

<body>
<div class="browse">
    <div class="heading" >
     Important Links
    </div>
    <div class="bottom" >
  <div id="links" class="container">
     
	<div class="row">
            
		<div class="col-xs-11 col-md-10 col-centered">

			<div id="carousel" class="carousel slide" data-ride="carousel" data-type="multi" data-interval="2500">
				<div class="carousel-inner">
					<div class="item active">
						<div class="carousel-col">
                                                    <div class="block img-responsive">
                                                        <a href="#"><div class="links"><div class="link-icon"><i class="far fa-file-image fa-3x"></i></div><div class="link-desc">Gallery</div></div></a>
                                                    </div>
						</div>
					</div>
					<div class="item">
						<div class="carousel-col">
							<div class="block  img-responsive"><a href="#"><div class="links"><div class="link-icon"><i class="fas fa-users fa-3x"></i></div><div class="link-desc">Placement <br>Co-ordinators</div></div></a></div>
						</div>
					</div>
					<div class="item">
						<div class="carousel-col">
							<div class="block  img-responsive"><a href="#"><div class="links"><div class="link-icon"><i class="far fa-copy fa-3x"></i></div><div class="link-desc">Company<br> Preparation</div></div></a></div>
						</div>
					</div>
					<div class="item">
						<div class="carousel-col">
							<div class="block  img-responsive"><a href="#"><div class="links"><div class="link-icon"><i class="fas fa-briefcase fa-3x"></i></div><div class="link-desc">Company<br> Info</div></div></a></div>
						</div>
					</div>
                                    		<div class="item">
						<div class="carousel-col">
							<div class="block  img-responsive"><a href="#"><div class="links"><div class="link-icon"><i class="fas fa-ruler-combined fa-3x"></i></i></div><div class="link-desc">Internships</div></div></a></div>
						</div>
					
					</div>
                                    		<div class="item">
						<div class="carousel-col">
							<div class="block  img-responsive"><a href="#"><div class="links"><div class="link-icon"><i class="far fa-question-circle fa-3x"></i></div><div class="link-desc">FAQ</div></div></a></div>
						</div>
					</div>                                    
				</div>

				<!-- Controls -->
				<div class="left carousel-control">
					<a href="#carousel" role="button" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></span>
						<span class="sr-only">Previous</span>
					</a>
				</div>
				<div class="right carousel-control">
					<a href="#carousel" role="button" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>

		</div>
	</div>
          </div>
    </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js'></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

  

    <script  >$('.carousel[data-type="multi"] .item').each(function() {
	var next = $(this).next();
	if (!next.length) {
		next = $(this).siblings(':first');
	}
	next.children(':first-child').clone().appendTo($(this));

	for (var i = 0; i < 2; i++) {
		next = next.next();
		if (!next.length) {
			next = $(this).siblings(':first');
		}

		next.children(':first-child').clone().appendTo($(this));
	}
});</script>




</body>

</html>
