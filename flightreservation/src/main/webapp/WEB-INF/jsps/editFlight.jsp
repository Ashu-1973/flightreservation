<html>
<head>
<title>Edit Flight</title>
<link href="static/css/editFlight.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">


<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
		url('static/image/flight2.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 150vh;
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
			<form action="updatedFlight" method="post">
				
		<h1>Edit Flight</h1><br>
		Flight Id :<input type="text" name="id" value="${flight.id}" } readonly="readonly" /><br><br>
		Flight Number : <input type="text" name="flightNumber" value="${flight.flightNumber}" } readonly="readonly" /><br><br>
		Operating Airlines : <input type="text" name="operatingAirlines" value="${flight.operatingAirlines}" }/><br><br>
		Departure City : <input type="text" name="departureCity" value="${flight.departureCity}" }/><br><br>
		Arrival City: <input type="text" name="arrivalCity" value="${flight.arrivalCity}" }/><br><br>
		Departure Date : <input type="text" name="departuredate" value="${flight.dateOfDeparture}" }/><br><br>
		
						Hours : <select name="hr">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select> Minutes : <select name="min">
							<option value="00">00</option>
							<option value="05">05</option>
							<option value="10">10</option>
							<option value="15">15</option>
							<option value="20">20</option>
							<option value="25">25</option>
							<option value="30">30</option>
							<option value="35">35</option>
							<option value="40">40</option>
							<option value="45">45</option>
							<option value="50">50</option>
							<option value="55">55</option>
						</select> Period<select name="period">
							<option value="AM">AM</option>
							<option value="PM">PM</option>
						</select> <br><br><br> 
						<button class="btn btn-danger text-white btn-lg">Update Flight</button>
		

			</form>
		</div>
	</header>
</body>
</html>
