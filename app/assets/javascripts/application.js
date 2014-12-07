// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-datepicker
//= require turbolinks
//= require_tree .

// $(window).ready(function(){
//
//   _.templateSettings = {
//     interpolate: /\{\{\=(.+?)\}\}/g,
//     evaluate: /\{\{(.+?)\}\}/g
//   };
//
// var max_fields      = 10; //maximum input boxes allowed
// var wrapper         = $(".input_fields_wrap"); //Fields wrapper
// var add_button      = $(".add_field_button"); //Add button ID
//
// var x = 1; //initlal text box count
// $(add_button).click(function(e){ //on add input button click
//     e.preventDefault();
//     if(x < max_fields){ //max input box allowed
//         x++; //text box increment
//         $(wrapper).append('<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
//     }
// });
//
// $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
//     e.preventDefault(); $(this).parent('div').remove(); x--;
// })
//
//
// });


$(window).ready(function() {
    var max_fields      = 10; //maximum input boxes allowed
    var wrapper         = $(".input_fields_wrap"); //Fields wrapper
    var add_button      = $(".add_field_button"); //Add button ID

    var x = 1; //initlal text box count
    $(add_button).click(function(e){ //on add input button click
        e.preventDefault();
        if(x < max_fields){ //max input box allowed
            x++; //text box increment
            $(wrapper).append('<div><input type="text" name="mytext[]"/><a href="#" class="remove_field">Remove</a></div>'); //add input box
        }
    });

    $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
        e.preventDefault(); $(this).parent('div').remove(); x--;
    })
});
