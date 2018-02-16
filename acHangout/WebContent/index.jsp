<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ACHangout</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="header">
		<jsp:include page="header.html" />
	</div>

	<div class="topnav">
		<a class="active" href="index.jsp">Home</a> <a href="#profile">Profile</a>
		<a href="#friend">Friends</a> <a href="#help">Help</a>&nbsp; <input
			type="text" placeholder="Search...">
		<div class="rightside">
			<a href="login.jsp" style="float: right">Login</a> <a
				href="signup.jsp">Sign up</a>
		</div>
	</div>

</body>
</html>
