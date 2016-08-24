// this file will contain any site-wide functions

$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]'  });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});