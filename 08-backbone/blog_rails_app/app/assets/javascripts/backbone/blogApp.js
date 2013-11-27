var blogApp = blogApp || {};

$(document).ready(function () {

  blogApp.templates = {
    appView: $('#app-template').html(),
    blogList: $('#blog-list-template').html(),
    blogView: $('#blog-view-template').html()
  };

  blogApp.posts = new blogApp.Posts([
    new blogApp.Post({ title: 'first', slug: 'first', content: 'first post'}),
    new blogApp.Post({ title: 'second', slug: 'second', content: 'second post'}),
    new blogApp.Post({ title: 'third', slug: 'third', content: '<p>third post</p>'}),
    new blogApp.Post({ title: 'fourth', slug: 'fourth', content: 'fourth post'}),
    new blogApp.Post({ title: 'fifth', slug: 'fifth', content: 'fifth post'})
  ]);

  blogApp.router = new blogApp.AppRouter();
  Backbone.history.start();

});