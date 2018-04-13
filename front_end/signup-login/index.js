$("#sign-up-form-button").click(function() {
  $(".su_form_area").show(500);
  console.log("Jose, SU Form Has Opened()");
});

// ------------------------------ VALIDATION ----------------------------- //

// ------ No Name Char Length Equal TO Zero OR Greater Than 10 Chars -------- //

function sufnLengthCheck() {
  $("#fnme").on("input", function() {
    var fnme = $("#fnme").val();

    if (fnme.length === 0 || fnme.length > 10) {
      console.log(fnme);
      $("#fnme").addClass("error");
      return;
    }

    $("#fnme").removeClass("error");
  });
}

// ------ No Numbers In Input Value -------//

function sufnNumCheck() {
  $("#fnme").on("input", function() {
    var fnme = $("#fnme").val();
    var nums = "1234567890";

    for (var i in nums) {
      if (fnme.includes(nums[i])) {
        console.log(fnme);
        $("#fnme").addClass("error");
        return;
      }

      $("#fnme").removeClass("error");
    }
  });
}

// ------ No Name Char Equal To Zero OR Greater Than 10 Chars -------- //

function sulnLengthCheck() {
  $("#lnme").on("input", function() {
    var lnme = $("#lnme").val();

    if (lnme.length === 0 || lnme.length > 18) {
      console.log(lnme);
      $("#lnme").addClass("error");
      return;
    }

    $("#lnme").removeClass("error");
  });
}

// ------ No Numbers In Input Value -------//

function sulnNumCheck() {
  $("#lnme").on("input", function() {
    var lnme = $("#lnme").val();
    var nums = "1234567890";

    for (var i in nums) {
      if (lnme.includes(nums[i])) {
        console.log(lnme);
        $("#lnme").addClass("error");
        return;
      }

      $("#lnme").removeClass("error");
    }
  });
}

// ------ e-Mail No Char = 0 -------- //

function suemailLengthCheck() {
  $("#email").on("input", function() {
    var email = $("#email").val();

    if (email.length === 0) {
      console.log(email);
      $("#email").addClass("error");
      return;
    }

    $("#email").removeClass("error");
  });
}

// ------ e-Mail Has All Properties Of an e-Mail -------- //

function suemailPropCheck() {
  $("#email").on("input", function() {
    var email = $("#email").val();

    if (!(email.includes("@") && email.includes(".com"))) {
      console.log(email);
      $("#email").addClass("error");
      return;
    }

    $("#email").removeClass("error");
  });
}

// ------ SU Create Username Char Count Is Not Zero OR Not Greater Than 15 -------- //

function sucunLengthCheck() {
  $("#cun").on("input", function() {
    var cun = $("#cun").val();

    if (cun.length === 0 || cun.length > 15) {
      console.log(cun);
      $("#cun").addClass("error");
      return;
    }

    $("#cun").removeClass("error");
  });
}

// ------ SU Create Username No @ Char --------- //

function sucunNoSPChar() {
  $("#sucun").on("input", function() {
    var sucun = $("#sucun").val();
    var spchar = "!@#$%^&*()";

    for (var i in spchar) {
      if (sucun.includes(spchar[i])) {
        console.log(sucun);
        $("#sucun").addClass("error");
      }

      $("#sucun").removeClass("error");
    }
  });
}

// ------ SU Create Password Char Count Is Not Zero OR Not Greater Than 12 -------- //

function sucpwLengthCheck() {
  $("#cpw").on("input", function() {
    var cpw = $("#cpw").val();

    if (cpw.length === 0 || cpw.length > 12) {
      console.log(cpw);
      $("#cpw").addClass("error");
    }

    $("#cpw").removeClass("error");
  });
}

// function postSignupToServer() {
//   $("#signup").on("submit", function(event) {
//     event.preventDefault();
//     console.log("Trying Create unme: " + $("#cun").val());
//     console.log("Trying Create pw: " + $("#cpw").val());

