$(document).ready(function () {
  $('#add_number').click(add_number);
});

var numbers = [];

var add_number = function () {
  var number = parseInt( $('#number').val() );
  numbers.push(number);
  var $box = $('<div />');
  $box.addClass('box');
  $box.text( number );
  $('#boxes').prepend($box);
  $('#number').val('');
  $('#number').focus();
};