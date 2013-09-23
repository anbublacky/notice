// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require ckeditor/init
//= require ckeditor/config
//= require bootstrap-datepicker
//= require colorbox-rails
//= require timelineJS/embed
//= require readmore.js
//= require readmore.min.js
//= require_tree .

$(document).ready(function(){
$('#dod').datepicker({
  format: 'd-M-yyyy'
});
$('#dob').datepicker({
  format: 'd-M-yyyy'  
});
$('.date_select_jquery').datepicker({
  format: 'd-M-yyyy'  
});

$('.readmore').readmore({
  speed: 75,
  maxHeight: 500
});

$('article').readmore({
  afterToggle: function(trigger, element, more) {
    if(! more) { // The "Close" link was clicked
      $('html, body').animate( { scrollTop: element.offset().top }, {duration: 100 } );
    }
  }
});
   $('#timelinetab').bind('change', function (e) {
        // e.target is the new active tab according to docs
        // so save the reference in case it's needed later on
        window.activeTab = e.target;
        // display the alert
        alert("hello");
        // Load data etc
    });

});