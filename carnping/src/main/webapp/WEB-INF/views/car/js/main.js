/*  ---------------------------------------------------
    Template Name: Directing
    Description:  Directing directory listing HTML Template
    Author: Colorlib
    Author URI: https://colorlib.com
    Version: 1.0
    Created: Colorlib
---------------------------------------------------------  */

'use strict';

(function ($) {

    
    $(".scroll_reply").on("click", function(){
        // $(this) : 클릭이벤트가 발생한 div 요소 
        //$(this).next(); : 클릭이벤트가 발생 div 뒤에 있는 p
        
        // 보여지는 상태면 사라지게, 안보이면 나타나게
        const $reply = $(".ul_reply3"); //jQuery 방식으로 선택된 요소를 변수에 담음.
        if($reply.css("display") == "none"){
            
            // 기존꺼는 닫히면서 지금꺼만 열리게
            // $($reply).slideup();
            // $("p").slideUp();
            
            //보여지게끔
            //$reply.css("display", "block");
            $reply.slideDown(); 
        }else{ // 보이는 상태

            // 안보여지게끔
            $reply.slideUp(); 
        }
    });


    /*------------------
        Preloader
    --------------------*/
    $(window).on('load', function () {
        $(".loader").fadeOut();
        $("#preloder").delay(200).fadeOut("slow");
    });

    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });

    /*------------------
		Navigation
	--------------------*/
    $(".mobile-menu").slicknav({
        prependTo: '#mobile-menu-wrap',
        allowParentLinks: true
    });
    
    /*--------------------------
    Testimonial Slider
    ----------------------------*/
    var testimonialSlider = $(".testimonial__slider");
    testimonialSlider.owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        dots: false,
        nav: true,
        navText: ["<span class='arrow_left'><span/>", "<span class='arrow_right'><span/>"],
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: false,
        startPosition: 'URLHash',
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
    });

    /*-----------------------------
        Listing Details Slider
    -------------------------------*/
    $(".listing__details__gallery__slider").owlCarousel({
        loop: true,
        margin: 20,
        items: 4,
        dots: true,
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true,
    });

    /*-----------------------
		Price Range Radius
	------------------------ */
    var rangeSlider = $(".price-range-radius"),
        radius = $("#radius");
    rangeSlider.slider({
        range: 'min',
        min: 0,
        max: 2,
        value: 1,
        slide: function (event, ui) {
            radius.val(ui.value + 'km');
        }
    });
    radius.val(rangeSlider.slider("value") + 'km');

    /*-----------------------
		Price Range Slider
	------------------------ */
    var rangeSliderPrice = $(".price-range"),
        minamount = $("#minamount");
        rangeSliderPrice.slider({
        range: 'min',
        min: 0,
        max: 80,
        value: 20,
        slide: function (event, ui) {
            minamount.val('$' + ui.value);
        }
    });
    minamount.val('$' + rangeSliderPrice.slider("value"));

    /*--------------------------
        Select
    ----------------------------*/
    $("select").niceSelect();

    /*------------------
		Single Product
	--------------------*/
    $('.listing__details__gallery__slider img').on('click', function () {

        var imgurl = $(this).data('imgbigurl');
        var bigImg = $('.listing__details__gallery__item__large').attr('src');
        if (imgurl != bigImg) {
            $('.listing__details__gallery__item__large').attr({
                src: imgurl
            });
        }
    });

    /*-------------------
		Quantity change
	--------------------- */
    $(".nice-scroll").niceScroll({
        cursorcolor: "#a8a8a8",
        cursorwidth: "8px",
        background: "rgba(168, 168, 168, 0.3)",
        cursorborder: "",
        autohidemode: false,
        horizrailenabled: false
    });

    $(".filter.nice-scroll").niceScroll({
        cursorcolor: "#a8a8a8",
        cursorwidth: "8px",
        background: "rgba(168, 168, 168, 0.3)",
        cursorborder: "",
        autohidemode: true,
        horizrailenabled: false
    });

    /*------------------
		Barfiller
	--------------------*/
    $('#bar1').barfiller({
        barColor: "#f03250",
    });

    $('#bar2').barfiller({
        barColor: "#f03250",
    });

    $('#bar3').barfiller({
        barColor: "#f03250",
    });

    $('#bar4').barfiller({
        barColor: "#f03250",
    });

    $('#bar5').barfiller({
        barColor: "#f03250",
    });

    /*------------------
		Magnific
	--------------------*/
    $('.video-popup').magnificPopup({
        type: 'iframe'
      });

})(jQuery);