$(document).on('ready page:load', function(){
  $('.reservations').hide();
  $('.switch-btn').on('click', function(){
    $('.reservations').toggle();
  });
});