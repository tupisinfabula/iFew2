var ready;
ready = function(){

  $('#show-last-workout').click(function(e){
    e.preventDefault();
    $('.table-responsive-workout').fadeToggle();
  });

};
$(document).ready(ready);
$(document).on('turbolinks:load', ready);