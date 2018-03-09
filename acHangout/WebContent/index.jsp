<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<<<<<<< HEAD
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
=======
<style>
.poll {
	font-size: 15px;;
	background-color: #6699FF;
	color: #3300FF;
	margin: 80px 200px 200px 400px;
	border:
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
>>>>>>> refs/remotes/origin/Tianze
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		<jsp:include page="header.html" />
	</div>

	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>

<<<<<<< HEAD

	<div class="container text-center">
		<h2>Forum Topics</h2>
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
								<li><a href="#">Asian Foods</a></li>
								<li><a href="#">Europe Foods</a></li>
								<li><a href="#">American Foods</a></li>
							</ul>
						</div>
					</div>

					<div class="btn-group">
						<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								Restaurant Topics <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Asian Restaurants</a></li>
								<li><a href="#">Canadian Restaurants</a></li>
								<li><a href="#">Middle Eastern Restaurants</a></li>
								<li><a href="#">Indian Restaurants</a></li>

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

					<div class="btn-group">
						<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								Genre Topics <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">Horror</a></li>
								<li><a href="#">Thriller</a></li>
								<li><a href="#">Action/Adventure</a></li>
								<li><a href="#">Comedy</a></li>
								<li><a href="#">Science Fiction</a></li>
								<li><a href="#">Romance</a></li>
								<li><a href="#">Mystery</a></li>
								<li><a href="#">Fantasy</a></li>
								<li><a href="#">Drama</a></li>
								<li><a href="#">Others</a></li>
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
							Classific Topics <span class="caret"></span>
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
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>
=======
>>>>>>> refs/remotes/origin/Tianze
</body>
</html>