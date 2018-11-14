<!--%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="validation.js" type="text/javascript"></script>

</head>
<body>
	<nav class="myNav navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Registration Form</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>
	<center>
		<img src="img\register.jpg" width="360" height="245">
	</center>
	<div class="row">
		<div class="container card form_container">
			<form method="post" class="signup-form" action="RegistrationServlet">
				<div class="form-row">
				<!-- Name -->
					<div class="form-group col-md-6">
						<label for="name">Name</label> <input type="text"
							class="form-control" name="fname" id="fname"
							placeholder="Enter your name" required>
					</div>
				<!-- Email -->
					<div class="form-group col-md-12">
						<label for="inputEmail4">Email</label> <input type="email"
							class="form-control" name="email" id="email"
							placeholder="example@example.com" required>
					</div>
				<!-- Mobile -->
				<!-- <div class="form-group col-md-6">
						<label for="inputMobile">Mobile</label> <input type="number"
							class="form-control" name="contact" id="contact"
							placeholder="XXXXXXXXXX" required>
					</div> -->
				<!-- 
					<div class="form-group col-md-6">
						<label for="inputDOB">Date of Birth</label> <input type="date"
							class="form-control" name="dob" id="inputDOB"
							placeholder="31/12/99">
					</div>
				-->
					<div class="form-group">
						<label class="sr-only" for="inputGroupUsername">Username</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
							</div>
							<!-- Username -->
							<input type="text" class="form-control" name="uname" id="uname"
								placeholder="Username" required>
						</div>
					</div>
					<!-- Password -->
					<div class="form-group">
						<label for="password">Password</label> <input
							type="password" class="form-control" name="password"
							id="password" placeholder="Password" required>
					</div>
					<!-- 
					<div class="form-group col-md-6">
						<label for="confirm_password">Confirm Password</label> <input
							type="password" class="form-control" name="confirm_password"
							id="confirm_password" placeholder="Password" required>
					</div>
					-->
				</div>
				<div class="form-group">
					<label for="inputAddress">Address</label> <input type="text"
						class="form-control" name="address" id="inputAddress"
						placeholder="1234 Main St">
				</div>

		<!--		<div class="form-row">
					<div class="form-group col-md-5">
						<label for="inputCity">City</label> <select id="inputCity"
							class="form-control">
							<option selected>Choose...</option>
							<option value="Mumbai">Mumbai</option>
							<option value="Chennai">Chennai</option>
							<option value="Pune">Pune</option>
							<option value="Bangalore">Bangalore</option>
						</select>
					</div>
					<div class="form-group col-md-5">
						<label for="inputState">State</label> <select id="inputState"
							class="form-control">
							<option selected>Choose...</option>
							<option value="Maharashtra">Maharashtra</option>
							<option value="TamilNadu">Tamil Nadu</option>
							<option value="Karnataka">Karnataka</option>
						</select>
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">Zip</label> <input type="text"
							class="form-control" id="inputZip">
					</div>
				</div> -->
				<div class="form-group">
					<div class="form-check">
						<p>
							Already a user? Skip to <a class="login_ref" href="Login.jsp"
								id="checkuser">Login</a>
						</p>
					</div>
				</div>
				<button type="submit" value="register" class="btn btn-primary">Sign up</button>
			</form>
		</div>
	</div>
</body>
</html>