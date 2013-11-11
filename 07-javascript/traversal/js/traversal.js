$(document).ready(function () {
  $('li button').click(function () {
    $(this).closest('li').css('border', '1px solid pink');
  });
});
