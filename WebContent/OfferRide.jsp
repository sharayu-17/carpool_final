<!--%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%-->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Offer Ride</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<img src="img/download.JPG" width="960" height="350">

	<section class="main-content">
		<div class="container">
			<div class="row">
				<div class="container card form_container">
					<form method="get" id="register" class="signup-form"
						action="OfferRideServlet">
						<div class="col-sm-12 col-md-12 col-xs-12">

							<div class="form-row">
								<div class="page-sub-title textcenter">
									<h3>Enter Details</h3>
									<div class="line"></div>
								</div>
							</div>
						</div>
						<form>
							<div class="form-group col-md-6">
								<label class="hide">Username</label> <input type="text"
									data-bind="value: uname" name="uname"
									class="form-control input-sm c-square">

							</div>
							<br>
							<div class="form-group col-md-6">
								<label class="hide">Car model</label> <input type="text"
									data-bind="value: model" name="model"
									class="form-control input-sm c-square">

							</div>
							<br>
							<div class="form-group col-md-6">
								<label class="hide">Car color</label> <input type="text"
									data-bind="value: color" name="color"
									class="form-control input-sm c-square">
							</div>
							<br>
							<div class="form-group col-md-6">
								<label class="hide">Vehicle Registration Number</label> <input
									data-bind="value: vregno" name="vregno" type="text"
									class="form-control input-sm c-square">
							</div>
							<br>
							<div class="form-group col-md-6">
								<label class="hide">License Number</label> <input type="text"
									data-bind="value: license" name="license"
									class="form-control input-sm c-square">
							</div>
							<br>
							<div class="field">
							<label class="hide">Source</label>
								<select id="source" name="source">
									<option value="default">From</option>
									<option>Dadar</option>
									<option>Thane</option>
									<option>Ghatkopar</option>
									<option>Kurla</option>
									<option>Vashi</option>
									<option>CST</option>
									<option>Bandra</option>
									<option>Andheri</option>
									<option>Kalyan</option>
								</select>
							</div>
							<br>
							<div class="field">
							<label class="hide">Destination</label>
								<select id="destination" name="destination">
									<option value="default">To</option>
									<option>Dadar</option>
									<option>Thane</option>
									<option>Ghatkopar</option>
									<option>Kurla</option>
									<option>Vashi</option>
									<option>CST</option>
									<option>Bandra</option>
									<option>Andheri</option>
									<option>Kalyan</option>
								</select>
							</div>
							<br>
							<div class="field">
							<label class="hide">Date</label>
								<input name="date" type="date" placeholder="Date"
									class="datepicker">
							</div>
							<br>
							<div class="field">
							<label class="hide">Number of seats</label>
								<select id="seats" name="seats">
									<option value="default">0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>
							</div>
							<br>
							<div class="form-group">
								<button type="submit" data-bind="click:Save" class="btn">Submit</button>
							</div>
				</div>
			</div>
		</div>

	</section>

</body>
</html>