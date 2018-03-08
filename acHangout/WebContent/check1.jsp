<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

<style>
body {
	font-family: "Lato", sans-serif
}

.mySlides {
	display: none
}
</style>
<body>

	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-black w3-card">
			<a
				class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right"
				href="javascript:void(0)" onclick="myFunction()"
				title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a> <a
				href="index.jsp" class="w3-bar-item w3-button w3-padding-large">Home</a>
			<a href="#band"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Profile</a>
			<a href="#tour"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Messenger</a>
			<a href="#contact"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Help&nbsp;<i
				class="fa fa-question-circle-o"></i></a> &emsp; <a href="signup.jsp"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small"
				style="float: right">Sign up</a> <a href="login.jsp"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small"
				style="float: right">Login</a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small"
				style="float: right" onclick="open_translate(this)"
				title="Google Translate"><i class="fa fa-globe"></i></a>
			<div class="search-container">
				<form action="search.jsp" class="w3-padding-large w3-hide-small w3-right">
					&emsp; &emsp; &emsp; &emsp; <input type="text"
						placeholder="Search.." name="search">
					<button type="submit" >
						<i class="fa fa-search"></i>
					</button>
				</form>
			</div>
		</div>
	</div>

	<!-- Navbar on small screens -->
	<div id="navDemo"
		class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top"
		style="margin-top: 46px">
		<a href="#band" class="w3-bar-item w3-button w3-padding-large">BAND</a>
		<a href="#tour" class="w3-bar-item w3-button w3-padding-large">TOUR</a>
		<a href="#contact" class="w3-bar-item w3-button w3-padding-large">CONTACT</a>
		<a href="#" class="w3-bar-item w3-button w3-padding-large">MERCH</a>
	</div>

	<!-- Page content -->
	<div class="w3-content" style="max-width: 2000px; margin-top: 46px">

		<!-- The Tour Section -->
		<div class="w3-black" id="tour">
			<div class="w3-container w3-content w3-padding-64"
				style="max-width: 800px">
				<div class="w3-row-padding w3-padding-32" style="margin: 0 -16px">
					<div class="w3-third w3-margin-bottom">
						<img src="/w3images/newyork.jpg" alt="New York"
							style="width: 100%" class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>New York</b>
							</p>
							<p class="w3-opacity">Fri 27 Nov 2016</p>
							<p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
							<button class="w3-button w3-black w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Buy
								Tickets</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="/w3images/paris.jpg" alt="Paris" style="width: 100%"
							class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>Paris</b>
							</p>
							<p class="w3-opacity">Sat 28 Nov 2016</p>
							<p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
							<button class="w3-button w3-black w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Buy
								Tickets</button>
						</div>
					</div>
					<div class="w3-third w3-margin-bottom">
						<img src="/w3images/sanfran.jpg" alt="San Francisco"
							style="width: 100%" class="w3-hover-opacity">
						<div class="w3-container w3-white">
							<p>
								<b>San Francisco</b>
							</p>
							<p class="w3-opacity">Sun 29 Nov 2016</p>
							<p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
							<button class="w3-button w3-black w3-margin-bottom"
								onclick="document.getElementById('ticketModal').style.display='block'">Buy
								Tickets</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Ticket Modal -->
		<div id="ticketModal" class="w3-modal">
			<div class="w3-modal-content w3-animate-top w3-card-4">
				<header class="w3-container w3-teal w3-center w3-padding-32">
					<span
						onclick="document.getElementById('ticketModal').style.display='none'"
						class="w3-button w3-teal w3-xlarge w3-display-topright">�</span>
					<h2 class="w3-wide">
						<i class="fa fa-suitcase w3-margin-right"></i>Tickets
					</h2>
				</header>
				<div class="w3-container">
					<p>
						<label><i class="fa fa-shopping-cart"></i> Tickets, $15
							per person</label>
					</p>
					<input class="w3-input w3-border" type="text"
						placeholder="How many?">
					<p>
						<label><i class="fa fa-user"></i> Send To</label>
					</p>
					<input class="w3-input w3-border" type="text"
						placeholder="Enter email">
					<button
						class="w3-button w3-block w3-teal w3-padding-16 w3-section w3-right">
						PAY <i class="fa fa-check"></i>
					</button>
					<button class="w3-button w3-red w3-section"
						onclick="document.getElementById('ticketModal').style.display='none'">
						Close <i class="fa fa-remove"></i>
					</button>
					<p class="w3-right">
						Need <a href="#" class="w3-text-blue">help?</a>
					</p>
				</div>
			</div>
		</div>

		<!-- End Page Content -->
	</div>
	<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

	<!-- Footer -->
	<footer
		class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
		<p class="w3-medium">
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a>
		</p>
	</footer>

	<script>
		// Automatic Slideshow - change image every 4 seconds
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 4000);
		}

		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}

		// When the user clicks anywhere outside of the modal, close it
		var modal = document.getElementById('ticketModal');
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>

</body>
</html>