//     $.ajax({
//       url: "http://localhost:8080/userSignup",
//       type: "POST",
//       data: JSON.stringify({
//         usrnme: $("#cun").val(),
//         pw: $("#cpw").val()
//       }),
//       contentType: "application/json; charset=utf-8",
//       dataType: "json"
//     })
//       .then(function successfulSignUp(data) {
//         event.preventDefault();
//         console.log("Trying Log Data");
//         console.log(data);
//         localStorage.setItem("key", data.key);
//         // window.location = "../page/index.html?username=" + $("#cun").val();
//         window.location = "../page/index.html";
// window.location.replace();
//       })
//       .catch(function unsuccessfulSignUp(response) {
//         console.log("Error Creating Account!");
//         console.log("Status: " + response.status);
//         console.log("JSON: " + response.responseJSON);
//       });
//   });
// }

// ------------------------------------------------------ DO NOT MESS WITH THIS -------------------------------------------- //
// ------------------------------------------------------------------------------------------------------------------------- //

function postSignupToServer() {
  $("#signup").on("submit", function(event) {
    event.preventDefault();
    console.log("Trying Create unme: " + $("#cun").val());
    console.log("Trying Create pw: " + $("#cpw").val());

    $.ajax({
      url: "http://localhost:8080/userSignup",
      method: "POST",
      dataType: "json",
      crossDomain: true,
      data: JSON.stringify({
        usrnme: $("#cun").val(),
        pw: $("#cpw").val(),
        sessionkey: ""
      }),
      contentType: "application/json; charset=utf-8"
    })
      .then(function successfulSignUp(data) {
        event.preventDefault();
        console.log(data);
        window.localStorage.setItem("key", data.key);
        // window.location = "../page/index.html";
        window.location.replace("../page/index.html");
      })
      .catch(function unsuccessfulSignUp(response) {
        console.log("Status: " + response.status);
        console.log("JSON: " + response.responseJSON);
      });
  });
}

function getLoginFromServer() {
  $("#login").on("submit", function(event) {
    event.preventDefault();
    console.log("Trying Log unme: " + $("#unme").val());
    console.log("Trying Log pw: " + $("#pw").val());

    $.ajax({
      url: "http://localhost:8080/userLogin",
      method: "POST",
      data: JSON.stringify({
        usrnme: $("#unme").val(),
        pw: $("#pw").val()
      }),
      contentType: "application/json; charset=utf-8",
      dataType: "json"
    })

      .then(function successfulLogin(data) {
        event.preventDefault();
        console.log(data);
        window.localStorage.setItem("key", data.key); // --- Comment (prevents redirect to show data)
        window.location = "../page/index.html";

        // /Users/josevargas9817/FINAL-PROJECT/front_end/
      })
      .catch(function unsuccessfulLogin(response) {
        alert("Username Of Password Is Not Correct");
        console.log("Error Matching Account Information!");
        console.log("Status: " + response.status);
        console.log("JSON: " + response.responseJSON);
      });
  });
}

// function userLogout() {
//   $("#logout").click(function(event) {
//     event.preventDefault();
//     console.log(event);
//   });
//   $.ajax({
//     url: "http://localhost:8080/logout/",
//     method: "POST",
//     crossDomain: true,
//     contentType: "application/json; charset=utf-8",
//     dataType: "json"
//   })
//     .then(function successfulLogout(response) {
//       window.location.replace("index.html");
//     })
//     .catch(function unsuccessfulLogout(err) {
//       console.log(err);
//     });
// }
function main() {
  sufnLengthCheck();
  sufnNumCheck();
  sulnLengthCheck();
  sulnNumCheck();
  suemailLengthCheck();
  suemailPropCheck();
  sucpwLengthCheck();
  sucunLengthCheck();
  sucunNoSPChar();
  sucpwLengthCheck();
  postSignupToServer();
  getLoginFromServer();
}

$(main);
