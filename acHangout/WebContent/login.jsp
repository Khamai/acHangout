<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
	<div id="header">
		<jsp:include page="header.html" />
	</div>

	<div id="content">
		<h2 align=center>acHangout</h2>
		<form action="loginServlet" method="post">
			<fieldset id="border" style='margin: 0px 155px; width: 360px;'>
				<legend>
					<b>DETAIL</b>
				</legend>
				<table cellpadding="10">
					<tr>
						<td>Username:</td>
						<td><input type="text" name="username" required="required" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="pass" required="required" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Login" align="center" /></td>
					</tr>
				</table>
				<br /> &nbsp;&nbsp;&nbsp; Don't have an account?&emsp;<a
					href="signup.jsp" style="text-decoration: none;">Sign up</a>
			</fieldset>
		</form>
	</div>
</body>
</html>