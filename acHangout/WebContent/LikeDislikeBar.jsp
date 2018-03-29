<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<meta charset="utf-8">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<head>
<style>
#body {
	min-width: 100%;
	text-align: center;
}

#all {
	width: 100%;
	margin: 0 auto;
}

#likes {
	height: 5px;
	width: 50%;
	float: left;
	background: green;
}

#dislikes {
	height: 5px;
	width: 50%;
	float: right;
	background: red;
}

#bar {
	margin: 0 auto;
	width: 60%;
}
</style>
</head>
<body>
	<div id="all">
		<div id="bar">
			<div id="likes"></div>
			<div id="dislikes"></div>
			<input type="button" value="Like" class="btn btn-primary" onclick="like(); document.getElementById('count1').innerHTML++"/>
			<span id="count1">1</span>
			<input type="button" value="Dislike" class="btn btn-danger" onclick="dislike(); document.getElementById('count2').innerHTML++"/>
			<span id="count2">1</span>
		</div>
	</div>
</body>
<script type="text/javascript">
	var likes = 0, disLikes = 0;
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
</html>