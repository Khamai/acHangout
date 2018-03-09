<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<div class="header">
		<jsp:include page="header.html" />
	</div>
	<br></br>
	<div class="container">
  <h2>Asian's foods Posts</h2> 
  <br></br>           
  <table class="table" border="2">
    <thead>
      <tr>
        <th>Topics</th>
        <th>Auther</th>
        <th>Date</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><a>I found a really good place for eat Pho</a></td>
        <td>Kha Mai</td>
        <td>Jan-4th-2018</td>
      </tr>
      <tr>
        <td><a>Anyone want to try something special Chinese food?</a></td>
        <td>Tianze</td>
        <td>Jan-5th-2018</td>
      </tr>
      <tr>
        <td><a>Top 5 Sushi bar in Ottawa</a></td>
        <td>Hotdog</td>
        <td>Jan-2nd-2018</td>
      </tr>
      <tr>
        <td><a>Top 5 Asian Wings bar in Ottawa</a></td>
        <td>Hotdog</td>
        <td>Jan-2nd-2018</td>
      </tr>
      <tr>
        <td><a>What is Baijiu? Check it out!</a></td>
        <td>Hotdog</td>
        <td>Jan-2nd-2018</td>
      </tr>
      <tr>
        <td><a>Anyone wants to try stinky Tofu lol?</a></td>
        <td>Hotdog</td>
        <td>Jan-2nd-2018</td>
      </tr>
      <tr>
        <td><a>Kong Pao Chicken Recipe!</a></td>
        <td>Walter white</td>
        <td>Jan-1st-2018</td>
      </tr>
    </tbody>
  </table>
  <button type="button" class="btn btn-primary btn-lg">New Post</button>
</div>
	

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>
</body>
</html>