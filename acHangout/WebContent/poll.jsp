<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Poll</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
</head>
<body>
<div class="jumbotron text-center">
  <h1>Create A Poll</h1>
  <p>Start a poll! <br> Select from the options which type of poll you would like to post and type in your question.</p> 
</div>
  
		<div class="container-fluid">
		<br />
		<form action="poll" method="post">
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div class ="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
						<div>Your Question</div>
						<div><textarea maxlength="400" rows="4" cols="4"></textarea></div>
						<div>Question Type</div>
						<div><input type="radio" name="multi" value="multi" checked> Multiple Choice</div>
  						<div><input type="radio" name="shortAnswer" value="shortAnswer"> Short Answer</div>
  						<div><input type="radio" name="rank" value="rank"> Ranking</div>
						</div>
						 </div><div class="col-sm-4">
				</div>
				<br /> 
			</fieldset>
		</form>
	</div>
</body>
</html>