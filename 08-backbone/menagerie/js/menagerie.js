var Animal = Backbone.Model.extend({
  urlRoot: '/animals',
  defaults: {
    type: 'animal',
    ecosystem: '',
    stripes: 0
  },

  initialize: function () {
    console.warn("I am an animal");
    this.on('change:type', function (model) {
      var type = model.get('type');
      console.warn("I am now a " + type);
    });
  }
});

$(document).ready(function () {

  var Muppets = Backbone.Collection.extend({
      model: Animal
  });

  var MuppetView = Backbone.View.extend({
    el: $('#main'),

    events: {
      "click h1": "headerClick"
    },

    initialize: function () {
      this.list = $('#muppets');
    },

    render: function () {
      // Display the heading.
      this.$el.html( $('#muppet-template').html() );

      // Display the actors.
      var template = Handlebars.compile( $('#animal-template').html() );
      this.collection.each(function (animal) {
        this.list.append( template( animal.toJSON() ) );
      }, this);
    },

    headerClick: function () {
      alert('Thank you so much for clicking on the header');
    }
  });

  var AppRouter = Backbone.Router.extend({
    routes: {
      "": "index",
      "animals/:id": "viewAnimal",
      "*actions": "defaultRoute"
    },

    index: function () {
      alert("You reached the homepage");
      var theatreView = new MuppetView({collection: theatre});
      theatreView.render();
    },
    viewAnimal: function (id) {
      alert("You are viewing animal " + id);
    },
    defaultRoute: function () {
      alert("You hit the default route");
    }
  });

  var animal = new Animal();
  var kermit = new Animal({'type': 'frog', ecosystem: 'pond'});
  var miss_piggy = new Animal({type: 'pig', ecosystem: 'dressing room'});
  miss_piggy.set('type', 'swine');

  var theatre = new Muppets([kermit, miss_piggy]);

  var approuter = new AppRouter();
  Backbone.history.start();
});

