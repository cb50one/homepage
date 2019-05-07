$(function(){
  var posion = $('.contact').offset().top
  $('.top-contact').click(function() {
    $('body,html').animate({scrollTop:posion}, 1000, 'swing');
    return false;
  });
});