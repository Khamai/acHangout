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
	href="Resources/megaphonelogo.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/profile.css">

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

	<div class="container">
		<div class="row profile">
			<div class="col-md-3">
				<div class="profile-sidebar">
					<div class="profile-userpic">
						<img src='Resources/emptyprofile.png' class="img-responsive"
							alt="">
					</div>
					<!-- SIDEBAR USERPIC -->
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
						<div class="profile-usertitle-job">Welcome</div>
						<div class="profile-usertitle-name">${name}</div>
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<div class="profile-userbuttons">
						<button type="button" class="btn btn-danger btn-sm">Message</button>
					</div>
					<!-- END SIDEBAR BUTTONS -->
					<!-- SIDEBAR MENU -->
					<div class="profile-usermenu">
						<ul class="nav">
							<li class="active"><a href="your-profile"> <i
									class="glyphicon glyphicon-home"></i> Overview
							</a></li>
							<li><a href="account"> <i
									class="glyphicon glyphicon-user"></i> Account Settings
							</a></li>
							<li><a href="showuser_post"> <i class="fa fa-remove"></i>&nbsp;
									Delete Post
							</a></li>
						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>

			<!-- About Me Description -->
			<div class="col-md-9">
				<div class="profile-content">
					<h2>About Me</h2>
					<br />
					<c:if test="${not empty List}">
						<c:forEach items="${List}" var="ok">
							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">First
									name:</label>${ok.getFirstName()}
							</div>
							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Last
									name:</label>${ok.getLastName()}

							</div>
							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Email:</label>${ok.getEmail()}
							</div>

							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Telephone:</label>${ok.getTelephone()}
							</div>

							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Description:</label>${ok.getDescription()}
							</div>
						</c:forEach>
					</c:if>
					<br />
				</div>
				<div class="profile-button">
					<a href="editprofile.jsp" type="button" class="btn btn-primary">Edit
						your description</a>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>

</body>
</html>