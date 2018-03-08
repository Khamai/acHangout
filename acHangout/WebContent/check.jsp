<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Login Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
		<h2 align=center>Sign up</h2>
	
		<br /> <br /> <br />
		<h2>DETAIL</h2>
		<form class="form-horizontal" action="loginServlet">
			<div class="form-group">
				<label class="control-label col-sm-2" for="firstname">First
					Name:</label>
				<div class="col-sm-10">
					<input type="text" style="width: 300px;" class="form-control"
						id="firstname" placeholder="Enter firstname" name="firstname"
						required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="lastname">Last
					Name:</label>
				<div class="col-sm-10">
					<input type="text" style="width: 300px;" class="form-control"
						id="lastname" placeholder="Enter lastname" name="lastname"
						required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="sex">Gender:</label>
				<div class="col-sm-10">
					<label class="radio-inline"><input type="radio" name="sex"
						required="required">Male</label>&emsp;&emsp;&emsp; <label
						class="radio-inline"><input type="radio" name="sex"
						required="required">Female</label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="username">Username:</label>
				<div class="col-sm-10">
					<input type="text" style="width: 300px;" class="form-control"
						id="username" placeholder="Enter username" name="username"
						required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pass">Password:</label>
				<div class="col-sm-10">
					<input type="password" style="width: 300px;" class="form-control"
						id="pass" placeholder="Enter password" name="pass"
						required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Email:</label>
				<div class="col-sm-10">
					<input type="email" style="width: 300px;" class="form-control"
						id="email" placeholder="Enter email" name="email"
						required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="tel">Telephone:</label>
				<div class="col-sm-10">
					<input type="tel" style="width: 300px;" class="form-control"
						id="tel" placeholder="Enter telephone" name="tel">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Sign up</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>


</body>
</html>