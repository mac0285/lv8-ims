/**
 * Sticky Header Bar
 */

(function($){

	$(document).ready(function(){

		"use strict";

		var headerBarOffset = $('#header-bar').offset().top;

		if ($(window).width() > 959 ) {
			$(window).scroll(function(){
				var currentScroll = $(this).scrollTop();
				if (currentScroll > headerBarOffset) {
					$('#header-bar').addClass('sticky-header');
				} else {
					$('#header-bar').removeClass('sticky-header');
				}
			});
		}

	});

})(jQuery);
