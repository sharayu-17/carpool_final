<!--%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href=" https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
	
<link rel="stylesheet" type="text/css" href="style.css">

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 100%;
	height: 500px;
	position: relative;
	margin: auto;
}

.container {
	text-align: center;
	margin: auto;
	position: center;
}
body {background-color: white;}
</style>
</head>

<body>
<div>
	<div>	
		<nav class="navbar navbar-light style="background-color: #A5FF33"">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="Home.jsp">CARPOOL</a>
				</div>
				<div class="nav navbar-nav">
					<ul>
						<li class="nav-item active"><a href="#">Home</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Ride<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="FindRide.jsp">Join a ride</a></li>
								<li><a href="OfferRide.jsp">Create a ride</a></li>
							</ul></li>
						<li><a href="AboutUs.jsp">About us</a></li>
					</ul>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="Register.jsp"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="Login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</nav>

		<div class="container">
			<br>
				<h1>
						<strong>Carpool</strong>
				</h1>
					<p>
						<b>A green way to go</b>
					</p>
					<img src="img/carpool.jpg" width="760" height="545">
					<p>
						<h2>Carpooling helps you save money</h2>
						You can save money on gas and such by diving up the gas fees among your carpool passengers. The more people you have the more you can save. 
					</p>
					<img src="img/advantage.jpg" width="760" height="545">
					<p>
						<h2>Help the environment</h2>
						Carpooling cuts down on the number of cars and vehicle son the road. Fewer cars means there is less carbon and other gasses and pollution getting into the air. This protects the environment by keeping the air, water, and land cleaner.
					</p>
					<img src="img/index1.jpg" width="760" height="545">
					<p>
						<h2>Helps combat rising traffic congestion</h2>
						By filling the extra seats in your car, there are fewer drivers, and therefore fewer cars crowding the roads.
					</p>
					<img src="img/car.png" width="760" height="545">
					<p>
						<h2>Helps you make new friends</h2>
						Carpooling is also a wonderful way to meet interesting people, get to know the people you work with or go to school with, and to make new friends!
					</p>
			<br>
		<br>
		<footer class="container-fluid bg-2 text-center" id="contact">
  <div>
  <b>
  <h4><p><a href="SafetyTips.jsp" target="_blank">Safety
											Disclaimer and Tips</a></p>
  <p><a href="PrivacyPolicy.html" target="_blank">Privacy
											Policy</a></p>
  <p><a href="Feedback.jsp" target="_blank">Feedback /
											Suggestion</a></p></h4>
  <p class="font-Arial font-10" align="center">Carpool Pvt. Ltd.
						© 2018</p>
  </b>
</div>  
</footer>
</div></body>
</html>

