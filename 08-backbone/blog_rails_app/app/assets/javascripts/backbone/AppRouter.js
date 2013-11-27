var blogApp = blogApp || {};

blogApp.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:slug': 'getPost'
  },

  index: function () {
    var appView = new blogApp.AppView({collection: blogApp.posts});
    appView.render();
  },

  getPost: function (slug) {
    var post = blogApp.posts.get(slug);
    var view = new blogApp.PostView({ model: post });
    view.render();
  },

  // This one's for you, Riana
  easyNavigate: function (url) {
    this.navigate(url, true);
  }
});