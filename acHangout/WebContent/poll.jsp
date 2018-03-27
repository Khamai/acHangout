<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>


<title>acHangout</title>


<script src="javascript/dynamicForm.js" type="text/javascript"></script>

<link rel="stylesheet"
	href="bootstrap/css/bootstrap.min.css">
<script
	src="bootstrap/js/bootstrap.min.js"></script>



<style>
	.dyn-field{
		margin:20px;
	}
</style>
</head>



<body>




	<div class="container-fluid">



		<div class="row">
		<div class="col-md-6 jumbotron form-group border">

			
				<form id=pollForm action="PollController" method="get">

					<div>
						<h2>Your Question</h2>
					</div>
					<div>
						<textarea name="q" maxlength="255" rows="5" cols="40" required></textarea>
					</div>

					<div>
						<h3>Question Type</h3>
					</div>

					<div class="btn-group btn-group-sm">
						<button class="btn btn-primary" id="qt1" onClick="qSetup('multi')">Multiple
							Choice</button>
						<button class="btn btn-primary" id="qt2" onClick="qSetup('short')">Short
							Answer</button>
						<button class="btn btn-primary" id="qt3" onClick="qSetup('rank')">Ranking</button>
					</div>

				</form>

			
			</div>
			<div class="col-md-6 jumbotron form-group">

			
				<form id=dynamicForm action="PollController" method="get">
				<!-- <table class="">
						<tr>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
						</tr>
						<tr>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
							<td><span class="multi"><input type="text" placeholder="enter text here"></span></td>
						</tr>
						<tr>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
						</tr>
						<tr>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
							<td class="multi"><span><input type="text" placeholder="enter text here"></span></td>
						</tr>
						
						
					</table>  -->	
					<!-- 
					<div class="row">
					<div class="col-md-6 " id="left-box">
						<div class="row border border-warning form-group"><span><input type="text" class="dyn-field"><button class="btn btn-danger"></button></span></div>
						<div class="row border border-warning form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-warning form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-warning form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-warning form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-warning form-group"><span><input type="text" class="dyn-field"></span></div>
					</div>
					
					<div class="col-md-6" id="right-box">
						<div class="row border border-dark form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-dark form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-dark form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-dark form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-dark form-group"><span><input type="text" class="dyn-field"></span></div>
						<div class="row border border-dark form-group"><span><input type="text" class="dyn-field"></span></div>
					</div>
					</div>

				
			 -->
			<div class="row">
			<div class="col-md-6 " id="left-box">
			</div>
			<div class="col-md-6" id="right-box">
			</div>
				
			</div>

</form>





	</div>
	</div>



	<script type="text/javascript">
		var d = new Date()
		document.write("Made by Le Nguyen " + d.getFullYear())
	</script>
</body>
</html>