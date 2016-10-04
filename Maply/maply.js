// pull location from Google API
function googleLoc(location) {
var googleKey = "AIzaSyAPE6dciKIzg-bozKSVdR-BWdbe7XIZJ7s";
var googleMap = "https://maps.googleapis.com/maps/api/js?key=" + googleKey + "&callback=initMap";

// initializes Google Map w/ lat, lng
function initMap(card) {
  $("#map".append((card)))
  var map = new google.maps.Map(document.getElementById('map'), {
    center: { lat: 37.1714959, lng: -83.195988 },
    zoom: 8
  });
}

// pulls info from Google Maps
  $.ajax({googleMap,dataType: "json"})


// gets zip, city location
    var googleLat = data.results[0].geometry.location.lat;
    var googleLng = data.results[0].geometry.location.lng;
    var city = data.results[0].formatted_address;
   
}

//adds function to submit button to get info when clicked
 $("#submit").on("click", function() {
    var location = $('#zip').val();
    var displayLocation = "";
    var googleLat = 0.0;
    var googleLng = 0.0;

     $('#zip').val('');
  
  });




