var blogApp = blogApp || {};

blogApp.PostView = Backbone.View.extend({
  el: $('#main'),
  events: {
    "submit #comment_form": "add_comment"
  },
  initialize: function () {},
  render: function () {
    var template = Handlebars.compile(blogApp.templates.blogView);
    this.$el.html( template(this.model.toJSON()) );
  },
  add_comment: function () {
    console.log('form submitted', this);
    return false;
  }
});