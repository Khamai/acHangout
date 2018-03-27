<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty param.cat || empty param.lastpage}">
	<jsp:forward page="index.jsp" />
</c:if>

<c:set var="category" value="${param.cat}" />
<c:set var="lastpage" value="${param.lastpage}" />



<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>New Post</title>
<link rel="shortcut icon" type="image/x-icon"
	href="Resources/megaphone.ico">

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
				<p
					style="color: red; text-align: center; font-weight: bold; font-size: 16px;">${message}</p>

				<div class="well" style="background-color: #d9d9d9;">
					<form action="post" method="post">
						<input type="hidden" name="cat" value="${category}"> <input
							type="hidden" name="lastpage" value="${lastpage}">
						<div class="form-group">
							<label for="topic">Topic:</label>
							<textarea class="form-control" rows="2" id="topic" name="topic"
								maxlength="100" required="required"></textarea>
						</div>
						<div class="form-group">
							<label for="content">Content:</label>
							<textarea class="form-control" rows="14" maxlength="1000"
								name="content" required="required" id="content"></textarea>
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