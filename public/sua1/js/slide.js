var headerMain = $('.header-bottom');
var toTop = headerMain[0].offsetTop;

$(window).scroll(function(){
    if(document.documentElement.scrollTop > toTop){
      headerMain.addClass('header-fixed');
    }
    else{
      headerMain.removeClass('header-fixed');
    }
})

$(document).ready(function(){
    $('.box-info-modern-list').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay:true,
        dots:true,
        arrows:false
    });
});
$(document).ready(function(){
    $('.product-list').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        // autoplay:true,
        dots:true,
        arrows:false
    });
});

$(document).ready(function(){
    $('.ourteam-list').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay:true,
        dots:true,
        arrows:false
    });
});
$(document).ready(function(){
    $('.customer-ask').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay:true,
        dots:true,
        arrows:false
    });
});
$(document).ready(function(){
    $('.brand-list').slick({
        infinite: true,
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay:true,
        dots:false,
        arrows:false
    });
});