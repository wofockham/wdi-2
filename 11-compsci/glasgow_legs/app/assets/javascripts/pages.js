$(document).ready(function () {
  var map;

  var display_map = function (lat, long, zoom) {
    canvas = $('#map_canvas')[0];

    if (! canvas) {
      return; // I QUIT
    }

    var mapOptions = {
      center: new google.maps.LatLng(lat, long),
      zoom: zoom,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(canvas, mapOptions);
  };

  var add_marker = function (lat, long, title) {
    var latlng = new google.maps.LatLng(lat, long);
    var marker = new google.maps.Marker({position: latlng, map: map, title: title});
  };

  display_map(55.870303, -4.251763, 13);

  $.get('/destinations.json', 'json').done(function (locations) {
    $.each(locations, function (i, loc) {
      add_marker(loc.latitude, loc.longitude, loc.address);
    });
  });
});
