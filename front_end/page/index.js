function showSiteFront() {
  var HTML =
    '<div id="js-data"> <p><h1 id="branding">- Upgrade Your Stance Today! -</h1>';
  HTML +=
    '<img src="https://i.pinimg.com/originals/36/e1/f8/36e1f83d8d9d28866af60d584ea20925.jpg" alt="Fuel Hostage">';
  HTML +=
    "<h4> <a href='https://www.wheelsforless.com/offroad_wheels_and_tires.htm'><b>Complete Wheel Set Ups Here! </b></a></h4> <h4><b>Life Time Warrantee!</h4></b>";
  HTML += "</div><br>";
  var le_sde = "<h1>SPECS</h1>";

  le_sde += "<hr>";
  le_sde += "<h2><b>Why you should do it!</b></h2><hr>";
  le_sde += "<h3>* Upgrades your stance!</h3>";
  le_sde += "<h3>* Better clearance!</h3>";
  le_sde += "<h3>* Better pull!</h3>";
  le_sde += "<h3>* Looks great!</h3>";
  le_sde += "<h3>* Girls love it!</h3>";
  $(".area-main").html(HTML);
  $(".de").html(le_sde);
}
function wheels(x) {
  var Wheels =
    '<p><a onclick="showWheel(' +
    "'" +
    x.image +
    "'" +
    ", " +
    "'" +
    x.brand +
    "'" +
    "," +
    "'" +
    x.model +
    "'" +
    ", " +
    x.price +
    ", " +
    x.stock +
    ')"><img src=' +
    x.image +
    ' width="225" height="225"/></a></p>';
  return Wheels;
}

function showWheel(image, brand, model, price, stock) {
  console.log(image, brand, model, price, stock);
  var HTML =
    '<div id="js-data"><h1 id="branding">- Upgrade Your Stance Today! -</h1>';
  HTML += '<img id="wheelshwn" src=' + image + ' alt="Fuel Hostage">';
  HTML +=
    "<h4> <a href='https://www.wheelsforless.com/offroad_wheels_and_tires.htm'><b>Complete Wheel Set Ups Here! </b></a></h4> <h4><b>Life Time Warrantee!</h4></b>";
  HTML +=
    "<a href='https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjNlprXlLXaAhVqm-AKHdPCDrcQFggnMAA&url=https%3A%2F%2Fwww.customwheeloffset.com%2F&usg=AOvVaw2ASiZ1Dc7xV5tZOYUuFMkR' id='ordbtn' > Order It!</a>";
  HTML += "</div><br>";
  var le_sde = "<h1>SPECS</h1>";

  le_sde += "<hr>";
  le_sde +=
    "<img src='https://images.customwheeloffset.com/wheels/helo/he901/he901_black_white.jpg' width='40' height='40'><hr>";
  le_sde += "<h3><b>Brand: </b>" + brand + "</h3><hr>";
  le_sde += "<h3><b>Model: </b>" + model + "</h3><hr>";
  le_sde += "<h3><b>Price(4): $</b>" + price + "</h3><hr>";
  le_sde += "<h3><b>Popularity(0-25): </b>" + stock + "</h3><hr>";

  $(".area-main").html(HTML);
  $(".de").html(le_sde);
}

// function showWheel(image, brand, dscrptn, model, price, stock) {
//   console.log(image, brand, dscrptn, model, price, stock);
//   var HTML =
//     '<div id="js-data"><h1 id="branding">- Upgrade Your Stance Today! -</h1>';
//   HTML += '<img id="wheelshwn" src=' + image + ' alt="Fuel Hostage">';
//   HTML +=
//     "<h4> Complete Wheel Set Ups Here </h4> <h4>Life Time Warrantee!</h4>";
//   HTML += "</div><br>";
//   var le_sde = "<h1>SPECS</h1>";

//   le_sde += "<hr>";
//   le_sde += "<h2>" + dscrptn + "</h2>";
//   le_sde += "<h3>" + brand + "</h3>";
//   le_sde += "<h3>" + model + "</h3>";
//   le_sde += "<h3>" + price + "</h3>";
//   le_sde += "<h3>" + stock + "</h3>";

//   $(".area-main").html(HTML);
//   $(".de").html(le_sde);
// }t
function logoutButton(id) {
  $("#button").html(
    '<button onclick="Logout(' + id + ')"><b>Log-Out</b></button>'
  );
}
function Logout(id) {
  $.ajax({
    url: "http://localhost:8080/logout/" + id,
    method: "POST",
    crossDomain: true,
    contentType: "application/json; charset=utf-8",
    dataType: "json"
  })
    .then(function successfulShowWheels(response) {
      event.preventDefault();
      console.log(data);
      window.location("../signup-login/index.html");
    })

    .catch(function successfulShowWheels(response) {
      console.log("Status: " + response.status);
      console.log("JSON: " + response.responseJSON);
    });
}
function showAllWheels() {
  $.ajax({
    url: "http://localhost:8080/accessories",
    method: "POST",
    crossDomain: true,
    contentType: "application/json; charset=utf-8",
    dataType: "json"
  })
    .then(function successfulShowWheels(response) {
      console.log(response);
      var wheel =
        '<div id="wheel"><h1><strong>WHEELS</strong></h1><hr></div>' +
        response
          .map(function(x) {
            return wheels(x);
          })
          .join("");
      $("#wheel-list").html(wheel);
    })
    .catch(function unsuccessfulShowWheels(err) {
      console.log(err);
    });
}

function draw() {
  showSiteFront();
  showAllWheels();
}

function main() {
  draw();
  logoutButton();
}

$(main());
