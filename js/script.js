
$(document).ready(function(){
    $(".owl-carousel").owlCarousel();
  });
$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    autoplay:true,
    autoplayTimeout:3000,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})
$(document).ready(function(){
    $('.accordion-header').click(function(){
        $(this).toggleClass('active');
        $(this).children('.accordion-body').slideToggle();
    });

});






 