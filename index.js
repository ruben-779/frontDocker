console.log("HOLAAAAAAAAAAAAAAAAAAAAAAAA");
function getUSer() {
  axios.get("http://localhost:3001/users").then(function (response) {
    // handle success
    console.log(response.data);
    document.getElementById("user").innerHTML = response.data.newUser;
  });
}
getUSer();
