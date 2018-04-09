<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.modal-header, h4, .close {
	background-color: hsl(195, 73%, 58%);
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-footer {
	background-color: #e6e6e6;
}

.modal-body {
	background-color: hsl(0, 0%, 96%);
}
</style>
</head>
<body>

	<div class="container">
		<h2>Modal Login Example</h2>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>
		<p style="color: red;">${message}</p>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 5px 7px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>Login</h4>
					</div>
					<div class="modal-body" style="padding: 20px 30px;">
						<p style="color: red;">${message}</p>
						<form action="login" method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									class="form-control" id="username" placeholder="Enter username"
									name="username" required="required">
							</div>
							<div class="form-group">
								<label for="pass">Password:</label> <input type="password"
									class="form-control" id="pass" placeholder="Enter password"
									name="pass" required="required">

							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="" name="remember">
									Remember me</label>
							</div>
							<button type="submit" class="btn btn-info btn-block">Login</button>
						</form>
					</div>
					<div class="modal-footer">
						<p>
							Don't have an account?<a href="signup.jsp"
								style="text-decoration: none;">&emsp;Sign up</a>
						</p>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$("#myBtn").click(function() {
				$("#myModal").modal();
			});
		});
	</script>

</body>
</html>
