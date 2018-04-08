<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty sessionScope.name && empty sessionScope.pass}">
	<jsp:forward page="login.jsp" />
</c:if>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
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
	<div class="container">
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li class="active">Asian Foods</li>
			</ul>
		</div>
		<br />
		<div class="row">
			<div class="page-header">
				<h2>Create new sub-category</h2>
			</div>
		</div>
		<br /> <br /> <br /> <br />
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-7">
				<div class="row">
					<div class="well">
						<form action="create-forum" method="post">
							<div class="form-group">
								<label for="title">Title:</label>
								<textarea class="form-control" rows="3" id="title" name="title"
									maxlength="80" required="required"></textarea>
							</div>
							<div class="form-group">
								<label for="description">Description (Optional):</label>
								<textarea class="form-control" rows="6" maxlength="50"
									name="description" id="description"></textarea>
							</div>
							<br />
							<div class="form-group row">
								<div class="col-xs-6">
									<select class="form-control" name="topic" required="required">
										<option value="" selected disabled>Select category...</option>
										<option value="food">Food</option>
										<option value="program">Program</option>
										<option value="media">Media</option>
										<option value="sport">Sport</option>
										<option value="help">Ask for help</option>
										<option value="activity">Activity</option>
										<option value="book">Book</option>
										<option value="funny">Funny sport</option>
										<option value="classified">Classified</option>
									</select>
								</div>
							</div>
							<div class="form-group text-right">
								<button type="submit" class="btn btn-primary btn-md">Create
									New</button>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-3 col-sm-offset-2" style="padding-left: 65px;">
				<div class="row">
					<div class="well">
						<p style="font-weight: bold;">Main Category</p>
						<hr style="border: 1px solid #ccc;">
						<div class="list-group" style="padding: 0;">
							<a href="#" class="list-group-item">Food</a> <a href="#"
								class="list-group-item">Program</a> <a href="#"
								class="list-group-item">Media</a> <a href="#"
								class="list-group-item">Sport</a> <a href="#"
								class="list-group-item">Ask for help</a> <a href="#"
								class="list-group-item">Activity</a> <a href="#"
								class="list-group-item">Book</a> <a href="#"
								class="list-group-item">Funny spot</a> <a href="#"
								class="list-group-item">Classified</a>
						</div>
						<form action="newpost.jsp" method="post">
							<div class="btn-group btn-group-md text-center">
								<button type="submit" class="btn btn-primary">Start New
									Forum</button>
							</div>
						</form>
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