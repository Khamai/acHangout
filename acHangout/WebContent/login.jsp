<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="header">
		<jsp:include page="header.html" />
	</div>
	<div id="content">
		<div class="container">
			<br /> <br /> <br />
			<h2>DETAIL</h2>
			<p style="color: red;">${message}</p>

			<form class="form-horizontal" action="loginServlet" method="post">
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
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox" name="remember">
								Remember me</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Login</button>
					</div>
				</div>
				<br /> &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Don't have
				an account?&emsp; <a href="signup.jsp"
					style="text-decoration: none;">Sign up</a>
			</form>
		</div>
	</div>
</body>
</html>