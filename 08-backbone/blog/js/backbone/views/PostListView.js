var blogApp = blogApp || {};

blogApp.PostListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'viewPost'
  },
  initialize: function () {

  },
  render: function () {
    var template = Handlebars.compile(blogApp.templates.blogList);
    this.$el.html( template( this.model.toJSON() ) );
    return this;
  },
  viewPost: function () {
    blogApp.router.navigate('posts/' + this.model.get('slug'), true);
  }
});
