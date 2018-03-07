<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Poll</title>
</head>
<body>
<div id="content">
		<br />
		<form action="poll" method="post">
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div>
				
						<div>Your Question</div>
						<div><textarea maxlength="400" rows="4" cols="4"></textarea></div>
						<div>Question Type</div>
						<div><input type="radio" name="multi" value="multi" checked> Multiple Choice</div>
  						<div><input type="radio" name="shortAnswer" value="shortAnswer"> Short Answer</div>
  						<div><input type="radio" name="rank" value="rank"> Ranking</div>
					
				</div>
				<br /> 
			</fieldset>
		</form>
	</div>
</body>
</html>