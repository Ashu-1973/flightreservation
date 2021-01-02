<html>
<head>
<title>Update Flight</title>
<link href="static/css/login.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url('static/image/flight5.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100vh;
}
</style>


</head>
<body>
	<header>
		<nav>
			<div class="row clearfix">

				<ul class="main-nav animated slideInDown">
					<li><a href="#">RESERVATION</a></li>
					<li><a href="#">HOW TO BOOK</a></li>
					<li><a href="#">CHECK MORE</a></li>
					<li><a href="logout-success">LOG OUT</a></li>


				</ul>
		</nav>
		<div class="signin">
			<form action="viewFlights" method="post">
				<h5 style="color: white">Route of flight You Want to Update</h5>
				<br> <br> 
				<input type="text" name="departureCity" placeholder="Departure City" /> 
				<br><br>
				<input type="text" name="arrivalCity" placeholder="Arrival City" /> 
				<br><br>
				<input type="date" name="departureDate" placeholder="Departure Date" /> <br> <br>
				<br><br>
				<button class="btn btn-danger text-white btn-lg">
					<b>Find</b>
				</button>
				<br> <br> <br> <br>

			</form>
			${msg}
		</div>
	</header>
</body>
</html>
