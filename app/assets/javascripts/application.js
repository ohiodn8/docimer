//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require best_in_place
//= require best_in_place.jquery-ui
//= jquery.matchHeight
//= require js/summernote
//= require js/bootstrap-grid
// require js/bootstrap.min
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
