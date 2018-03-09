<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	border-top: 5px solid #126758;
	border-left: 5px solid #126758;
	overflow: hidden;
	background-color: #e9e9e9;
	
}

.topnav a {
	float: left;
	display: block;
	/* Padding: make button bigger or smaller (top, right, bottom, left) */
	color: black;
	padding: 13px 16px;
	font-size: 18px;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.active {
	background-color: #4CAF50;
	color: white;
}

.topnav .icon {
	display: none;
}

@media screen and (max-width: 600px) {
	.topnav
	
	 
	
	a
	
	
	:not
	
	 
	
	(
	:first-child
	
	 
	
	)
	{
	display
	
	
	:
	
	 
	
	none
	
	
	;
}

.topnav a.icon {
	float: right;
	display: block;
}

}
@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
}
</style>
</head>
<body>

	<div class="topnav" id="myTopnav">
		<a class="active" href="index.jsp">Home</a> <a href="#about">Profile</a>
		<a href="#contact">Messenger</a> <a href="#contact">Help&nbsp;<i
			class="fa fa-question-circle-o"></i></a> &emsp; <a href="signup.jsp"
			style="float: right">Sign up</a> <a href="login.jsp"
			style="float: right">Login</a> <a href="#" style="float: right"
			onclick="open_translate(this)" title="Google Translate"><i
			class="fa fa-globe"></i></a> <a href="javascript:void(0);"
			style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
	</div>



	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
	</script>

</body>
</html>
