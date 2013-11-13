$(document).ready(function () {

  $('#random_link').click(function (event) {
    event.preventDefault();

    var max_rand = $('#max_rand').val();

    // Basic validation.
    if (! max_rand) {
      alert('Please enter a maximum random number');
      $('#max_rand').focus();
      return;
    }

    var data = {
      max_rand: max_rand
    };

    $.get('/random.json', data, function (result) {
      $('#random').text( result.random );
    });

  });

});
