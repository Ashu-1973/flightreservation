<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>untitled document</title>
<link href="static/css/display.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
		url('static/image/flight2.jpg');
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
			

			<h1>Flights</h1>
			<table>
				<tr>
					<th>Airlines</th>
					<th>Departure City</th>
					<th>Arrival City</th>
					<th>Departure Time</th>
				</tr>
				<c:forEach items="${flights}" var="flight">
					<tr>
						<td>${flight.operatingAirlines}</td>
						<td>${flight.departureCity}</td>
						<td>${flight.arrivalCity}</td>
						<td>${flight.hr}:${flight.min} ${flight.period}</td>
						<td><a href="showCompleteReservation?flightId=${flight.id}"><button  class="btn btn-danger text-white btn-lg">Select</button></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</header>
</body>
</html>
