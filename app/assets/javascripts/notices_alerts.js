
// fading in and out alerts and notices

$(function() {
  $('.alert').delay(530).fadeIn('normal', function(){
    $(this).delay(1750).fadeOut();
    });
});