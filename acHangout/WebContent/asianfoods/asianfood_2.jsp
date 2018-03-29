<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
	session.setAttribute("cat", "asianfoods");
	if (session.getAttribute("name") == null && session.getAttribute("pass") == null) {
		session.setAttribute("currentpage", "asianfood_2.jsp");
%>
<jsp:forward page="login.jsp" />
<%
	}
%>
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
	<jsp:include page="../header.jsp" />

	<jsp:include page="../top-menu.html" />
	<br />
	<br />
	<div class="container">
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li class="active">Asian Foods</li>
			</ul>
		</div>
		<br /> <br />
		<div class="row text-right">
			<div class="btn-group btn-group-lg">
				<button type="button" onclick="window.location='newpost.jsp'"
					class="btn btn-primary">New Post</button>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row mt">
			<div class="col-sm-12 forum-category lpad">
				<h3>Asian's foods Posts</h3>
			</div>
			<div class="col-sm-12 forum-head lpad">
				<div class="col-sm-6">Topic</div>
				<div class="col-sm-2 child"
					style="border-left: 2px solid hsl(212, 35%, 15%);">Author</div>
				<div class="col-sm-1 child">Comment</div>
				<div class="col-sm-2 child">Date Created</div>
				<div class="col-sm-1 child">Like/Dislike</div>

			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">I found a really good place for eat Pho</a>
				</div>
				<div class="col-sm-2 child">Kha Mai</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">08-29-2013 7:29PM</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Anyone want to try something special Chinese food?</a>
				</div>
				<div class="col-sm-2 child">Tianze</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-5th-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Asian Wings bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">What is Baijiu? Check it out!</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Anyone wants to try stinky Tofu lol?</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Kong Pao Chicken Recipe!</a>
				</div>
				<div class="col-sm-2 child">Walter white</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
			<div class="col-sm-12 forum-topic pad">
				<div class="col-sm-6 child">
					<a href="#">Top 5 Sushi bar in Ottawa</a>
				</div>
				<div class="col-sm-2 child">Hotdog</div>
				<div class="col-sm-1 child">678</div>
				<div class="col-sm-2 child">Jan-2nd-2018</div>
				<div class="col-sm-1 child">
					<div>234</div>
				</div>
			</div>
		</div>
	</div>
	<br />

	<div class="container text-center">
		<div class="row">
			<ul class="pagination">
				<li ><a href="asianfood_1">1</a></li>
				<li class="active"><a href="asianfood_2">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
				<li><a href="#">Last</a></li>

			</ul>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="../footer.jsp" />
</body>
</html>