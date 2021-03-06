<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:if test="${empty sessionScope.name && empty sessionScope.pass}">
	<jsp:forward page="login.jsp" />
</c:if>

<c:if test="${not empty param.sub}">
	<c:set var="sub" value="${param.sub}" />
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
				<li><a href="sub-categories?topic=${link}">${cat}</a></li>
				<li class="active">${title}</li>
			</ul>
		</div>
		<br /> <br />
		<div class="row text-right">
			<form action="newpost.jsp" method="post">
				<input type="hidden" name="cat" value="${sub}">

				<div class="btn-group btn-group-lg">
					<a href="poll.jsp" class="btn btn-primary">New Poll</a>
				</div>
			</form>
		</div>
	</div>

	<div class="container">
		<div class="row mt">
			<div class="col-sm-12 forum-category lpad">
				<h3>${title}</h3>
			</div>
			<div class="col-sm-12 forum-head lpad">
				<div class="col-sm-6">Question</div>
				<div class="col-sm-2 child">Author</div>
				<div class="col-sm-1 child">Votes</div>
				<div class="col-sm-2 child">Type</div>
				<div class="col-sm-1 child">Date Created</div>
			</div>
			<c:if test="${not empty List}">
				<c:forEach items="${List}" var="ok">
					<div class="col-sm-12 forum-topic pad">
						<div class="col-sm-6 child">
							<a href="#">${ok.getQuestion()}</a>
						</div>
						<div class="col-sm-2 child">${ok.getName()}</div>
						<div class="col-sm-1 child">0</div>
						<div class="col-sm-2 child">0</div>
						<div class="col-sm-1 child">${ok.getDate()}</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${empty List}">
				<div class="col-sm-12 forum-topic pad">
					<h4>There are no poll found!!</h4>
				</div>
			</c:if>
		</div>
	</div>
	<br />

	<div class="container text-center">
		<div class="row">
			<ul class="pagination">
				<c:if test="${currentpage > 1}">
					<li><a href="display?sub=${sub}&page=1">First</a></li>
					<li><a href="display?sub=${sub}&page=${currentpage - 1}">&laquo;</a></li>
				</c:if>

				<c:forEach begin="1" end="${numberofpage}" var="page">
					<c:choose>
						<c:when test="${currentpage eq page }">
							<li class="active"><a
								href="display?sub=${sub}&page=${currentpage}">${page}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="display?sub=${sub}&page=${page}">${page}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${currentpage lt numberofpage}">
					<li><a
						href="display?sub=${sub}&page=${currentpage + 1}">&raquo;</a></li>
					<li><a href="display?sub=${sub}&page=${numberofpage}">Last</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="footer.jsp" />
</body>
</html>