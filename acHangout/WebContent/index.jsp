<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

	.poll{
		font-size: 15px;;
		background-color: #6699FF;
		color: #3300FF;
		margin: 80px 200px 200px 400px;
		border: 
		
	}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<div class="header">
		<jsp:include page="header.html" />
	</div>
	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
	<div class="poll">Hello</div>
</body>
</html>