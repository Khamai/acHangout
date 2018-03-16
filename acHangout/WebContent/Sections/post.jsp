<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<div class="header">
		<jsp:include page="Header/header.jsp" />
	</div>
	
	<form action="../postIt" method="POST">
	
		<table>
		<tr>
			<th>
				<input name="topic" rows="1" cols="100" maxlength=1000>
			</th>
		</tr>
	
		<tr>
			<th>
				<textarea name="content" rows="4" cols="50" maxlength=1000>
					ConTENT!!! 
				</textarea>
			</th>
		</tr>
		
		<tr>
			<th>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Post</button>
					</div>
				</div>
			</th>
		</tr>
		</table>
	
	</form>
	
	
	<form action="SessionServlet" method="post">
  		<button type="submit" name="your_name" value="your_value" class="btn-link">Go</button>
	</form>


	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>
</body>
</html>