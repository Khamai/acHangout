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
		<div class="row mt">
			<div class="col-sm-12 forum-head lpad">
				<div class="col-sm-3">Topic</div>
				<div class="col-sm-3">Content</div>
				<div class="col-sm-2 child">Author</div>
				<div class="col-sm-2 child">Date Created</div>
			</div>
			<c:if test="${not empty List}">
				<c:forEach items="${List}" var="ok">
					<div class="col-sm-12 forum-topic pad">
						<div class="col-sm-3 child">
							<a href="comment?q=${ok.getId()}">${ok.getTopic()}</a>
						</div>
						<div class="col-sm-3 child">${ok.getContent()}</div>
						<div class="col-sm-2 child">${ok.getUserName()}</div>
						<div class="col-sm-2 child">${ok.getDate()}</div>
						<div class="col-sm-2 child">
							<form action="userdelete" method="post">
								<button name="delete" class="btn btn-danger"
									value="${ok.getId()}">Delete</button>
							</form>
						</div>

					</div>
				</c:forEach>
			</c:if>
			<c:if test="${empty List}">
				<div class="col-sm-12 forum-topic pad">
					<h4>There are no post found!!</h4>
				</div>
			</c:if>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="footer.jsp" />
</body>
</html>