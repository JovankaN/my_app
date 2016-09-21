// this file will contain any site-wide functions


$(document).on('turbolinks:load', function(){
    $(".img-zoom").elevateZoom({width: 400});
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });//specified where the image assets are found
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});

