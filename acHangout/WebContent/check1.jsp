
<%
	String value = request.getParameter("submit");
	if (value == null)
		value = "EN";
	else if (value != null && value.equals("EN"))
		value = "EN";
	else
		value = "FR";
%>
<!DOCTYPE>
<html>
<head>
<title>English SignUp</title>
<link rel="icon" href="images/icon.png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<%
		if (value == "EN") {
	%>
	<div class="container" style="padding-top: 5%;">
		<div class="jumbotron">
			<form method="post">
				<div align="right"
					style="margin-left: auto; margin-right: auto; display: block; margin-top: 0%; margin-bottom: 0%">
					<button type="submit" name="submit"
						class="pull-right btn btn-danger btn-sm" value="FR">FranÃ§ais</button>
				</div>
			</form>
			<div class="text-center">
				<div style="display: inline-block; text-align: left;">
					<h1 style="text-align: center;">Let's get started, Clients!</h1>
					<h4 style="text-align: center;">Register below to start
						shopping at the online grocery!</h4>

					<br /> <br />
					<form id="form" name="form" method="post">
						<fieldset>
							<legend>Step 1: Pick up a user name and password for
								your Account</legend>
							<div class="form-group">
								<label for="uname">UserName: </label> <input type="text"
									class="form-control" id="uname" name="uname"
									placeholder="Enter user name: " required>
							</div>
							<div class="form-group">
								<label for="fname">First Name: </label> <input type="text"
									class="form-control" id="fname" name="fname"
									placeholder="Enter first name: " required>
							</div>
							<div class="form-group">
								<label for="lname">Last Name: </label> <input type="text"
									class="form-control" id="lname" name="lname"
									placeholder="Enter last name: " required>
							</div>
							<div class="form-group">
								<label for="email">Email: </label> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Enter email: " required>
							</div>
							<div class="form-group">
								<label for="pass1">Password: </label> <input type="password"
									class="form-control" id="pass1" name="pass1"
									placeholder="Enter password: " required>
							</div>
							<div class="form-group">
								<label for="pass2">Confirm Password: </label> <input
									type="password" class="form-control" id="pass2" name="pass2"
									placeholder="Confirm password: "
									onkeyup="checkPass(); return false;" required> <span
									id="confirmMessage" name="confirmMessage"
									class="confirmMessage"></span>
							</div>
						</fieldset>

						<fieldset>
							<legend>Step 2: Your details</legend>
							<div class="form-group">
								<label for="text">Street Address: </label> <input type="text"
									class="form-control" id="address" name="address"
									placeholder="Enter street address: " required>
							</div>
							<div class="form-group">
								<label for="city">City: </label> <select id="city" name="city"
									class="form-control" required>
									<option>Select City...</option>
									<option selected>Ottawa</option>
								</select>
							</div>
							<div class="form-group">
								<label for="province">Province: </label> <select id="province"
									name="province" class="form-control" required>
									<option>Select Province...</option>
									<option selected>Ontario</option>
								</select>
							</div>
							<div class="form-group">
								<label for="country">Country: </label> <select id="country"
									name="country" class="form-control" required>
									<option>Select Country...</option>
									<option selected>Canada</option>
								</select>
							</div>
							<div class="form-group">
								<label for="postal">Postal Code: </label> <input type="text"
									class="form-control" id="postal" name="postal"
									placeholder="Enter postal code:" required>
							</div>
						</fieldset>

						<input type="checkbox" name="checked" style="margin-bottom: 15px"
							required> By creating an account, you agree to our <a
							href="#" style="color: dodgerblue">Terms & Privacy</a> <br /> <br />
						<button id="signup" name="signup" type="submit"
							class="btn btn-success">SignUp</button>
						<div id="api-message" style="color: red"></div>
					</form>

					<br /> <span class="already">Already have an account? <a
						href="customer_login">Log in </a></span> <br /> <br />
				</div>
			</div>
		</div>
	</div>
	<%
		} else {
	%>
	<div class="container" style="padding-top: 5%;">
		<div class="jumbotron">
			<form method="post">
				<div align="right"
					style="margin-left: auto; margin-right: auto; display: block; margin-top: 0%; margin-bottom: 0%">
					<button type="submit" name="submit"
						class="pull-right btn btn-danger btn-sm" value="EN">English</button>
				</div>
			</form>
			<div class="text-center">
				<div style="display: inline-block; text-align: left;">
					<h1 style="text-align: center;">Laissez-nous commencer, les
						clients!</h1>
					<h4 style="text-align: center;">Inscrivez-vous ci-dessous pour
						commencer à magasiner à l'épicerie en ligne!</h4>

					<br /> <br />
					<form id="form" name="form" action="customer_signup" method="post">
						<fieldset>
							<legend>Étape 1: Récupérez le nom d'utilisateur et le
								mot de passe pour votre compte</legend>
							<div class="form-group">
								<label for="uname">Nom d'utilisateur: </label> <input
									type="text" class="form-control" id="uname" name="uname"
									placeholder="Enter user name: " required>
							</div>
							<div class="form-group">
								<label for="fname">Prénom: </label> <input type="text"
									class="form-control" id="fname" name="fname"
									placeholder="Enter first name: " required>
							</div>
							<div class="form-group">
								<label for="lname">Nom de famille: </label> <input type="text"
									class="form-control" id="lname" name="lname"
									placeholder="Enter last name: " required>
							</div>
							<div class="form-group">
								<label for="email">Email: </label> <input type="email"
									class="form-control" id="email" name="email"
									placeholder="Enter email: " required>
							</div>
							<div class="form-group">
								<label for="pass1">Mot de passe: </label> <input type="password"
									class="form-control" id="pass1" name="pass1"
									placeholder="Enter password: " required>
							</div>
							<div class="form-group">
								<label for="pass2">Confirmez le mot de passe: </label> <input
									type="password" class="form-control" id="pass2" name="pass2"
									placeholder="Confirm password: "
									onkeyup="checkPass(); return false;" required> <span
									id="confirmMessage" name="confirmMessage"
									class="confirmMessage"></span>
							</div>
						</fieldset>

						<fieldset>
							<legend>Étape 2: Vos coordonnées</legend>
							<div class="form-group">
								<label for="text">Adresse de rue: </label> <input type="text"
									class="form-control" id="address" name="address"
									placeholder="Enter street address: " required>
							</div>
							<div class="form-group">
								<label for="city">Ville: </label> <select id="city" name="city"
									class="form-control" required>
									<option>Sélectionnez une ville...</option>
									<option selected>Ottawa</option>
								</select>
							</div>
							<div class="form-group">
								<label for="province">Province: </label> <select id="province"
									name="province" class="form-control" required>
									<option>Choisir une province...</option>
									<option selected>Ontario</option>
								</select>
							</div>
							<div class="form-group">
								<label for="country">Pays: </label> <select id="country"
									name="country" class="form-control" required>
									<option>Choisissez le pays...</option>
									<option selected>Canada</option>
								</select>
							</div>
							<div class="form-group">
								<label for="postal">Code Postal: </label> <input type="text"
									class="form-control" id="postal" name="postal"
									placeholder="Enter postal code:" required>
							</div>
						</fieldset>

						<input type="checkbox" name="checked" style="margin-bottom: 15px"
							required> En créant un compte, vous acceptez notre <a
							href="#" style="color: dodgerblue">Conditions et
							confidentialité</a> <br /> <br />
						<button id="signup" name="signup" type="submit"
							class="btn btn-success">SignUp</button>
						<div id="api-message" style="color: red"></div>
					</form>

					<br /> <span class="already">Vous avez déjà un compte? <a
						href="customer_login">S'identifier</a></span> <br /> <br />
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>