$(document).ready(function () {
  $('#new_butterfly, .edit_butterfly').on('ajax:success', function (event, data) {
    //alert('Thank you for creating ' + data.name);
    var $p = $('<p>');
    $p.text( data.name );
    $p.append( ' <i>' + data.latin_name + '</i>');

    $p.appendTo('#butterfly_list');

    $('form').get(0).reset();

  });
});
