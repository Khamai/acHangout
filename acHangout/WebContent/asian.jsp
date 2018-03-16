<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<link rel="shortcut icon" type="image/x-icon" href="Resources/k.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.row.mt {
	margin-top: 1.25em;
}

.lpad {
	padding: 20px;
}

.forum-category {
	background-color: hsl(195, 73%, 58%);
	color: white;
	font-size: 16px;
}

.forum-head {
	background-color: hsl(206, 35%, 13%);
	color: hsl(0, 0%, 100%);
	font-size: 14px;
	text-align: center;
}

.forum-head>.child {
	border-right: 2px solid hsl(212, 35%, 15%);
	border-left: 2px solid hsl(212, 28%, 12%);
}

.forum-topic {
	background-color: hsl(0, 0%, 96%);
	border-bottom: 1px solid hsl(0, 0%, 90%);
	color: hsl(0, 0%, 50%);
	font-size: 14px;
	text-align: center;
}

.forum-topic>.child:first-child {
	color: hsl(0, 0%, 60%);
	text-align: left;
}

.forum-topic>.child {
	padding: 0;
}
</style>
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
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li class="active">Asian Foods</li>
			</ul>
		</div>
		<br /> <br />
		<div class="row text-right">
			<div class="btn-group btn-group-md">
				<button type="button" class="btn btn-primary">New Post</button>
			</div>
			<div class="btn-group btn-group-md">
				<button type="button" class="btn btn-primary">Delete Post</button>
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
		</div>
	</div>
	<br />

	<div class="container text-center">
		<div class="row">
			<ul class="pagination">
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
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

	<jsp:include page="footer.jsp" />
</body>
</html>