<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	pageEncoding="ISO-8859-1"%>
=======
    pageEncoding="ISO-8859-1"%>
    
    <% if(session.getAttribute("username") == null){ %>
    	%><jsp:forward page="login.jsp"><%
    	}%>
    		
>>>>>>> branch 'testbranch' of https://github.com/leenguyen95/acHangout.git
=======
	pageEncoding="ISO-8859-1"%>
>>>>>>> refs/remotes/origin/Kha
=======
	pageEncoding="ISO-8859-1"%>
>>>>>>> refs/remotes/origin/Lee
<!DOCTYPE html>
<<<<<<< HEAD

=======
<% if(session.getAttribute("name") ==null){ %>
 <jsp:forward page="index.jsp" /> <% 
  
}%>
>>>>>>> refs/remotes/origin/Lee
<html lang="en">
<head>
<<<<<<< HEAD
<<<<<<< HEAD
<meta charset="UTF-8">
<title>Create a Poll</title>
<<<<<<< HEAD
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
=======
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
>>>>>>> branch 'testbranch' of https://github.com/leenguyen95/acHangout.git
=======
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
>>>>>>> refs/remotes/origin/Kha
=======
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
>>>>>>> refs/remotes/origin/Lee
</head>

<<<<<<< HEAD


<body>
<<<<<<< HEAD
<<<<<<< HEAD
	<div id="content">
		<br />
		<form action="poll" method="post">
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div>

					<div>Your Question</div>
					<div>
						<textarea maxlength="400" rows="4" cols="4"></textarea>
					</div>
					<div>Question Type</div>
					<div>
						<input type="radio" name="multi" value="multi" checked>
						Multiple Choice
					</div>
					<div>
						<input type="radio" name="shortAnswer" value="shortAnswer">
						Short Answer
					</div>
					<div>
						<input type="radio" name="rank" value="rank"> Ranking
					</div>

				</div>
				<br />
			</fieldset>
		</form>
	</div>
	=======
	<div class="container-fluid">
		<div class="row col-lg-12">

			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
				<br />

				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img
								src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-restaurant-portfolio2.jpg"
								alt="First Slide" width="100%" height="250px" />
						</div>

						<div class="carousel-item">
							<img
								src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-beach-portfolio.jpg"
								alt="Second Slide" width="100%" height="250px" />

							<div class="carousel-caption">
								<h2>Best Caption Title</h2>
								<p>Oh yh it is indeed!!!!!! :D</p>
							</div>
						</div>

						<div class="carousel-item">
							<img
								src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-beach-portfolio2.jpg"
								alt="Third Slide" width="100%" height="250px" />
						</div>
					</div>

					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span class="icon-prev"
						aria-hidden="true"></span> <span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span class="icon-next"
						aria-hidden="true"></span> <span class="sr-only">Next</span>
					</a>

				</div>
			</div>
		</div>
=======
	<div class="header">
		<jsp:include page="header.html" />
	</div>

	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
	<div class="container-fluid">
>>>>>>> refs/remotes/origin/Kha
		<div class="row">
			<br />

<<<<<<< HEAD
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div class="row">
					<div class="col-sm-12"></div>

					<div class="col-sm-12">
						<form id=pollForm action="PollController" method="post">
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
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>

				</div>
				<div class="col-sm-12"></div>
				<br />
			</fieldset>

		</div>
	</div>









	<!-- JavaScript to add listeners to qtype buttons. Will send current selection to the controller and page will react appropriately. 
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
document.write("Made by Le Nguyen "+d.getFullYear())
</script>
=======
<div class="jumbotron text-center">
  <h1>Get your question out there</h1>
  <p> Select from the options which type of poll you would like to post and type in your question.</p> 
</div>
  
		<div class="container-fluid">
		<br />
		
=======
>>>>>>> refs/remotes/origin/Kha
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
<<<<<<< HEAD
				<div class ="row">
						<div class="col-sm-12"></div>
						
						<div class="col-sm-12">
						<form action="poll" method="post">
						<div class="form-group">
						<div>Your Question</div>
						<div><textarea maxlength="255" rows="5" cols="40"></textarea></div>
						
						<div>Question Type</div>
						
						<input type="radio" name="qtype" value="multi" checked> Multiple Choice
  						<input type="radio" name="qtype" value="shortAnswer"> Short Answer
  						<input type="radio" name="qtype" value="rank"> Ranking
  						 <button type="submit" class="btn btn-primary">Submit</button>
  						 </div>
  						</form>
						</div>
						 
						 </div><div class="col-sm-12">
=======
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

>>>>>>> refs/remotes/origin/Kha
				</div>
				<div class="col-sm-12"></div>
				<br />
			</fieldset>

		</div>
	</div>
<<<<<<< HEAD
>>>>>>> branch 'testbranch' of https://github.com/leenguyen95/acHangout.git
=======



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
=======
>>>>>>> refs/remotes/origin/Lee


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

<<<<<<< HEAD
function myBlurFunction() {
    document.getElementById("myInput").style.backgroundColor = "";  
}
</script> -->
	<jsp:include page="footer.jsp" />

>>>>>>> refs/remotes/origin/Kha
=======
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
			document.getElementById("multi").setAttribute("class","jumbotron");
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
	function enableType(){
		var i;
		for(i=1;i<4;i++){	
			document.getElementById("qt"+i).disabled = false;
		
		
		}
	}
	
	</script>

	<script type="text/javascript">
		var d = new Date()
		document.write("Made by Le Nguyen " + d.getFullYear())
	</script>
>>>>>>> refs/remotes/origin/Lee
</body>
</html>