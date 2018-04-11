<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty sessionScope.name && empty sessionScope.pass}">
	<jsp:forward page="login.jsp" />

</c:if>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>


<title>acHangout</title>

<script defer
	src="https://use.fontawesome.com/releases/v5.0.9/js/all.js"
	integrity="sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl"
	crossorigin="anonymous"></script>
<script src="javascript/dynamicForm.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="bootstrap/js/bootstrap.min.js"></script>



<style>
.dyn-field {
	margin: 20px;
}

body {
	background-image: url('./Resources/brilliant.png');
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>



<body>



	<jsp:include page="pollHeader.jsp" />
	<div class="container-fluid">

		<form id=pollForm action="poll" method="post"
			onsubmit="event.preventDefault(); submitForm();">

			<div class="row">

				<div class="col-md-6 jumbotron form-group border"
					style="height: 600px;">


					<!-- 	<form id=pollForm action="#" method="get">  -->
					<div class="form-group">
						<div>
							<h2>Your Question</h2>
						</div>
						<div>
							<textarea name="question" id="question" maxlength="255" rows="5"
								cols="40" required></textarea>
						</div>

						<div>
							<h3>Question Type</h3>
						</div>

						<div class="btn-group btn-group-sm">
							<button class="btn btn-primary" id="multi"
								onClick="qSetup('multi')">Multiple Choice</button>
							<button class="btn btn-primary" id="rating"
								onClick="qSetup('rating')">Rating</button>
						</div>
						<input type="submit" value="submit"
							class="btn btn-outline border border-dark">
					</div>
					<!-- 		</form> -->


				</div>
				<div class="col-md-6 jumbotron form-group border">


					<!-- <form id=dynamicForm action="#" method="get"> -->
					<input type="hidden" name="fieldNum" id="fieldNum" value="" /> <input
						type="hidden" name="qType" id="qType" value="" />
					<div class="row">

						<div class="col-md-10" id="left-box"></div>
						<div class="col-md-2" id="right-box"></div>


					</div>

					<!-- 	</form> -->




				</div>

			</div>
		</form>

	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>