<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%--
<%
	if (session.getAttribute("name") != null) {
		String pagename = (String) session.getAttribute("currentpage");
		response.sendRedirect(pagename);
	}
%>
--%>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
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
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
	<br />
	<br />

	<div class="container">
		<ul class="breadcrumb">
			<li><a href="#">Home &raquo;&laquo;</a></li>
			<li><a href="#">Private</a></li>
			<li><a href="#">Pictures</a></li>
			<li class="active">Vacation</li>
		</ul>
		<div class="page-header">
			<h2 align=center>Login</h2>
		</div>
		<br /> <br />
		<div class="row">
			<div class="col-sm-12">
				<div class="well">
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
								<input type="password" style="width: 300px;"
									class="form-control" id="pass" placeholder="Enter password"
									name="pass" required="required">
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
					<%--
					<ul class="pagination">
						<li><a href="#">1</a></li>
						<li class="active"><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
					</ul>
					--%>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="footer.jsp" />

</body>
</html>