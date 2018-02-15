<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
</head>
<body>
	<div>
		<h2 align=center>Sign up</h2>
		<form action="loginServlet" method="post">
			<fieldset style='margin: 0px 155px; width: 360px;'>
				<legend>Detail</legend>
				<div align="center">
					<label>First Name:<br /> <input type="text"
						name="firstname" required="required" /></label> <br />
					<br /> <label>Last Name:<br /> <input type="text"
						name="lastname" required="required" /></label> <br />
					<br /> <label>Gender:</label> &emsp;&emsp;<input type="radio"
						name="type" value="male" required>Male &emsp;&emsp;<input
						type="radio" name="type" value="female" required>Female <br />
					<br /> <label>Username:<br /> <input type="text"
						name="username" required="required" /></label> <br />
					<br /> <label>Password: <br />
					<input type="password" name="userpass" required="required" /></label> <br />
					<br /> <label>Email: <br />
					<input type="email" name="email" required="required" /></label> <br />
					<br /> <label>Telephone: <br />
					<input type="tel" name="telephone" /></label> <br />
					<br />
				</div>
				<input type="submit" value="Sign Up"  /> <br />
			</fieldset>
		</form>
	</div>
</body>
</html>