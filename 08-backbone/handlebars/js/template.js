$(document).ready(function () {
    var source = $('#post-template').html();
    var postTemplate =  Handlebars.compile(source);

    $.ajax({
      type: 'GET',
      url: 'http://localhost:3000/posts/1.json',
      dataType: 'json'
    }).done(function (data) {
      $('body').append( postTemplate(data) );
    }).error(function (data) {
      console.log("something bad happened", data);
    });
});
