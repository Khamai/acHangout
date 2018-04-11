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
					<!-- SIDEBAR USERPIC -->
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
						<div class="profile-usertitle-job">Welcome</div>
						<div class="profile-usertitle-name">
							<%=session.getAttribute("name")%>
						</div>
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
							<li><a href="profile.jsp"> <i
									class="glyphicon glyphicon-home"></i> Overview
							</a></li>
							<li class="active"><a href="accountSettings.jsp"> <i
									class="glyphicon glyphicon-user"></i> Account Settings
							</a></li>
						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<div class="col-md-9" id="edit">

				<c:if test="${not empty List}">
					<c:forEach items="${List}" var="ok">
						<!-- put code here -->
						<form role="form" action="editprofile" method="post">
							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">First
									name</label>
								<div class="col-lg-9">
									<input class="form-control" type="text" name="first"
										value="${ok.getFirstName()}">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Last
									name</label>
								<div class="col-lg-9">
									<input class="form-control" type="text" name="last"
										value="${ok.getLastName()}">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Email</label>
								<div class="col-lg-9">
									<input class="form-control" type="email" name="email"
										value="${ok.getEmail()}">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label">Telephone</label>
								<div class="col-lg-9">
									<input class="form-control" type="text" name="phone"
										value="${ok.getTelephone()}">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-lg-3 col-form-label form-control-label"></label>
								<div class="col-lg-9">
									<input type="reset" class="btn btn-secondary" value="Cancel">
									<input type="submit" class="btn btn-primary"
										value="Save Changes">
								</div>
							</div>
						</form>
					</c:forEach>
				</c:if>
				<c:if test="${empty List}">
					<c:if test="${message == 'pass'}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Success!</strong> Saved changes
						</div>
					</c:if>
					<c:if test="${message == 'fail'}">
						<div class="alert alert-danger alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Fail!</strong> Cannot change
						</div>
					</c:if>
				</c:if>
			</div>
		</div>
	</div>

	<br />
	<br />

</body>
</html>
