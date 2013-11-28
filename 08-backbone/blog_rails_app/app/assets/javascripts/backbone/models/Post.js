var blogApp = blogApp || {};

blogApp.Post = Backbone.Model.extend({
  //idAttribute: 'slug',
  urlRoot: '/posts',
  defaults: {
    title: 'Untitled Post',
    slug: 'untitled-post',
    content: 'Loading...'
  }
});

blogApp.Posts = Backbone.Collection.extend({
  model: blogApp.Post,
  url: '/posts'
});