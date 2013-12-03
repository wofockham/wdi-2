var harryPotterPost = {
  title: 'What Really Happened To Dumbledore',
  date: 'Yesterday',
  body: 'You are not going to <b>believe</b> this...'
};

$(document).ready(function () {
    var source = $('#post-template').html();
    var postTemplate =  Handlebars.compile(source);

    Handlebars.registerHelper('fullname', function (first, last) {
      //return 'Mr or Mrs or Miss ' + first + ' ' + last;
      return ['Mr or Mrs or Miss', first, last].join( ' ' );
    });

    $.ajax({
      type: 'GET',
      url: 'http://localhost:3000/posts/1.json',
      dataType: 'json'
    }).done(function (data) {
      $('body').append( postTemplate(data) );
    }).error(function (data) {
      console.log("something bad happened", data);
    });

    $('body').append( postTemplate(harryPotterPost) );
});
