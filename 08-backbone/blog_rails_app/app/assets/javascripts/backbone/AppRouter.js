var blogApp = blogApp || {};

blogApp.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },

  index: function () {
    var appView = new blogApp.AppView({collection: blogApp.posts});
    appView.render();
  },

  getPost: function (id) {
    var post = blogApp.posts.get(id);
    var view = new blogApp.PostView({ model: post });
    post.fetch({
      success: function () {
        view.render();
      }
    });
  },

  // This one's for you, Riana
  easyNavigate: function (url) {
    this.navigate(url, true);
  }
});