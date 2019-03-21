function sleep(miliseconds) {
    var currentTime = new Date().getTime();
 
    while (currentTime + miliseconds >= new Date().getTime()) {
    }
 }

// function initFB() {
//     // alert("lzl testing");
//     FB.init({
//         appId      : '555376054961251',
//         status     : true,
//         xfbml      : true,
//         version    : 'v3.2' // or v2.6, v2.5, v2.4, v2.3
//     });
//     logout();    
// }


// function fbLogin() {
//     FB.login(function(response) {
//         if (response.authResponse) {
//         console.log('Welcome!  Fetching your information.... ');
//         FB.api('/me', function(response) {
//         console.log('Good to see you, ' + response.name + '.');
//         });
//         } else {
//         console.log('User cancelled login or did not fully authorize.');
//         }
//     }, {scope: "email,first_name,last_name,gender,birthday",
//         return_scopes: true});
//     fillForm();
//     getLoginStatus();
//     alert("testing");
// }

function getLoginStatus() {
    // alert("get login status called");
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            var uid = response.authResponse.userID;
            var accessToken = response.authResponse.accessToken;
            console.log(uid);
            console.log(accessToken);
            console.log("you are connected to facebook");
            fillForm();

        } else if (response.status === 'not_authorized') {
            console.log("not authorised buhuhu");
        } else {
            console.log("you are not logged in to facebook");
        }
    });
}

function fillForm() {

    FB.api("/me", {fields: "first_name,last_name,email,birthday,gender"}, function(response) {
        
        document.getElementById("firstname").value = response.first_name;
        document.getElementById("lastname").value = response.last_name;
        document.getElementById("email").value = response.email;
        document.getElementById("birthday").value = "24/12/1996";
        document.getElementById("maleRadioButton").checked = "checked";
        // document.getElementById("address").value = "25A zuo lin road";
        // document.getElementById("postal_code").value = "123456";
    });

}

// function autoFill() {
//     // FB.getLoginStatus(function(response) {
//     //     if (response.status === 'connected') {
//     //         fillForm();
//     //     } else {
//     //         console.log("not connected oops");
//     //     }

//     //     setTimeout(autoFill(), 500);
//     // });
//     function hi() {console.log("hi");}
//     setTimeout(hi(), 2);

// }

function logout() {
    FB.logout(function(response) {
        getLoginStatus();
    })
}
