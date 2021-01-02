<html>
<head>
<title>untitled document</title>
<link href="static/css/findFlight.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
		url('static/image/flight4.jpg');
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
					<li><a href="#">Reservation</a></li>
					<li><a href="#">how to book</a></li>
					<li><a href="#">check more</a></li>
					<li><a href="logout-success">LOG OUT</a></li>


				</ul>
		</nav>
		<div class="signin">
		<br><br><br>
			<h1>FIND FLIGHTS</h1>
			<br>
			<br>
			
			<form action="findFlights" method="post">

				Departure City : <input type="text" size=20 name="from" /> 
				Arrival City : <input type="text" size=20  name="to" /> 
				Departure Date : <input type="date" size=20 name="departureDate" /> 
				<div class="but">
				<button class="btn btn-danger text-white btn-lg">Search</button>
				</div>
			</form>
		</div>
	</header>
</body>
</html>
