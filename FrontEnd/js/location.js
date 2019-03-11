
const fillPostal = async() => {
    address = document.getElementById("address").value;
    var string = "https://developers.onemap.sg/commonapi/search?searchVal="+ address.replace(" ","+") +"&returnGeom=Y&getAddrDetails=Y";
    const response = await fetch(string);
    const json = await response.json();
    document.getElementById("postal_code").value = json["results"][0]["POSTAL"];
}   

const fillAddress = async() => {
    address = document.getElementById("postal_code").value;
    var string = "https://developers.onemap.sg/commonapi/search?searchVal="+ address +"&returnGeom=Y&getAddrDetails=Y";
    const response = await fetch(string);
    const json = await response.json();
    console.log(json);
    document.getElementById("address").value = json["results"][0]["ADDRESS"].slice(0,-17);
}   