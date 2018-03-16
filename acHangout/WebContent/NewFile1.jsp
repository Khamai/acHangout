
<%
	String login = "Login";
	if (session.getAttribute("name") != null && session.getAttribute("pass") != null) {
		login = "Hello, " + (String) session.getAttribute("name");
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="index.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="jumbotron" style="background-color: #cccccc;">
		<div class="container text-center">
			<h1 style="color: #145A32;">ACHangout</h1>
		</div>

	</div>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">ACHangout</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="#">Messenger</a></li>
					<li><a href="#">Help&nbsp;<span
							class="fa fa-question-circle-o"></span></a></li>
				</ul>

				<%
					if (login == "Login") {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form" action="/action_page.php">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form>
					</li>
					<li><a href="#" onclick="open_translate(this)"
						title="Google Translate"><i class="fa fa-globe"></i></a></li>
					<li><a href="login.jsp"> <%=login%></a></li>

					<li><a href="signup.jsp">Sign up</a></li>
				</ul>
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<form class="navbar-form" action="/search.jsp">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search">
								<div class="input-group-btn">
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
						</form>
					</li>
					<li><a href="#" onclick="open_translate(this)"
						title="Google Translate"><i class="fa fa-globe"></i></a></li>
					<li><a href="login.jsp"> <%=login%></a></li>

					<li><a href="logout">Logout</a></li>
				</ul>
				<%
					}
				%>
				<div class="text-center" style='display: none; padding: 10px;'
					id='google_translate_element'></div>
			</div>
		</div>
	</nav>
	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
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
								<li><a href="#">Europe Foods</a></li>
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
	<br />
	<br />
	<br />
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		function open_translate(elmnt) {
			var a = document.getElementById("google_translate_element");
			if (a.style.display == "") {
				a.style.display = "none";
				elmnt.innerHTML = "<i class='fa fa-globe'></i>";
			} else {
				a.style.display = "";
				elmnt.innerHTML = "<i class='fa fa-times-circle-o'></i>";
			}
		}

		function googleTranslateElementInit() {
			new google.translate.TranslateElement({
				pageLanguage : 'en',
				layout : google.translate.TranslateElement.InlineLayout.SIMPLE
			}, 'google_translate_element');
		}
	</script>

	<script type="text/javascript"
		src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
		
	</script>
</body>
</html>
