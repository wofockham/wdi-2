$(document).ready(function () {
  $('#add_number').click(add_number);
  $('#square').click(square_numbers);
  $('#calculate').click(custom_function);

  $('#start').click(start_timer);
  $('#stop').click(stop_timer);
});

var numbers = [];
var timerID = null;

var add_number = function () {
  var number = parseInt( $('#number').val() );
  numbers.push(number);
  display_number_box(number);
  $('#number').val('');
  $('#number').focus();
};

var square_numbers = function () {
  numbers = _.map(numbers, function (n) { return n * n; });
  show_numbers();
};

var custom_function = function () {
  numbers = _.map(numbers, calculate);
  show_numbers();
};

var calculate = function (i) {
  var formula = $('#formula').val();
  return eval(formula);
};

var empty_boxes = function () {
  $('#boxes').empty();
};

var show_numbers = function () {
  empty_boxes();
  _.each(numbers, display_number_box);
};

var display_number_box = function (n) {
  var $box = $('<div />');
  $box.addClass('box');
  $box.text( n );
  $('#boxes').prepend($box);
};

var start_timer = function () {
  timerID = setInterval(generate_random_number, 500);
};

var stop_timer = function () {
  clearInterval(timerID);
};

var generate_random_number = function () {
  var number = _.random(0, 1000);
  numbers.push(number);
  display_number_box(number);
};
