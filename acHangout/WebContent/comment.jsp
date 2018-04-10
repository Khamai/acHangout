<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty sessionScope.name && empty sessionScope.pass}">
	<jsp:forward page="login.jsp" />
</c:if>

<c:if test="${empty param.q}">
	<jsp:forward page="index.jsp" />
</c:if>

<c:set var="postid" value="${param.q}" />
<c:set var="liked" value="${List.get(0).getliked()}" />
<c:set var="disliked" value="${List.get(0).getdisliked()}" />


<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>New Post</title>
<link rel="shortcut icon" type="image/x-icon"
	href="Resources/megaphone.ico">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>

</head>
<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<jsp:include page="header.jsp" />

	<jsp:include page="top-menu.html" />
	<br />
	<br />
	<div class="container">
		<c:if test="${not empty List}">
			<div class="well"
				style="border-bottom: 5px solid #126758; background-color: #f2f2f2;">
				<h2>Topic:&emsp;${List.get(0).get_post_topic()}</h2>
				<p>
					<small style="color: #9999ff; font-size: 13px;">&emsp;<span
						class="fa fa-star"></span>&emsp;submitted in
						&nbsp;${List.get(0).get_post_date()}
						&nbsp;by&nbsp;${List.get(0).get_post_username()}
					</small>
				</p>
				<br>
				<h4>${List.get(0).get_post_content()}</h4>
			</div>
			<div id="bar">
				<h4>Rate this post:</h4>
				<div class="text-center">
					<c:out value="${List.get(0).getRating()}" />
				</div>
				<br />
				<div id="likes"></div>
				<div id="dislikes"></div>
				<br /> <br />
				<div class="form-group text-center">
					<form action="rating" method="post">
						<input type="hidden" name="postid" id="postid" value="${postid}">
						<span id="count1">${liked}</span>&emsp; <input type="submit"
							value="Like" class="btn btn-primary"
							onclick="submitLike('like'); document.getElementById('count1').innerHTML++" />&emsp;
						<input type="submit" id="btn" value="Dislike"
							class="btn btn-danger"
							onclick="submitLike('dislike'); document.getElementById('count2').innerHTML++" />&emsp;
						<span id="count2">${disliked}</span> <input type="hidden"
							name="choice" id="choice" value="">
					</form>
				</div>
			</div>
			<hr>
			<br />
			<br />
			<div class="row">
				<div class="col-sm-6">
					<form action="postcomment" method="post">
						<input type="hidden" name="postid" value="${postid}">
						<div class="form-group">
							<label for="content">Add your comment:</label>
							<textarea class="form-control" rows="9" maxlength="1000"
								name="content" required="required" id="content"></textarea>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-md"
								style="width: 86px !important;">Comment</button>
							&nbsp;
							<button type="reset" class="btn btn-primary btn-md"
								style="width: 86px !important;" value="Reset">Cancel</button>
						</div>

					</form>
				</div>
			</div>
			<br />
			<hr style="color: #123455;">
			<div>
				<h3>${total}&nbsp;Comments</h3>
			</div>
			<br />
			<br />

			<c:forEach items="${List}" var="list">
				<c:if
					test="${not empty list.get_comment_content() || not empty list.get_comment_username() || not empty list.get_comment_date()}">
					<div class="well" style="background-color: hsl(0, 0%, 96%);">
						<div class="media">
							<div class="media-left"></div>
							<div class="media-body">

								<h4 class="media-heading">${list.get_comment_username()}
									<c:if
										test="${ list.get_comment_username() eq list.get_post_username()}">
										<small style="color: #8080ff;">(Author)</small>
									</c:if>
									<small><i>&emsp;&emsp;${list.get_comment_date()}</i></small>
								</h4>
								<p>${list.get_comment_content()}</p>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
	</div>
	<br />
	<br />
	<br />
	<br />
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		function submitLike(choice) {
			if (choice === "like") {
				document.getElementById("choice").value = "1";
			} else if (choice === "dislike") {
				document.getElementById("choice").value = "-1";
			}
		}
		$('count1').on('click', function() {
			$(this).prop('disabled', true);
		});
		var likes = ${liked};
		var disLikes = ${disliked};
		function like() {
			likes++;
			calculateBar();
		}
		function dislike() {
			disLikes++;
			calculateBar();
		}
		function calculateBar() {
			var total = likes + disLikes;
			var percentageLikes = (likes / total) * 100;
			var percentageDislikes = (disLikes / total) * 100;

			document.getElementById('likes').style.width = percentageLikes
					.toString()
					+ "%";
			document.getElementById('dislikes').style.width = percentageDislikes
					.toString()
					+ "%";
		}
		calculateBar();
	</script>
</body>
</html>