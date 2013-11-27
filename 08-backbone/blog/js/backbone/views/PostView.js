var blogApp = blogApp || {};

blogApp.PostView = Backbone.View.extend({
  el: $('#main'),
  initialize: function () {},
  render: function () {
    var template = Handlebars.compile(blogApp.templates.blogView);
    this.$el.html( template(this.model.toJSON()) );
  }
});