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
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<jsp:include page="header.jsp" />

	<jsp:include page="top-menu.html" />
	<br />
	<br />

	<div class="container">
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li>Asian Foods</li>
				<li class="active">New Post</li>

			</ul>
		</div>
		<div class="page-header">
			<h2 align=center>Create New Post</h2>
		</div>
		<br /> <br />
		<div class="row">
			<div class="col-sm-7" style="float: none; margin: 0 auto;">
				<div class="well" style="background-color: #d9d9d9;">
					<form>
						<div class="form-group">
							<label for="topic">Topic:</label>
							<textarea class="form-control" rows="2" id="topic"
								maxlength="100" required="required"></textarea>
						</div>
						<div class="form-group">
							<label for="content">Content (Optional):</label>
							<textarea class="form-control" rows="14" maxlength="1000"
								id="content"></textarea>
						</div>
						<div class="form-group">
							<label for="url">Link Of Website (Optional):</label> <input
								type="url" class="form-control" id="url" name="url">
						</div>
						<div class="form-group">
							<label for="image">Image (Optional):</label> <input type="file"
								class="form-control" id="image" name="image">
						</div>
						<div class="form-group text-center">
							<button type="submit" class="btn btn-primary btn-md">Submit
								Post</button>
						</div>
					</form>
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