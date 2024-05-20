<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
<%@include file="assets/all_css.jsp"%>
<style>
* {
	padding: 0;
	margin: 0;
}

#main_div {
	background-image: url("image/home-img.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
}

#box {
	background: rgba(255, 255, 255, 0.2);
	box-shadow: 0 4px 30px rgba(225, 225, 225, 0.1);
	border-radius: 10px;
	width: 30rem; /* 35 */
	height: 50rem;  /* 40 */
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 1rem;
	margin-top:3rem;
	margin-bottom: 3rem;
}

#box>h3 {
	color: white;
	margin-top: 1rem;
}

.formcontrol {
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: flex-start;
	position: relative;
	margin-bottom: 1.5rem;
}

.label {
	font-weight: 700;
	font-family: sans-serif;
	font-size: 1rem;
	color: white;
	padding-left: 1rem;
}

.formcontrol>input {
	background: rgba(255, 255, 255, 0.2);
	box-shadow: 0 4px 30px rgba(225, 225, 225, 0.1);
	border-radius: 20rem;
	height: 3rem;
	width: 23rem;
	border: 2px solid #f0f0f0;	
	padding: 0 1rem;
	font-size: 1rem;
	font-weight: 500;
}

.formcontrol input:focus{
    outline:0;
    border-color: #777;
}

#button {
	box-shadow: 0 4px 30px rgba(190, 190, 190, 0.183);
	background: rgba(255, 255, 255, 0.2);
	padding: 1rem 3rem;
	border: 1px solid white;
	border-radius: 40px;
	font-weight: 600;
	font-family: sans-serif;
	font-size: 1rem;
	cursor: pointer;
}

#button:hover {
	transform: scale(1.05);
}

.message {
	font-size: 0.9rem;
    position: absolute;
    bottom: -2.7rem; /* Adjust this value as needed */
    left: 1rem;
}

 #confirmMessage{
	font-size: 0.9rem;
    position: absolute;
    bottom: -1.8rem; /* Adjust this value as needed */
    left: 1rem;
}

.message.error {
	color: red;
}

.message.success {
font-size: 0.9rem;
    position: absolute;
    bottom: -1.5rem; /* Adjust this value as needed */
    left: 1rem;
	color: green;
}
</style>
</head>
<body>
	
	<div id="main_div">

		<form action="signup" method="post" class="form" id="form">
			<div id="box">
				<h3>Sign up</h3>
				<div class="formcontrol">
					<label for="name" class="label"> Full Name</label> 
					<input type="text" name="fullName" id="name" placeholder="Enter full name" required  />
				</div>
				<div class="formcontrol">
					<label for="profile_name" class="label">Profile Name</label> 
					<input type="text" name="profileName" id="profilename" placeholder="Enter profile name" required />
				</div>
				<div class="formcontrol">
					<label for="email" class="label">Email</label> 
					<input type="email" name="email" id="email" placeholder="abc@gmail.com" required />
				</div>
				<div class="formcontrol">
					<label for="password" class="label">Password</label> 
					<input type="password" name="password" id="password" placeholder="Abc@1" required />
					<small id="passwordMessage" class="message"></small>
				</div>
				<div class="formcontrol">
					<label for="confirm_password" class="label">Confirm Password</label> 
					<input type="password" name="confirmPassword" id="confirmpassword" placeholder="Re-enter password" required />
					<small id="confirmMessage" class="message"></small>
				</div>
				<button id="button" type="submit">SUBMIT</button>
				<p class="text-white">
					I have an account? <a href="login.jsp" class="text-decoration-none">LOGIN</a>
				</p>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		<%@include file="assets/js/formvalidation.js" %>
	</script>
</body>
</html>
