<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/style.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Car Rental JDT7</title>
</head>
<body>
	<!--     NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-light bg-blue">
		<a class="navbar-brand" href="/home">Car Rental</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/customer">Home <span class="sr-only">(current)</span></a></li>
			</ul>
			
		</div>
	</nav>
	<!--     END NAVBAR  -->


<c:choose>
<c:when test="${mode=='CUSTOMER_RESERVATION'}">
			<div class="container text-center" id="tasksDiv">
				<h3>My Reservation</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Customer</th>
								<th>Vehicle</th>
								<th>Driver</th>
								<th>Rent Date</th>
								<th>Rent Time</th>
								<th>Rent Duration</th>
								<th>Pickup Location</th>
								<th>Return Date</th>
								<th>Return Time</th>
								<th>Rent Status</th>
								<th>Total Payment</th>
								<th>Status Payment</th>
							
							</tr>
						</thead>
						<tbody>
							<c:forEach var="reservation" items="${reservations}">
								<tr>
								
								<td>${reservation.customer.fullnameCustomer}</td>
									<td>${reservation.vehicle.nameVehicle}</td>
									<td>${reservation.driver.fullnameDriver}</td>
									<td>${reservation.rentDate}</td>
									<td>${reservation.rentTime}</td>
									<td>${reservation.rentDuration}</td>
									<td>${reservation.pickupLocation}</td>
									<td>${reservation.returnDate}</td>
									<td>${reservation.returnTime}</td>
									<td>${reservation.rentStatus}</td>
									<td>${reservation.totalPayment}</td>
									<td>${reservation.statusPayment}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
</c:choose>


</body>
</html>