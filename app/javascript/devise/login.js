const loginPassword = document.querySelector("#user_email");
const alert_email_login = document.querySelector("#alert-email-login");

loginPassword.addEventListener("change", function(e) {
  if(!e.target.value.includes("@gmail.com") || e.target.value.length <= 10){
    loginPassword.style.border = "1px solid red";
    loginPassword.style.color = "red"
    alert_email_login.style.display = "contents"
  }else{
    loginPassword.style.border = "1px solid #ced4da";
    loginPassword.style.color = "black"
    alert_email_login.style.display = "none"
  }
});