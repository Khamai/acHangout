<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<html>
<head>
</head>

<body>
<%
	String url = "jdbc:mysql://localhost:3306/";
	String dbName = "form";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root";
	String password = "1234";

	try 
	{
		Connection conn = null;
		
		Class.forName(driver).newInstance();
        
        conn = DriverManager
                .getConnection(url + dbName, userName, password);

		Statement statement = null;
		ResultSet rs = null;

		statement = conn.createStatement();

		String QueryString = "SELECT * from profile";
		rs = statement.executeQuery(QueryString);
%>

<%
	while (rs.next()) {
%>
<TR>
	<TD><%=rs.getString(2)%></TD>
	<TD><%=rs.getString(3)%></TD>
	<TD><%=rs.getString(4)%></TD>
	<TD><%=rs.getString(6)%></TD>
</TR>
<% 
	}
%>

<%
// close all the connections.
rs.close();
statement.close();
conn.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>
<TR>
</TR>
</TABLE>
</font>
</body>
</html>