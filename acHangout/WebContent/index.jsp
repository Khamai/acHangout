<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<link rel="shortcut icon" type="image/x-icon"
	href="Resources/megaphonelogo.ico">
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
						width="80" alt="Avatar"> <br /> <br />
					<div class="btn-group">
						<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								Food Topics <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="asianfood_1.jsp">Asian Foods</a></li>
								<li><a href="newpost.jsp">Europe Foods</a></li>
								<li><a href="#">American Foods</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/study.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Program Topics <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Full-time Programs</a></li>
							<li><a href="#">Part-time Programs</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/media.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Media Topics <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Musics</a></li>
							<li><a href="#">Films</a></li>
							<li><a href="#">TV Series</a></li>
							<li><a href="#">TV Shows</a></li>
							<li><a href="#">Anime</a></li>
							<li><a href="#">Photos</a></li>
						</ul>
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
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Sport Topics <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Soccer</a></li>
							<li><a href="#">American Football</a></li>
							<li><a href="#">Basketball</a></li>
							<li><a href="#">Baseball</a></li>
							<li><a href="#">Hockey</a></li>
							<li><a href="#">Fitness</a></li>
							<li><a href="#">Badminton</a></li>
							<li><a href="#">Swimming</a></li>
							<li><a href="#">Tennis</a></li>
							<li><a href="#">Others</a></li>

						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/help.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<button type="button" class="btn btn-primary">Ask For Help</button>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/event.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Activity Topics <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Event</a></li>
							<li><a href="#">Indoor Activities</a></li>
							<li><a href="#">Outdoor Activities</a></li>
						</ul>
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
						<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								Book Topics <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li class="dropdown-header"
									style="color: brown; font-weight: bold;">Literature</li>
								<li><a href="#">Asia</a></li>
								<li><a href="#">Africa</a></li>
								<li><a href="#">Europe</a></li>
								<li><a href="#">America</a></li>
								<li class="divider"></li>
								<li class="dropdown-header"
									style="color: brown; font-weight: bold;">Books</li>
								<li><a href="#">Manga</a></li>
								<li><a href="#">Novel</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/happy.ico' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<button type="button" class="btn btn-primary">Funny Spots</button>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="well">
					<img src='Resources/money2.png' class="img-circle" height="80"
						width="80" alt="Avatar"><br /> <br />
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Classified Topics <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Houses/Apts For Renting</a></li>
							<li><a href="#">Used Stuff</a></li>
							<li><a href="#">Others</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<br /> <br /> <br /> <a href="poll.jsp" class="btn btn-primary"
					role="button">Create a poll</a>
			</div>
		</div>
	<div class="row">
		<div class="col-sm-12">
				<br/> <br/> <br/> <a href="profile.jsp" class="btn btn-primary"
					role="button">Profile</a>
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