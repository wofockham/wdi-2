var field = ["Dunaden", "Green Moon", "Red Cadeaux", "Sea Moon", "Brown Panther", "Fiorente", "Foreteller", "Dandino", "Ethiopia", "Fawkner", "Mourayan", "Seville", "Super Cool", "Masked Marvel", "Mount Athos", "Royal Empire", "Voleuse de Coeurs", "Hawkspur", "Simenon", "Ibicenco", "Verema", "Dear Demi", "Tres Blue", "Ruscello"];

var players = [];

var show_players = function () {
  $('#players').empty();
  for (var i = 0; i < players.length; i++) {
    $('<li>' + players[i] + '</li>').appendTo('#players');
  }
};

$(document).ready(function () {
  $('#add_player_form').submit(function () {
    // Retrieve the new player name and add it to the array of players.
    var name = $('#player_name').val();
    players.push(name);

    $('#player_name').val('');
    show_players();

    // Prevent the form submission.
    return false;
  });
});