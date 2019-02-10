<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Error Page</title>
<link rel="shortcut icon" type="image/x-icon"
	href="Resources/megaphone.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<jsp:include page="header.jsp" />

	<br />
	<br />
	<br />
	<br />
	<div class="container text-center">
		<div class="row">
			<div class="col-md-12">
				<div class="error-template">
					<h1>Oops!</h1>
					<h2>Page Not Found</h2>
					<div class="error-actions">
						<a href="index.jsp" class="btn btn-primary btn-lg"><span
							class="glyphicon glyphicon-home"></span>&emsp;Take Me Home </a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>