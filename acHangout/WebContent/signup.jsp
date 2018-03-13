<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign up</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
	<br />
	<br />

	<div class="container">
		<div class="page-header">
			<h2 align=center>Sign up</h2>
		</div>
		<br /> <br />
		<div class="row">
			<div class="col-sm-12">
				<div class="well">
					<form class="form-horizontal" action="SignupServlet" method="post">
						<div class="form-group">
							<label class="control-label col-sm-2" for="firstname">First
								Name:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="firstname"
									placeholder="Enter firstname" name="firstname"
									required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="lastname">Last
								Name:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="lastname"
									placeholder="Enter lastname" name="lastname"
									required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="sex">Gender:</label>
							<div class="col-sm-4">
								<label class="radio-inline"><input type="radio"
									name="sex" required="required">Male</label>&emsp;&emsp;&emsp; <label
									class="radio-inline"><input type="radio" name="sex"
									required="required">Female</label>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="username">Username:</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="username"
									placeholder="Enter username" name="username"
									required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pass">Password:</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="pass"
									placeholder="Enter password" name="pass" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Email:</label>
							<div class="col-sm-4">
								<input type="email" class="form-control" id="email"
									placeholder="Enter email" name="email" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="tel">Telephone:</label>
							<div class="col-sm-4">
								<input type="tel" class="form-control" id="tel"
									placeholder="Enter telephone" name="tel">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Sign up</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />

	<jsp:include page="footer.jsp" />

</body>
</html>