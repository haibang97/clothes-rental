
const fillPostal = async() => {
    address = document.getElementById("address").value;
    var string = "https://developers.onemap.sg/commonapi/search?searchVal="+ address.replace(" ","+") +"&returnGeom=Y&getAddrDetails=Y";
    const response = await fetch(string);
    const json = await response.json();
    document.getElementById("postal_code").value = json["results"][0]["POSTAL"];
}   