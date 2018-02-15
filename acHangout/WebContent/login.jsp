<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
</head>
<body>
	<div>
		<form action="loginServlet" method="post">
			<fieldset>
				<table>
					<tr>
						<td>UserName</td>
						<td><input type="text" name="username" required="required" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="userpass"
							required="required" /></td>
					</tr>
					<tr>
						<td><a href="signUp">Sign up your account here</a></td>
						<td><input type="submit" value="Login" /></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>