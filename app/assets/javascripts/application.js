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
//= require leaflet
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

var hash = document.location.hash;
var prefix = "tab_";
if (hash) {
    $('.nav-tabs a[href='+hash.replace(prefix,"")+']').tab('show');
} 

// Change hash for page-reload
$('.nav-tabs a').on('shown', function (e) {
    window.location.hash = e.target.hash.replace("#", "#" + prefix);
});


 $('[data-toggle="tab"]').click(function(e) {
//        alert('click working');
        localStorage.setItem('lastTab1', $(e.target).attr('href'));    

//        e.preventDefault();
        $this = $(this);
        var loadurl = $(this).attr('href');
//        var targ = $(this).attr('data-target');
//        $(targ).load(loadurl, function(){
            $this.tab('show');
//        });
        return false;
    }); 
    
  //go to the latest tab, if it exists:
  var lastTab1 = localStorage.getItem('lastTab1');  
//  alert(lastTab1);
  if (lastTab1) {
    $('a[href="' + lastTab1 + '"]').click();
  }  
    

$('article').readmore({
  speed: 75,
  maxHeight: 50
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