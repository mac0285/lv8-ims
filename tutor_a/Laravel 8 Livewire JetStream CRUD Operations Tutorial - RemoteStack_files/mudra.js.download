/**
 * Custom Mudra Script
 */

(function($){

	$(document).ready(function(){

		"use strict";

		/* Initialize Superfish Menu */
		$('ul.sf-menu').superfish({
			delay: 100,
			speed: 'fast',
			autoArrows: false
		});

		/* Initialize SlickNav Mobile Menu */
		$('#header-menu').slicknav({
			label: '',
			prependTo: '#slick-mobile-menu'
		});

		/* Header Search */
		$(".search-toggle").on('click', function(event){
			event.stopPropagation();
			$("#header-bar .header-search").slideToggle();
		});
		$(".mobile-toggle").on('click', function(event){
			event.stopPropagation();
			$("#header-main .header-search").slideToggle();
		});
		$(document).on('click', function(){
			$(".header-search").hide();
		});
		$(".header-search").on('click', function(event){
			event.stopPropagation();
		});

		/* Back To Top */
		var offset = 250;
		var speed = 300;
		var duration = 500;
		$('.back-to-top').hide();
		$(window).scroll(function(){
			if ($(this).scrollTop() < offset) {
				$('.back-to-top').fadeOut(duration);
			} else {
				$('.back-to-top').fadeIn(duration);
			}
		});
		$('.back-to-top').on('click', function(){
			$('html, body').animate({scrollTop:0}, speed);
			return false;
		});

	});

})(jQuery);
