<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--<link rel="stylesheet" type="text/css" href="index.css">-->
</head>
<body>

	<div id="content">
		<form action="/action_page.php">
			<div class="form-group">
				<label for="text">Username:</label> <input type="text"
					class="form-control" id="name">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd">
			</div>
			<button type="submit" class="btn btn-default">Login</button>
		</form>
	</div>
</body>
</html>