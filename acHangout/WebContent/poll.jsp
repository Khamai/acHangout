<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% if(session.getAttribute("username") == null){ %>
    	%><jsp:forward page="login.jsp"><%
    	}%>
    		
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
  <h1>Get your question out there</h1>
  <p> Select from the options which type of poll you would like to post and type in your question.</p> 
</div>
  
		<div class="container-fluid">
		<br />
		
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
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
				</div>
				<br /> 
			</fieldset>
		
	</div>
</body>
</html>