<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>SVG Triangle Hover/Page Transition</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

  
      <link rel="stylesheet" href="style.css">
      <script>
          
          var defaultEasing = Power4.easeOut;

function animateTriangles(post, direction){
  var triangles = $(post).find('path');
	var postItemWidth = $(post).find('.post-link').outerWidth();
  _.each(triangles, function(triangle, index){
    var offsetLeft = triangle.getBoundingClientRect().left - 100;
    var props = {};
    
    if (direction === 'reset'){
      var props = {
        opacity: 1,
        fill: "#fff",
        stroke: "#fff",
        ease: defaultEasing,
        delay:  ((triangles.length) - (index)) / 1000
      };
      TweenMax.to(triangle, .5, props);
    } else if (direction === 'in' && offsetLeft < postItemWidth){   
      var props = {
        fill: "#fff",
        stroke: "#fff",
        ease: defaultEasing,
        delay: ((triangles.length) - (index)) / 1000
      };
      TweenMax.to(triangle, 1, props);
      
    } else if (direction === 'out' && offsetLeft < postItemWidth ){
       var props = {
        fill: "#27073A",
        stroke: "#27073A",
        ease: defaultEasing,
        delay: ((triangles.length) - (index)) / 1000
      };
      TweenMax.to(triangle, .3, props);
      
    } else if (direction === 'inAndOut'){
       var propsIn = {
         fill: "#27073A",
         stroke: "#27073A",
         ease: defaultEasing,
         delay: ((triangles.length) - (index)) / 1000
       };
       
       var propsOut = {
         fill: "#fff",
         stroke: '#fff',
         opacity: 0,
         ease: defaultEasing,
         delay: ((triangles.length) - (index)) / 900
       };
       
       TweenMax.to(triangle, .6, propsIn);
       TweenMax.to(triangle, 1, propsOut);
    }
  }) ;                
}

function animatePostsOut(posts){
  var activePost = $('.post-item.active');
  var offset = activePost.offset().top;
  console.log(offset);
  
  _.each(posts, function(post){
    if (!$(post).hasClass('active')){
      TweenMax.to(post, .3, {opacity: 0, ease: defaultEasing});
    } else {
       TweenMax.to(post, .6, {top: -offset, ease: defaultEasing, delay: .5});
    }
  });
}

function animatePostsIn(posts){
  _.each(posts, function(post){
    if (!$(post).hasClass('active')){
      TweenMax.to(post, .3, {opacity: 1, top: 0, ease: defaultEasing});
    }
  });
}

$(function(){

  var posts = $('.post-item');
  
  _.each(posts, function(post, index){

    TweenMax.to(post, .1, {opacity: 1});

    var height = $(post).outerHeight();
    var width = $(post).outerWidth();
    var postOverlay = $(post).find('.post-overlay');

    var pattern = Trianglify({
      width: width, 
      height: height,
      x_colors: ['#fff', '#fff'],
      cell_size: 40
    });

    postOverlay.append(pattern.svg());

    var triangles = postOverlay.find('path');
    var postItemWidth = $(post).find('.post-link').outerWidth();
    animateTriangles(post, 'out');
  });

  $('.post-item').on('mouseenter', function(e){
    var post = this;
    if (!$(post).hasClass('active')){
      animateTriangles(post, 'in');
    }
  });

  $('.post-item').on('mouseleave', function(e){
    var post = this;
    if (!$(post).hasClass('active')){
      animateTriangles(post, 'out');   
    }
  });

  $('.post-item').on('click', function(e){
    e.preventDefault();
    var post = this;
    $(post).toggleClass('active');
    if ($(post).hasClass('active')){ 
      animatePostsOut(posts); 
      animateTriangles(post, 'inAndOut');
    } else {
       animatePostsIn(posts); 
       animateTriangles(post, 'reset');
    }
  });
});
      </script>
  
</head>

<body>

  <div class="container">
  <div class="post-item" id="post-one">
    <div class="featured-image" style="background-image: url('http://i.ytimg.com/vi/_XePuRyD6_o/maxresdefault.jpg');"></div>
    <div class="post-overlay"></div>
    <div class="post-heading">
       <h3 class="post-title">
         <a class="post-link transition-link">This is a Post Title</a>
      </h3>
       <p class="post-date">06/19/2015</p>
    </div>
    <div class="post-content">
      <div class="post-body">
          <p>Iâ??m currently working on a project in which I require a Slides.com presentation to control a meteor app that pushes content to subscribers whenever slides change. This required the creator of the slide deck to sync their deck to the content they created in my app. Simple enough?

But Slides.com doesnâ??t have a public API, so there is no direct way to accomplish this. I decided to create a Chrome extension that allows the author of the slide deck to authenticate their credentials with my Meteor application and sync their slide deck to the app. Check out my publicGitHub repo for the full extension code.</p>
      </div>
    </div>
  </div>
   <div class="post-item">
     <div class="featured-image" style="background-image: url('http://cdn2.vox-cdn.com/uploads/chorus_image/image/33941339/haltcatchfire.0_standard_800.0.jpg');"></div>
    <div class="post-overlay"></div>
    <div class="post-heading">
       <h3 class="post-title">
         <a class="post-link transition-link">You should click on this post title. You wont believe what happens next.</a>
      </h3>
       <p class="post-date">06/19/2015</p>
    </div>
    <div class="post-content">
      <div class="post-body">
          <p>Iâ??m currently working on a project in which I require a Slides.com presentation to control a meteor app that pushes content to subscribers whenever slides change. This required the creator of the slide deck to sync their deck to the content they created in my app. Simple enough?

But Slides.com doesnâ??t have a public API, so there is no direct way to accomplish this. I decided to create a Chrome extension that allows the author of the slide deck to authenticate their credentials with my Meteor application and sync their slide deck to the app. Check out my publicGitHub repo for the full extension code.</p>
      </div>
    </div>
  </div>
   <div class="post-item">
     <div class="featured-image" style="background-image: url('https://i.vimeocdn.com/video/477337239_1280x720.jpg');"></div>
    <div class="post-overlay"></div>
    <div class="post-heading">
       <h3 class="post-title">
         <a class="post-link transition-link">This is a Post Title</a>
      </h3>
       <p class="post-date">06/19/2015</p>
    </div>
    <div class="post-content">
      <div class="post-body">
          <p>Iâ??m currently working on a project in which I require a Slides.com presentation to control a meteor app that pushes content to subscribers whenever slides change. This required the creator of the slide deck to sync their deck to the content they created in my app. Simple enough?

But Slides.com doesnâ??t have a public API, so there is no direct way to accomplish this. I decided to create a Chrome extension that allows the author of the slide deck to authenticate their credentials with my Meteor application and sync their slide deck to the app. Check out my publicGitHub repo for the full extension code.</p>
      </div>
    </div>
  </div>
  
  
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/trianglify/0.2.1/trianglify.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.17.0/TweenMax.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js'></script>

  

    <script  src="index.js"></script>




</body>

</html>
