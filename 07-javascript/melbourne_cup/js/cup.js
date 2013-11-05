var field = ["Dunaden", "Green Moon", "Red Cadeaux", "Sea Moon", "Brown Panther", "Fiorente", "Foreteller", "Dandino", "Ethiopia", "Fawkner", "Mourayan", "Seville", "Super Cool", "Masked Marvel", "Mount Athos", "Royal Empire", "Voleuse de Coeurs", "Hawkspur", "Simenon", "Ibicenco", "Verema", "Dear Demi", "Tres Blue", "Ruscello"];

var available = field.slice(0); // Make a copy of the field, so we can remove horses.

var players = {};

var show_players = function () {
  $('#players').empty();
  for (name in players) {
    // This is pretty gross and complex and could be tidied up using templates.
    var $li = $('<li><span class="name">' + name + '</span><button class="buy">buy</button></li>');
    var $ol = $('<ol>');
    for (var i = 0; i < players[name].horses.length; i++) {
      $('<li>' + players[name].horses[i] + '</li>').appendTo($ol);
    }
    $ol.appendTo($li);
    $li.appendTo('#players');
  }
  console.log(JSON.stringify(players));
};

var show_field = function () {
  $('#field').empty();
  for (var i = 0; i < field.length; i++) {
    $('<li>' + field[i] + '</li>').appendTo('#field');
  }
};

// Shuffles the remaining horses and returns one, or returns undefined when they're gone.
var random_stake = function () {
  if (field.length) {
    field = field.sort(function () {
      // Sort by a returning a random value between -0.5 and 0.5
      return 0.5 - Math.random();
    });
    return field.pop();
  } else {
    alert('No more horses');
  }
}

update_prizes = function(price) {
  var pool = (field.length - 1) * price; // Subtract 1 because wooden spoon gets a refund
  var prizes = [
    {place: '1st', prize: pool * 0.5},
    {place: '2nd', prize: pool * (0.5 * 2/3)},
    {place: '3rd', prize: pool * (0.5 * 1/3)},
    {place: 'Wooden spoon', prize: price} // Wooden spoon
  ];

  $('#prizes').empty();
  for (var i = 0; i < prizes.length; i++) {
    var html = ['<li>$', prizes[i].prize.toFixed(2), ': ', prizes[i].place, '</li>'].join('');
    $(html).appendTo('#prizes');
  };
};

$(document).ready(function () {
  show_field();

  $('#add_player_form').submit(function () {
    // Retrieve the new player name and add it to the array of players.
    var name = $('#player_name').val();
    players[name] = {
      horses: []
    };

    $('#player_name').val('');
    show_players();

    // Prevent the form submission.
    return false;
  });

  $('#price_form').submit(function (event) {
    var price = $('#price').val();
    price = parseFloat(price);
    update_prizes(price);
    event.preventDefault();
  }).trigger('submit');

  $('#players').on('click', '.buy', function () {
    var player = $(this).closest('li').find('.name').text();
    var horse = random_stake();
    if (horse) {
      players[player].horses.push(horse);
    }
    show_players();
  });
});