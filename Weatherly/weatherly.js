var google = "https://maps.googleapis.com/maps/api/geocode/json?address=";
 var darkSkyKey = "8fa98e53470b4d3f106745f4661d9a1f/";
 var googleKey = "&key=AIzaSyAPE6dciKIzg-bozKSVdR-BWdbe7XIZJ7s";
$(function(){
  $("#submit").click(function(location){
    var zip = $("#zip").val();
    if (!zip) return;
    console.log(zip);
  
  $.ajax(google + zip + "&key=AIzaSyAPE6dciKIzg-bozKSVdR-BWdbe7XIZJ7s" ).done(function(data){
     var googleLat = data.results[0].geometry.location.lat;
     var googleLng = data.results[0].geometry.location.lng;
     var city = data.results[0].formatted_address;
 
   $.ajax("https://api.darksky.net/forecast/" + darkSkyKey + googleLat + "," + googleLng, { dataType: "jsonp"}).done(function(data) {

        console.log(data);
                var temp = data.currently.temperature
                var condition = data.currently.summary
                var rain = data.currently.precipProbability
                var high = data.daily.temperatureMax
                $(".city").append("<li>" + city + "</li>")
                $(".tempPrint").append("<li>" + temp + "</li>")
                $(".conditionPrint").append("<li>" + condition + "</li>")
                $(".precip").append("<li>" + rain + "</li>")
                $(".list").append("<li>" + googleLat + "</li>")
                $(".list").append("<li>" + googleLng + "</li>")
                $("#submit").on('click', function () {
                });
                $("#submit").click(function(){

                });
            });
        });
    });
});