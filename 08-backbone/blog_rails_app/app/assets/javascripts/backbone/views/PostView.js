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
  add_comment: function (event) {
    event.preventDefault();
    var author = this.$el.find('#author').val();
    var blather = this.$el.find('#blather').val();
    var post_id = this.$el.find('#post_id').val();
    var comment = new blogApp.Comment({
      post_id: post_id,
      author: author,
      blather: blather
    });
    comment.save();
    var view = this;
    this.model.fetch().done(function () {
      view.render();
    });
    return false;
  }
});