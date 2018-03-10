<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<script src="javascript/dynamicForm.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<style>
.top-seperator {
	height: 200px;
	width: 50%;
	background-color: black;
}
</style>
</head>



<body>




	<div class="container-fluid">

		<div class="row">

			<div class="jumbotron col-md-6">

				<form id=pollForm action="PollController" method="get">
					<div class="form-group">
						<div>
							<h2>Your Question</h2>
						</div>
						<div>
							<textarea name="q" maxlength="255" rows="5" cols="40"
								required="required"></textarea>
						</div>

						<div>
							<h3>Question Type</h3>
						</div>

						<div class="btn-group btn-group-sm">
							<button class="btn btn-primary" id="qt1" onClick="setMulti()">Multiple
								Choice</button>
							<button class="btn btn-primary" id="qt2" onClick="setShort()">Short
								Answer</button>
							<button class="btn btn-primary" id="qt3" onClick="setRank()">Ranking</button>
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-6" id="dynamicForm"></div>

		</div>

	</div>


	

	<script type="text/javascript">
		var d = new Date()
		document.write("Made by Le Nguyen " + d.getFullYear())
	</script>
</body>
</html>