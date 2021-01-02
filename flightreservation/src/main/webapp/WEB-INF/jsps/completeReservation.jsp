<html>
<head>
<title>Complete Reservation</title>
<link href="static/css/complete.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">


<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
		url('static/image/flight2.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 200vh;
}
</style>


</head>
<body>
	<header>
		<nav>
			<div class="row clearfix">

				<ul class="main-nav animated slideInDown">
					<li><a href="#">Reservation</a></li>
					<li><a href="#">How to Book</a></li>
					<li><a href="#">check more</a></li>
					<li><a href="logout-success">Log Out</a></li>


				</ul>
		</nav>
		<div class="signin">
			<h2>Complete Reservation</h2>
			<br>
			AirLine       : ${flight.operatingAirlines} <br>
			DepartureCity : ${flight.departureCity} <br>
			ArrivalCity   : ${flight.arrivalCity} 
			<br><br><br>
			<form action="completeReservation" method="post">
				<h2>Passenger Details:</h2><br>
				<input type="text" name="passengerFirstName" placeholder="First Name" /> <br><br>
				<input type="text" name="passengerLastName" placeholder="Last Name"/> <br><br>
				<input type="text" name="passengerEmail" placeholder="Email"/> <br><br> 
				<input type="text" name="passengerPhone" placeholder="Phone"/> <br><br>

				<br><br>
				<h2>Card Details:</h2><br>
				 <input type="text" name="nameOnTheCard" placeholder="Name On card" /> <br><br>
				<input type="text" name="cardNumber" placeholder="Card Number" /> <br><br>
				<input type="date" name="expirationDate" placeholder="Date Of Expiry" /> <br><br>
				<input type="text" name="c" placeholder="CVV Number" /> <br><br> 
				<input	type="hidden" name="flightId" value="${flight.id}" /> 
					<br><br>
					<button class="btn btn-danger text-white btn-lg">CONFIRM</button>
			</form>
		</div>
	</header>
</body>
</html>
