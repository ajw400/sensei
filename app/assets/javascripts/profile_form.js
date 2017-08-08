$(document).ready(function() {

  $('.teacher-toggle').on('click', function(event) {
    if ($('.teacher-toggle').prop('checked')) {
      $('.teacher').removeClass('hidden');
    }
  });

});


