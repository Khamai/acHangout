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
  
  
  <script>
	function checkText(){
		
		var text = document.forms["pollForm"]["q"].value;
		if(text == ""){
		//document.getElementById("submit").disabled = true;
		//document.getElementById("submit").style.background = '#F00';
		alert("Please enter a question");
		return false;
		}
	}
		
</script>
  
</head>

<body>
 <div class="container-fluid">
  <div class="row col-lg-12">
      
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
        	<br />
 
        	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        		<ol class="carousel-indicators">
        			<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
        			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
        		</ol>
 
        		<div class="carousel-inner" role="listbox">
        			<div class="carousel-item active">
        				<img src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-restaurant-portfolio2.jpg" alt="First Slide" width="100%" height="250px" />
        			</div>
 
        			<div class="carousel-item">
        				<img src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-beach-portfolio.jpg" alt="Second Slide" width="100%" height="250px" />
 
        				<div class="carousel-caption">
        					<h2>Best Caption Title</h2>
        					<p>Oh yh it is indeed!!!!!! :D</p>
        				</div>
        			</div>
 
        			<div class="carousel-item">
        				<img src="http://azoom-sites.rockthemes.net/abboxed/wp-content/uploads/sites/14/2015/05/abboxed-beach-portfolio2.jpg" alt="Third Slide" width="100%" height="250px"/>
        			</div>
        		</div>
 
        		<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        			<span class="icon-prev" aria-hidden="true"></span>
        			<span class="sr-only">Previous</span>
        		</a>
 
        		<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        			<span class="icon-next" aria-hidden="true"></span>
        			<span class="sr-only">Next</span>
        		</a>
        	
        </div>
      </div>
    </div>
		<div class="row">
		<br />
		
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>Create A Poll</b>
				</legend>
				<div class ="row">
						<div class="col-sm-12"></div>
						
						<div class="col-sm-12">
						<form id=pollForm action="PollController" method="get">
						<div class="form-group">
						<div>Your Question</div>
						<div><textarea name="q" maxlength="255" rows="5" cols="40"></textarea></div>
						
						<div>Question Type</div>
						
						<input type="radio" name="qtype" value="multi" checked> Multiple Choice
  						<input type="radio" name="qtype" value="shortAnswer"> Short Answer
  						<input type="radio" name="qtype" value="rank"> Ranking
  						 <button id="submit" type="submit" class="btn btn-primary" onSubmit="return checkText()">Submit</button>
  						 </div>
  						</form>
						</div>
						 
						 </div><div class="col-sm-12">
				</div>
				<br /> 
			</fieldset>
		
	</div>
	</div>
	
	
	
	
	
	
	
	
	
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
document.write("Made by Le Nguyen "+d.getFullYear())
</script>
</body>
</html>