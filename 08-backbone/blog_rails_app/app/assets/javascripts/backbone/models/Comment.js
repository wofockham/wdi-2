var blogApp = blogApp || {};

blogApp.Comment = Backbone.Model.extend({
  urlRoot: '/comments',
  schema: {
    post_id: 'Hidden',
    author: 'Text',
    blather: 'TextArea'
  },
  defaults: {
    post_id: null,
    author: '',
    blather: ''
  }
});