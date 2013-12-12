
var Deck = {
  suits: '♠ ♥ ♦ ♣'.split(' '),
  values: 'A 2 3 4 5 6 7 8 9 10 J Q K'.split(' '),

  cards: [],

  init: function () {
    for (var i = 0; i < this.suits.length; i++) {
      for (var j = 0; j < this.values.length; j++) {
        this.cards.push( this.suits[i] + this.values[j] );
      }
    }
  },

  shuffle: function () {
    this.cards = this.cards.sort(function (a, b) {
      console.log('Comparing', a, b);
      return 0.5 - Math.random(); // Random number between -0.5 and 0.5
    });
  },

  bubbleSort: function () {

  },

  is_sorted: function () {

  }
}

Deck.init();
console.log('New deck', Deck.cards);
Deck.shuffle();
console.log('Shuffled deck', Deck.cards);
