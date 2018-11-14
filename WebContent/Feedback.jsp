<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Feedback</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

	<nav class="myNav navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand">Feedback Form</a>
	</nav>
	<br>
	<p>Please let us know your feedback regarding our application
							and/or suggest any improvements that we should incorporate:)</p>
	<div class="row">
		<div class="container card form_container">
			<form>
				<div class="form-row">
					<form>			

						<div class="form-group col-md-6">
							<label class="hide">Email</label> <input type="text" data-bind="value: email"
								class="form-control input-sm c-square" placeholder="Email">
						</div>
						<br>
						<div class="form-group col-md-6">
							<label class="hide">Name</label> <input type="text" data-bind="value: uname"
								class="form-control input-sm c-square" placeholder="Name">
						</div>
						<br>
						<div class="form-group col-md-6">
							<label class="hide">Mobile</label> <input 
								data-bind="value: mobileNumber, enable: !isLogin()" type="text"
								maxlength="10" class="form-control input-sm c-square"
								placeholder="Mobile">
						</div>
						<br>
						<div class="form-group col-md-6">
							<textarea data-bind="value: feedback"
								class="form-control  c-square input-sm"
								placeholder="Write comment here ..." name="message" rows="5"></textarea>
						</div>
						<br>
						<div class="form-group">
							<button type="submit" data-bind="click: feedbackSave" class="btn">Submit</button>
						</div>
				</div>
		</div>
	</div>


</body>
</html>