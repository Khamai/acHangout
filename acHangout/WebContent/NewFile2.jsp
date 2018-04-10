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
</head>
<body>

	<div class="container">
		<h2>Form control: select</h2>
		<p>The form below contains two dropdown menus (select lists):</p>
		<form action="create-forum" method="post">
			<div class="form-group">
				<label for="title">Title:</label>
				<textarea class="form-control" rows="3" id="title" name="title"
					maxlength="80" required="required"></textarea>
			</div>
			<div class="form-group">
				<label for="description">Description (Optional):</label>
				<textarea class="form-control" rows="6" maxlength="50"
					name="description" id="description"></textarea>
			</div>
			<br />
			<div class="form-group row">
				<div class="col-xs-6">
					<select class="form-control" name="topic" required="required">
						<option value="" selected disabled>Select category...</option>
						<option value="food">Food</option>
						<option value="program">Program</option>
						<option value="media">Media</option>
						<option value="sport">Sport</option>
						<option value="help">Ask for help</option>
						<option value="activity">Activity</option>
						<option value="book">Book</option>
						<option value="funny">Funny sport</option>
						<option value="classified">Classified</option>
					</select>
				</div>
			</div>
			<div class="form-group text-right">
				<button type="submit" class="btn btn-primary btn-md">Create
					New</button>
			</div>
		</form>
	</div>

</body>
</html>
