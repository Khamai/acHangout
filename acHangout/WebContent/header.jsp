
<%
	String login = "Login";
	if (session.getAttribute("name") != null && session.getAttribute("pass") != null) {
		login = "Hello, " + (String) session.getAttribute("name");
	}
%>
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
			<a class="navbar-brand" href="index.jsp">ACHangout</a>
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
					<form class="navbar-form" action="search.jsp">
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