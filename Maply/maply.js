var googleMap = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAPE6dciKIzg-bozKSVdR-BWdbe7XIZJ7s&callback=initMap";
var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: { lat: 37.1714959, lng: -83.195988 },
    zoom: 8
  });
}

 $.ajax(googleMap + map).done(function (data) {
    var googleLat = data.results[0].geometry.location.lat;
    var googleLng = data.results[0].geometry.location.lng;
    var city = data.results[0].formatted_address;

  $.ajax("https://maps.googleapis.com/maps/api/js?key=AIzaSyAPE6dciKIzg-bozKSVdR-BWdbe7XIZJ7s&callback=initMap", 
  {dataType: "jsonp"}).done(function(data) {

    console.log(data);
    $(".city").append("<li>" + city + "</li>")
    $(".list").append("<li>" + googleLat + "</li>")
    $(".list").append("<li>" + googleLng + "</li>")
    $("#submit").on('click', function () {
    });
    $("#submit").click(function () {

    });
  });
 });