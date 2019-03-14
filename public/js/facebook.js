function initFB() {
    // alert("lzl testing");
    FB.init({
        appId      : '555376054961251',
        status     : true,
        xfbml      : true,
        version    : 'v3.2' // or v2.6, v2.5, v2.4, v2.3
    });
}

function test() {
    FB.api("/me", {fields: "first_name"}, function(response) {
        console.log(response.first_name)
    });

}

function fbLogin() {
    // FB.login(function(response) {
    //     if (response.authResponse) {
    //     console.log('Welcome!  Fetching your information.... ');
    //     FB.api('/me', function(response) {
    //     console.log('Good to see you, ' + response.name + '.');
    //     });
    //     } else {
    //     console.log('User cancelled login or did not fully authorize.');
    //     }
    // }, {scope: "email,first_name,last_name,gender,birthday",
    //     return_scopes: true});
    fillForm();
    getLoginStatus();
}

function getLoginStatus() {
    // alert("get login status called");
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            // The user is logged in and has authenticated your
            // app, and response.authResponse supplies
            // the user's ID, a valid access token, a signed
            // request, and the time the access token 
            // and signed request each expire.
            var uid = response.authResponse.userID;
            var accessToken = response.authResponse.accessToken;
            console.log(uid);
            console.log(accessToken);
            console.log("you are connected to facebook");

        } else if (response.status === 'not_authorized') {
            // The user hasn't authorized your application.  They
            // must click the Login button, or you must call FB.login
            // in response to a user gesture, to launch a login dialog.
            console.log("not authorised buhuhu");
        } else {
            // The user isn't logged in to Facebook. You can launch a
            // login dialog with a user gesture, but the user may have
            // to log in to Facebook before authorizing your application.
            console.log("you are not logged in to facebook");
        }
    });
}

function fillForm() {

    FB.api("/me", {fields: "first_name,last_name,email,birthday,gender"}, function(response) {
        
        document.getElementById("first_name").value = response.first_name;
        document.getElementById("last_name").value = response.last_name;
        document.getElementById("email").value = response.email;
        document.getElementById("birthday").value = "24/12/1996";
        document.getElementById("maleRadioButton").checked = "checked";
        // document.getElementById("address").value = "25A zuo lin road";
        // document.getElementById("postal_code").value = "123456";
    });


}