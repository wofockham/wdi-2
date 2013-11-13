$(document).ready(function () {

  $('#fetch').click(function () {

    $.get('/random.json', function (result) {
      $('#random').text( result.random );
    });

  });

});
