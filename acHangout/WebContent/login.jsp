<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
</head>
<body>
	<div>
		<h2 align=center>acHangout</h2>
		<form action="loginServlet" method="post">
			<fieldset style='margin: 0px 155px; width: 360px;'>
				<label>Username:<br /> <input type="text" name="username" required="required" /></label> 
				<br /><br /> 
				<label>Password: <br /><input type="password" name="userpass" required="required" /></label> 
				<br /><br />
				<input type="submit" value="Login" /> <br />
				<br />Don't have an account? <a href="signup.jsp" style="text-decoration: none;">Sign up your account here</a>
			</fieldset>
		</form>
	</div>
</body>
</html>