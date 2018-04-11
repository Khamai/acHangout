<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="jumbotron row" style="background-color: #cccccc;">
	<div class="container text-center">
		<h1 style="color: #145A32;">Ask A Question</h1>
	</div>
	</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<a class="navbar-brand" href="index.jsp">ACHangout</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Messenger</a>
			</li>
			<li class="nav-item"> <a class="nav-link" href="#"><span>Help&nbsp;
						<i class="far fa-question-circle"></i>
				</span></a>
			</li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
				<li>
					<form class="navbar-form" action="search.jsp">
						<div class="input-group">
							<input type="text" name="searchid" class="form-control" placeholder="Search">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</li>
				<c:if test="${login == 'Login'}">
					<li><a href="login.jsp">${login}</a></li>
					<li><a href="signup.jsp">Sign up</a></li>
				</c:if>
				<c:if test="${login != 'Login'}">
					<li><a href="profile.jsp">${login}</a></li>
					<li><a href="logout">Logout</a></li>
				</c:if>
			</ul>
			<div class="text-center" style='display: none; padding: 10px;'
				id='google_translate_element'></div>
		</div>
	
</nav>

