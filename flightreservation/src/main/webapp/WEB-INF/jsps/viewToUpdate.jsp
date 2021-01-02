<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Flights</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
		<h2>Flights</h2>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Flight Number</th>
					<th>Airlines</th>
					<th>Departure City</th>
					<th>Arrival City</th>
					<th>Departure Time</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${flights}" var="flight">
					<tr>
						<td>${flight.flightNumber}</td>
						<td>${flight.operatingAirlines}</td>
						<td>${flight.departureCity}</td>
						<td>${flight.arrivalCity}</td>
						<td>${flight.hr}: ${flight.min} ${flight.period}</td>
						<td><a href="editFlight?flightId=${flight.id}">Edit</a></td>
						<td><a href="deleteFlight?flightId=${flight.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>