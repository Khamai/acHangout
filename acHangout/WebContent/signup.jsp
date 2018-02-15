<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
</head>
<body>
	<h2 align=center>Sign up</h2>
	<form action="loginServlet" method="post">
		<fieldset style='margin: 0px 155px; width: 360px;'>
			<legend> DETAIL </legend>
			<table cellpadding="10">
				<tr>
					<td>FirstName:</td>
					<td><input type="text" name="firstname" required="required" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lastname" required="required" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><input type="radio" name="type" value="male" required>Male&emsp;&emsp;
						<input type="radio" name="type" value="female" required>Female</td>
				</tr>
				<tr>
					<td>Username:</td>
					<td><input type="text" name="username" required="required" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="pass" required="required" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" name="email" required="required" /></td>
				</tr>
				<tr>
					<td>Telephone:</td>
					<td><input type="tel" name="tel" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Sign up" align="center"/></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>