var blogApp = blogApp || {};

$(document).ready(function () {

  blogApp.templates = {
    appView: $('#app-template').html(),
    blogList: $('#blog-list-template').html(),
    blogView: $('#blog-view-template').html()
  };

  blogApp.posts = new blogApp.Posts();
  blogApp.posts.fetch({
    success: function () {
      blogApp.router = new blogApp.AppRouter();
      Backbone.history.start();
    }
  });
});