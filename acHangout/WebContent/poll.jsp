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
	<div class="header">
		<jsp:include page="header.html" />
	</div>

	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
	<div class="container-fluid">
		<div class="row">
			<br />

			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div class="row">
					<div class="col-sm-12"></div>

					<div class="col-sm-12">
						<form id=pollForm action="PollController" method="get">
							<div class="form-group">
								<div>Your Question</div>
								<div>
									<textarea name="q" maxlength="255" rows="5" cols="40"></textarea>
								</div>

								<div>Question Type</div>

								<input type="radio" name="qtype" value="multi" checked>
								Multiple Choice <input type="radio" name="qtype"
									value="shortAnswer"> Short Answer <input type="radio"
									name="qtype" value="rank"> Ranking
								<button id="submit" type="submit" class="btn btn-primary"
									onSubmit="return checkText()">Submit</button>
							</div>
						</form>
					</div>

				</div>
				<div class="col-sm-12"></div>
				<br />
			</fieldset>

		</div>
	</div>



	<script>
		function checkText() {

			var text = document.forms["pollForm"]["q"].value;
			if (text == "") {
				//document.getElementById("submit").disabled = true;
				//document.getElementById("submit").style.background = '#F00';
				alert("Please enter a question");
				return false;
			}
		}
	</script>





	<!-- JavaScript to add listeners to qtype buttons. Will send current selection to the controller and page will react appropriately. 
	<button onclick="myFunction()">Try it</button>


	<script>
var f = document.getElementById("pollForm");
f.addEventListener("focus", myFocusFunction, true);
f.addEventListener("blur", myBlurFunction, true);

function myFocusFunction() {
    document.getElementById("myInput").style.backgroundColor = "yellow";  
}

function myBlurFunction() {
    document.getElementById("myInput").style.backgroundColor = "";  
}
</script> -->
	<script type="text/javascript">
		var d = new Date()
		document.write("Made by Le Nguyen " + d.getFullYear())
	</script>
</body>
</html>