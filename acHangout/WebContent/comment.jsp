<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>

	<div class="container">
		<div style="border-bottom: 5px solid #126758;">
			<h2>Media Object</h2>
			<p>Use the "media-left" class to left-align a media object. Text
				that should appear next to the image, is placed inside a container
				with class="media-body".</p>
			<p>Tip: Use the "media-right" class to right-align the media
				object.</p>
			<br>
		</div>
		<br /> <br />
		<form action="post" method="post">
			<div class="form-group">
				<label for="content">Content:</label>
				<textarea class="form-control" rows="14" maxlength="1000"
					name="content" required="required" id="content"></textarea>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-md">Submit
					Post</button>
			</div>
		</form>
		<div class="well">

			<!-- Left-aligned media object -->
			<div class="media">
				<div class="media-left"></div>
				<div class="media-body">
					<h4 class="media-heading">
						Left-aligned <small><i>&emsp;&emsp;Posted on February
								19, 2016</i></small>
					</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</div>
		</div>
		<div class="well">

			<div class="media">
				<div class="media-left"></div>
				<div class="media-body">
					<h4 class="media-heading">Left-aligned</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</div>
		</div>
		<div class="well">

			<div class="media">
				<div class="media-left"></div>
				<div class="media-body">
					<h4 class="media-heading">Left-aligned</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
