$(document).ready(function () {
  colorize_boxes();

  $('#new_priority').click(function () {
    $('.new-priority-form').removeClass('invisible');
    $('#new_priority').hide();
    $('#priority_id').val('');
  });
  $('#create_priority').click(create_priority);
  $('#cancel_priority').click(function () {
    $('.new-priority-form').addClass('invisible');
    $('#new_priority').show();
    $('.new-priority-form form')[0].reset();
    return false;
  });

  $('#priorities').on('click', '.color', edit_priority);
});

var create_priority = function () {
  var name = $('#name').val();
  var color = $('#color').val();
  var value = $('#value').val();
  var id = $('#priority_id').val();

  $.ajax({
    url: '/priorities',
    type: 'post',
    dataType: 'json',
    data: {id: id, name: name, color: color, value: value}
  }).done(display_priority).done(function () {
    $('.new-priority-form').addClass('invisible');
    $('#new_priority').show();
    $('.new-priority-form form')[0].reset(); // Clear out the form for next time.
  });

  return false;
};

var edit_priority = function () {
  $('.new-priority-form').removeClass('invisible');
  $('#new_priority').hide();

  var color = $(this).text();
  var name = $(this).siblings('.name').text();
  var id = $(this).siblings('.id').text();
  var value = $(this).siblings('.value').text();

  $('#name').val(name);
  $('#color').val(color);
  $('#value').val(value);
  $('#priority_id').val(id);
};

var display_priority = function (priority) {
  var $li = $('<li/>');
  var $name = $('<span/>').addClass('name').text(priority.name);
  var $color = $('<span/>', {
    'class': 'color',
    'text': priority.color
  }).css('background-color', priority.color);
  var $value = $('<span/>').addClass('value invisible').text(priority.value);
  var $id = $('<span/>').addClass('id invisible').text(priority.id);

  $li.append($name).append($color).append($value).append($id);
  $li.appendTo('#priorities');
};

var colorize_boxes = function () {
  $('.color').each(change_text_to_color);
};

var change_text_to_color = function (index, element) {
  var $box = $(element);
  var color = $box.text();

  $box.css('background-color', color);
  // $box.text('');
  $box.removeClass('invisible');
};


