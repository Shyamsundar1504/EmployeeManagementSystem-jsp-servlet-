var password = document.getElementById("password");
		var confirmPassword = document.getElementById("confirmpassword");
		var passwordMessage = document.getElementById("passwordMessage");
		var confirmMessage = document.getElementById("confirmMessage");

		password.addEventListener("input", validatePassword);
		confirmPassword.addEventListener("input", checkPasswordMatch);

		function validatePassword() {
			var passwordValue = password.value;
			var regex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/;
			if (!regex.test(passwordValue)) {
				passwordMessage.textContent = "Password must be at least 8 characters long, contain one uppercase letter, one number, and one symbol.";
				passwordMessage.className = "message error";
			} else {
				passwordMessage.textContent = "Password is valid.";
				passwordMessage.className = "message success";
			}
			checkPasswordMatch();
		}

		function checkPasswordMatch() {
			
			if (password.value !== confirmPassword.value) {
				confirmMessage.textContent = "Passwords do not match.";
				confirmMessage.className = "message error";
			} else {
				confirmMessage.textContent = "Passwords match.";
				confirmMessage.className = "message success";
			}
		}

		