$(document).ready(function () {
  var Animal = Backbone.Model.extend({
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

  var Muppets = Backbone.Collection.extend({
      model: Animal
  });

  var MuppetView = Backbone.View.extend({
    el: $('#main'),

    initialize: function () {
      this.list = $('#muppets');
    },

    render: function () {
      this.$el.html( $('#muppet-template').html() );
      this.collection.each(function (animal) {
        var template = Handlebars.compile( $('#animal-template').html() );
        this.list.append( template( animal.toJSON() ) );
      }, this);
    }
  });

  var animal = new Animal();
  var kermit = new Animal({'type': 'frog', ecosystem: 'pond'});
  var miss_piggy = new Animal({type: 'pig', ecosystem: 'dressing room'});
  miss_piggy.set('type', 'swine');

  var theatre = new Muppets([kermit, miss_piggy]);

  var theatreView = new MuppetView({collection: theatre});

  theatreView.render();
});

