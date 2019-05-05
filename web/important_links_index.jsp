<!--DOCTYPE html>
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
            
                <div class="">

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

<!-- Controls --
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
-->
<!DOCTYPE html>
<html lang="en" >

    <head>
        <meta charset="UTF-8">
        <title>Multiple Image Slider</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.css'>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js'></script>

        <style>

            *, *:before, *:after {
                box-sizing: inherit;
            }

            img {
                width: 100%;
                height: auto;
                padding: 5px;
            }

            h2 {
                text-align: center;
                padding-bottom: 1em;
            }

            .slick-dots {
                text-align: center;
                margin: 0 0 10px 0;
                padding: 0;
            }
            .slick-dots li {
                display: inline-block;
                margin-left: 4px;
                margin-right: 4px;
            }
            .slick-dots li.slick-active button {
                background-color: black;
            }
            .slick-dots li button {
                font: 0/0 a;
                text-shadow: none;
                color: transparent;
                background-color: #999;
                border: none;
                width: 15px;
                height: 15px;
                border-radius: 50%;
            }
            .slick-dots li :hover {
                background-color: black;
            }

            /* Custom Arrow */
            .prev {
                color: #999;
                position: absolute;
                top: 38%;
                left: -2em;
                font-size: 1.5em;
            }
            .prev :hover {
                cursor: pointer;
                color: black;
            }

            .next {
                color: #999;
                position: absolute;
                top: 38%;
                right: -2em;
                font-size: 1.5em;
            }
            .next :hover {
                cursor: pointer;
                color: black;
            }

            @media screen and (max-width: 800px) {
                .next {
                    display: none !important;
                }
            }

        </style>

        <script>
            $('.responsive').slick({
                dots: true,
                prevArrow: $('.prev'),
                nextArrow: $('.next'),
                infinite: true,
                speed: 300,
                slidesToShow: 4,
                slidesToScroll: 1,
                responsive: [
                    {
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3,
                            infinite: true,
                            dots: true
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                    // You can unslick at a given breakpoint now by adding:
                    // settings: "unslick"
                    // instead of a settings object
                ]
            });
        </script>  
    </head>

    <body>

        <div class="container">
            <h2>Slider - Multpile Items & Responsive</h2>
            <div class="row">
                <div class="col-md-12 heroSlider-fixed">
                    <div class="overlay">
                    </div>
                    <!-- Slider -->
                    <div class="slider responsive">
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                        <div>
                            <img src="http://placehold.it/200x150" alt="" />
                        </div>
                    </div>
                    <!-- control arrows -->
                    <div class="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    </div>
                    <div class="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    </div>

                </div>
            </div>
        </div>

    </body>

</html>
