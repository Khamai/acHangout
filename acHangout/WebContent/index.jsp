
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AcHangout - Share, learn, laugh, online</title>
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
	<jsp:include page="top-menu.html" />

	<br />
	<br />

	<div class="container text-center">

		<%
			String name = (String) request.getAttribute("message");
			if (name == "logout") {
		%>
		<div class="alert alert-success alert-dismissible">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Success!</strong> You are successfully logged out!
		</div>
		<%
			} else if (name == "signup") {
		%>
		<div class="alert alert-success alert-dismissible">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Success!</strong> You are successfully signed up!
		</div>
		<%
		
			} else if (name == "login") {
		%>
		<div class="alert alert-success alert-dismissible">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Success!</strong> You have successfully logged in.
		</div>
		<%
			}
		%>
		<div class="page-header">
			<h2>Forum Topics</h2>
		</div>
		<br /> <br />
		<div class="row">
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/food.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=food" class="btn btn-primary"
							role="button">Food Topics</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/study.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=program" class="btn btn-primary"
							role="button">Program Topics</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/media.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=media" class="btn btn-primary"
							role="button">Media Topics</a>
					</div>
				</div>
			</div>
		</div>
		<br />

		<div class="row">
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/sport.png' height="82" width="90" alt="Avatar">
					<br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=sport" class="btn btn-primary"
							role="button">Sport Topics</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/help.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=help" class="btn btn-primary"
							role="button">Ask For Help</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/event.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=activity" class="btn btn-primary"
							role="button">Activity Topics</a>
					</div>
				</div>
			</div>
		</div>
		<br />

		<div class="row">
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/comic.png' height="82" width="90" alt="Avatar">
					<br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=book" class="btn btn-primary"
							role="button">Book Topics</a>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/happy.ico' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=funny" class="btn btn-primary"
							role="button">Funny Spots</a>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/money2.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="btn-group">
						<a href="sub-categories?topic=classified" class="btn btn-primary"
							role="button">Classified Topics</a>
					</div>
				</div>
			</div>
		</div>
		<div class="well" style="background-image:url('./Resources/data.jpg'">
		<div class="row">
			
				<div class="col-sm-12">
					<br /> <br /> <br /> <a href="poll.jsp" class="btn btn-primary"
						role="button">Create a poll</a>
				</div>
				<div class="col-sm-12">
					<br /> <br /> <br /> <a href="displaypoll" class="btn btn-primary"
						role="button">Vote!</a>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<jsp:include page="footer.jsp" />

</body>
</html>