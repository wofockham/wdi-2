var blogApp = blogApp || {};

blogApp.Post = Backbone.Model.extend({
  idAttribute: 'slug',
  defaults: {
    title: 'Untitled Post',
    slug: 'untitled-post',
    content: 'Lorem ipsum'
  }
});

blogApp.Posts = Backbone.Collection.extend({
  model: blogApp.Post
});