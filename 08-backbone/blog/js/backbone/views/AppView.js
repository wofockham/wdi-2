var blogApp = blogApp || {};

blogApp.AppView = Backbone.View.extend({
  el: $('#main'),
  initialize: function () {
    this.$el.html( blogApp.templates.appView );
    this.list = $('#posts');
  },
  render: function () {
    this.collection.each(function (post) {
      var view = new blogApp.PostListView({ model: post });
      this.list.append( view.render().el );
    }, this);
  }
});
