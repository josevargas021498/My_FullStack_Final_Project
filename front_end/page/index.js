function showSiteFront() {
  var HTML =
    '<div id="js-data"> <p><h1 id="branding">- Upgrade Your Stance Today! -</h1>';
  HTML +=
    '<img src="https://i.pinimg.com/originals/36/e1/f8/36e1f83d8d9d28866af60d584ea20925.jpg" alt="Fuel Hostage">';
  HTML +=
    "<h4> Complete Wheel Set Ups Here </h4> <h4>Life Time Warrantee!</h4>";
  HTML += "</div><br>";
  var le_sde = "<h1>SPECS</h1>";

  le_sde += "<hr>";
  le_sde += "<h2>Why you should do it!</h2>";
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
    x.image +
    ", " +
    x.brand +
    ", " +
    x.dscrptn +
    "," +
    x.model +
    ", " +
    x.price +
    ", " +
    x.stock +
    ')"><img src=' +
    x.image +
    ' width="225" height="225"/></a></p>';
  return Wheels;
}
function showWheel(image, brand, dscrptn, model, price, stock) {
  var HTML =
    '<div id="js-data"><h1 id="branding">- Upgrade Your Stance Today! -</h1>';
  HTML += '<img id="wheelshwn" src=' + image + ' alt="Fuel Hostage">';
  HTML +=
    "<h4> Complete Wheel Set Ups Here </h4> <h4>Life Time Warrantee!</h4>";
  HTML += "</div><br>";
  var le_sde = "<h1>SPECS</h1>";

  le_sde += "<hr>";
  le_sde += "<h2>" + dscrptn + "</h2>";
  le_sde += "<h3>" + brand + "</h3>";
  le_sde += "<h3>" + model + "</h3>";
  le_sde += "<h3>" + price + "</h3>";
  le_sde += "<h3>" + stock + "</h3>";

  $(".area-main").html(HTML);
  $(".de").html(le_sde);
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
        '<div id="wheel"><h1>Wheels</h1><hr></div>' +
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
}

$(main());
