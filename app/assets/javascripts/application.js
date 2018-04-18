//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require best_in_place
//= require best_in_place.jquery-ui
//= jquery.matchHeight
//= require js/summernote
//= require js/bootstrap-grid
//= require turbolinks
//= require_tree .


// Best In Place
$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
}); 

// SummerNote
$(document).ready(function() {
    $('#summernote').summernote({
      toolbar: [
        // [groupName, [list of button]]
        ['style', ['style', 'bold', 'italic', 'underline', 'clear']],  
        ['font', ['strikethrough', 'superscript', 'subscript']],
        ['fontname', ['fontname']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']],
        ['insert', ['table', 'link', 'picture', 'video', 'hr']],
        ['table', ['bootstrap-grid']],  
        ['view', ['fullscreen', 'codeview']],
        ['help', ['help']]
      ]
    });
});


// Sticky Footer 
;(function(window, $, undefined){
	'use strict';
	$.fn.stickyFooter = function()
	{

		var windowHeight = 0,
			offset = 0,
			$div = this;

		// Call initial positioning
		position();

		$(window).bind('resize.stickyFooter', function(){
			position();
		});

		function position(){

			if( $div.css('position') !== 'static' )
			{
				offset = $div.outerHeight(true);
			}else{
				offset = 0;
			}
			windowHeight = window.innerHeight
				? window.innerHeight
				: $(window).height();
			if( $('body').outerHeight(true) + offset < windowHeight ){
				$div.css({
					position	: 'fixed',
					bottom		: 0
				});
			}else{

				$div.css({
					position	: 'static'
				});
			}
		}
		return this;
	};
}(window, jQuery));