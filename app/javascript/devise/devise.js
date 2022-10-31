// document.querySelector("#");
const loginEmail = document.querySelector("#user_email");
const alert_email_login = document.querySelector("#alert-email-login");

loginEmail.addEventListener("change", (e) => {
  if(!e.target.value.includes("@gmail.com") || e.target.value.length <= 10){
    loginEmail.style.border = "1px solid red";
    loginEmail.style.color = "red"
    alert_email_login.style.display = "contents"
  }else{
    loginEmail.style.border = "1px solid #ced4da";
    loginEmail.style.color = "black"
    alert_email_login.style.display = "none"
  }
});

const loginPassword = document.querySelector("#user_password");
const passwordAlert = document.querySelector("#alert-password-login")
loginPassword.addEventListener("change", (e) => {
  if(e.target.value.length < 6){
    loginPassword.style.border = "1px solid red";
    loginPassword.style.color = "red";
    passwordAlert.style.color = 'red';
  }else{
    loginPassword.style.border = "1px solid #ced4da";
    loginPassword.style.color = "black"
    passwordAlert.style.color = "grey"
  }
});