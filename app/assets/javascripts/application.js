// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require rails-ujs
//= require bootstrap-sprockets
//= require lightbox-bootstrap
//= require turbolinks
//= require_tree .

// Zeigt ein Tooltip an
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});


// Generiert ein passendes Dropdownmenu passend zur uebergebenen studytype_id
function showCourseofstudy(studytype_id, courseofstudy_id) {
  $.ajax({
      url: "/moderator/assoziations/" + studytype_id + "/dropdown",
      type: "GET",
      success: showCouseofstudies,
      dataType: "json"
  });
    
  function showCouseofstudies(courseofstudies) {
    var content = $('#js-courseofstudies');
    content.empty();
    var html = '<div class="form-group" id="js-courseofstudies">' +
          '<label class="control-label col-lg-2" for="assoziation_courseofstudy_id">' +
          'Courseofstudy</label><div class="col-lg-10">' +
          '<select name="assoziation[courseofstudy_id]" id="assoziation_courseofstudy_id" ' +
          'remote="true" class="form-control"><option value="">Please select</option>';
    for(i = 0; i < courseofstudies.length; i++) {  
      if(courseofstudy_id ==  courseofstudies[i].id) {
        html += '<option selected value="' + courseofstudies[i].id+ '">' + courseofstudies[i].name + '</option>';
      } else {
        html += '<option value="' + courseofstudies[i].id+ '">' + courseofstudies[i].name + '</option>';
      }
    }
    html += '</select></div></div>';
    content.append(html);
  }
}
  
$(document).on("change", "#select-studytype", function() {
    showCourseofstudy($(this).val(), 0);
});