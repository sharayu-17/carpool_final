<!--%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<nav class="myNav navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Login Form</a>
	</nav>
	<center>
<img src="img\user.png" width="360" height="345">
</center><div>
	<div class="row">
		<div class="container card form_container">
			<form class="modal-content animate" method="get" action="LoginServlet">
				<div class="form-row">

					<div class="form-group col-md-6">
						<label for="login-user" class="hide">Username</label> <input
							type="text" class="form-control input-sm c-square" name="uname"
							id="uname" placeholder="Enter username" required=""
							data-bind="value: signin.username">
					</div>
				</div>
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="login-password" class="hide">Password</label> <input
							type="password" class="form-control input-sm c-square"
							name="password" id="password" placeholder="Enter password"
							required="" data-bind="value: signin.password">
					</div>
				</div>
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<a href="ForgotPassword.jsp" class="c-btn-forgot c-post-title">Forgot
							Your Password ?</a><br>
						<button type="submit"
							class="btn c-theme-btn btn-md c-btn-uppercase c-btn-bold c-btn-square c-btn-login">Login</button>
					</div>
				</div>
				
				<div class="clearfix">
					<div
						class="c-content-divider c-divider-sm c-icon-bg c-bg-grey c-margin-b-20">
						<span style="width: 110px"></span>
					</div>
					<ul class="c-content-list-adjusted">
						<!--<li> 
              			<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
              </li>-->
					</ul>
				</div>
		</div>
		
		</form>
	</div>
	<div class="modal-footer c-no-border">
		<span class="c-text-account">Don't Have An Account Yet ?</span> <a
			href="Register.jsp" data-toggle="modal" data-dismiss="modal"
			class="btn c-btn-dark-1 btn c-btn-uppercase c-btn-bold c-btn-slim c-btn-border-2x c-btn-square c-btn-signup">Signup!</a>
	</div>
	</div>
	</div>
</body>
</html>