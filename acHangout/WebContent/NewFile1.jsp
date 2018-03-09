<%@ page import="java.io.*,java.util.Locale"%>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%
	//Get the client's Locale
	Locale locale = request.getLocale();
	String language = locale.getLanguage();
	String country = locale.getCountry();
%>

<html>
<head>
<title>Detecting Locale</title>
</head>

<body>

	<p align="center">
		<%
			out.println("Language : " + language + "<br />");
			out.println("Country  : " + country + "<br />");
		%>
	</p>
	<div style='display: none; padding: 10px;'
		id='google_translate_element'></div>
	<script>
		function googleTranslateElementInit() {
			new google.translate.TranslateElement({
				pageLanguage : "<%=language%>"<%=language%>"
		',
				layout : google.translate.TranslateElement.InlineLayout.SIMPLE
			}, 'google_translate_element');
		}
	</script>
	<script type="text/javascript"
		src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
		
	</script>
</body>

</html>