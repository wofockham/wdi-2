var blogApp = blogApp || {};

blogApp.Comment = Backbone.Model.extend({
  urlRoot: '/comments',
  defaults: {
    post_id: null,
    author: '',
    blather: ''
  }
});