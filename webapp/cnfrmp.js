function checkpassword() {
	let password = document.getElementById("pass").value;
	let confirmpassword = document.getElementById("confirm-password").value;
	console.log(password, confirmpassword);
	let message = document.getElementById("message");
	
	if(password.length !=0){
		if(password == confirmpasswrod) {
			message.textContent = "passwords match";
			message.style.backgroundColor = "#3ae374";
		}
		else {
			message.textContent ="passwords don't match"
			message.style.backgroundColor = "#ff4d4d";
		}
	}
	else {
		alert("password can't be empty!");
	}
}