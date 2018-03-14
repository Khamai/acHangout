<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
<style>
@import
	url(https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Open+Sans+Condensed:300,700)
	;

body {
	font-family: 'Open Sans', sans-serif;
}

a {
	display: inline-block;
	color: inherit;
	text-decoration: none;
}

.row.mt {
	margin-top: 1.25em;
}

.lpad {
	padding: 20px;
}

.ar {
	text-align: right;
}

.forum-category {
	background-color: hsl(195, 73%, 58%);
	color: hsl(0, 0%, 100%);
	font-weight: 600;
	font-size: 13px;
	text-shadow: 0 1px 1px hsl(195, 73%, 40%);
}

.forum-head>.column {
	background-color: hsl(206, 35%, 13%);
	border-right: 1px solid hsl(212, 35%, 15%);
	border-left: 1px solid hsl(212, 28%, 12%);
	color: hsl(0, 0%, 100%);
	font-weight: 300;
	font-size: 12px;
	text-shadow: 0 1px 1px hsl(0, 0%, 0%);
	text-align: center;
}

.forum-head>.column:first-child {
	text-align: left;
	border-left: none;
}

.forum-head>.column:last-child {
	border-right: none;
}

.forum-topic>.column {
	min-height: 71px;
	max-height: 71px;
	background-color: hsl(0, 0%, 96%);
	border-bottom: 1px solid hsl(0, 0%, 90%);
	color: hsl(0, 0%, 50%);
	font-size: 12px;
}

.forum-topic>.column:first-child {
	color: hsl(0, 0%, 60%);
	font-size: 30px;
	text-align: center;
}

.forum-topic>.column:nth-child(n+3) {
	text-align: center;
}

.forum-topic>.column:last-child {
	text-align: left;
}

.forum-topic a {
	transition: color .5s;
	color: hsl(195, 73%, 58%);
	font-weight: 600;
}

.forum-topic a:hover {
	color: hsl(195, 73%, 48%);
}

.forum-topic span {
	display: block;
	margin: 0 0 2px 0;
}

.overflow-control {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.forum-topic .column:nth-child(2) span.overflow-control {
	width: 70%;
	height: 15px;
}

.forum-topic span.center {
	padding-top: 10px;
}
</style>
</head>
<body>


	<div class="row mt">
		<div class="large-12">
			<div class="large-12 forum-category rounded top">
				<div class="large-8 small-10 column lpad">Some category title
				</div>
				<div class="large-4 small-2 column lpad ar">
					<a data-connect> <i class="icon-collapse-top"></i>
					</a>
				</div>
			</div>

			<div class="toggleview">
				<div class="large-12 forum-head">
					<div class="large-8 small-8 column lpad">Forums</div>
					<div class="large-1 column lpad">Threads</div>
					<div class="large-1 column lpad">Post</div>
					<div class="large-2 small-4 column lpad">Freshness</div>
				</div>

				<div class="large-12 forum-topic">
					<div class="large-1 column lpad">
						<i class="icon-file"></i>
					</div>
					<div class="large-7 small-8 column lpad">
						<span class="overflow-control"> <a href="#">Title of
								the title</a>
						</span> <span class="overflow-control"> Description of the title
							of the topic(?) </span>
					</div>
					<div class="large-1 column lpad">
						<span class="center">96587</span>
					</div>
					<div class="large-1 column lpad">
						<span class="center">678</span>
					</div>
					<div class="large-2 small-4 column pad">
						<span> <a href="#">Some sub-topic</a>
						</span> <span>08-29-2013 7:29PM</span> <span>by <a href="#">Some
								user</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>