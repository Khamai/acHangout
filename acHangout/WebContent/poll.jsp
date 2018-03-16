<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
	if (session.getAttribute("name") == null) {
%>
<jsp:forward page="login.jsp" />
<%
	}
%>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
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


	<!-- dynamically add answer setup elements based on selected qtype -->

	<script>
		function submit() {

			document.forms["pollForm"].submit();
			document.forms["pollForm"].submit();

		}
	</script>

	<script>
		function deleteSetup(parentDiv, childDiv) {

			alert("Discard work?");

			var child = document.getElementById(childDiv);
			var parent = document.getElementById(parentDiv);
			parent.removeChild(child);
			enableType();
		}
	</script>

	<script>
		function setMulti() {
			var r = document.createElement('span');
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("placeholder", "Name");
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "multi");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','multi')");
			r.appendChild(g);
			r.setAttribute("id", "multi");
			document.getElementById("dynamicForm").appendChild(r);
			document.getElementById("multi").setAttribute("class", "jumbotron");
			disableType();

		}

		//Add [x] button to discard setup section and allow a different answer setup option
	</script>

	<script>
		function setShort() {
			var r = document.createElement('span');
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("placeholder", "Name");
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "short");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','short')");
			r.appendChild(g);
			r.setAttribute("id", "short");
			document.getElementById("dynamicForm").appendChild(r);
			disableType();

		}

		//Add [x] button to discard setup section and allow a different answer setup option
	</script>

	<script>
		function setRank() {
			var r = document.createElement('span');
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("placeholder", "Name");
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "rank");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','rank')");
			r.appendChild(g);
			r.setAttribute("id", "rank");
			document.getElementById("dynamicForm").appendChild(r);
			disableType();

		}

		//Add [x] button to discard setup section and allow a different answer setup option
	</script>

	<script>
		function disableType() {
			var i;
			for (i = 1; i < 4; i++) {
				document.getElementById("qt" + i).disabled = true;
			}
		}
	</script>

	<script>
		function enableType() {
			var i;
			for (i = 1; i < 4; i++) {
				document.getElementById("qt" + i).disabled = false;

			}
		}
	</script>

	<script type="text/javascript">
		var d = new Date()
		document.write("Made by Le Nguyen " + d.getFullYear())
	</script>
</body>
</html>