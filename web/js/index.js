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
      }
      TweenMax.to(triangle, .5, props);
    } else if (direction === 'in' && offsetLeft < postItemWidth){   
      var props = {
        fill: "#fff",
        stroke: "#fff",
        ease: defaultEasing,
        delay: ((triangles.length) - (index)) / 1000
      }
      TweenMax.to(triangle, 1, props);
      
    } else if (direction === 'out' && offsetLeft < postItemWidth ){
       var props = {
        fill: "#27073A",
        stroke: "#27073A",
        ease: defaultEasing,
        delay: ((triangles.length) - (index)) / 1000
      }
      TweenMax.to(triangle, .3, props);
      
    } else if (direction === 'inAndOut'){
       var propsIn = {
         fill: "#27073A",
         stroke: "#27073A",
         ease: defaultEasing,
         delay: ((triangles.length) - (index)) / 1000
       }
       
       var propsOut = {
         fill: "#fff",
         stroke: '#fff',
         opacity: 0,
         ease: defaultEasing,
         delay: ((triangles.length) - (index)) / 900
       }
       
       TweenMax.to(triangle, .6, propsIn);
       TweenMax.to(triangle, 1, propsOut);
    }
  })                 
}

function animatePostsOut(posts){
  var activePost = $('.post-item.active');
  var offset = activePost.offset().top
  console.log(offset);
  
  _.each(posts, function(post){
    if (!$(post).hasClass('active')){
      TweenMax.to(post, .3, {opacity: 0, ease: defaultEasing})
    } else {
       TweenMax.to(post, .6, {top: -offset, ease: defaultEasing, delay: .5})
    }
  })
}

function animatePostsIn(posts){
  _.each(posts, function(post){
    if (!$(post).hasClass('active')){
      TweenMax.to(post, .3, {opacity: 1, top: 0, ease: defaultEasing});
    }
  })
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
  })

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
  })
});