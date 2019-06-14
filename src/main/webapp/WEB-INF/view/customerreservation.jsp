<!DOCTYPE HTML>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Car Rental Portal</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css"
	type="text/css">
<link href="assets/css/slick.css" rel="stylesheet">
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" id="switcher-css" type="text/css"
	href="assets/switcher/css/switcher.css" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/red.css" title="red" media="all"
	data-default-color="true" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/orange.css" title="orange" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/blue.css" title="blue" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/pink.css" title="pink" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/green.css" title="green" media="all" />
<link rel="alternate stylesheet" type="text/css"
	href="assets/switcher/css/purple.css" title="purple" media="all" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
</head>
<body>
	<c:choose>
		<c:when test="${mode=='CUSTOMER_RESERVATION' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<hr>
								<div class="panel panel-default">
									<div class="panel-heading">My Reservation</div>
									<div class="panel-body">
										<div id="not-print">
											<button class="btn-primary" onclick="window.print()">Print</button>
										</div>
										<table id="zctb"
											class="display table table-striped table-bordered table-hover"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>Reservation Date</th>
													<th>Customer</th>
													<th>Vehicle</th>
													<th>Driver</th>
													<th>Number Driver</th>
													<!-- <th>Rent Date</th>
													<th>Rent Time</th>
													<th>Rent Duration</th> -->
													<th>Pickup Location</th>
													<th>Action</th>
													<!-- <th>Return Date</th>
													<th>Return Time</th>
													<th>Rent Status</th>
													<th>Total Payment</th>
													<th>Status Payment</th> -->
												</tr>
											</thead>
											<tbody>
												<c:forEach var="reservation" items="${reservations}">
													<tr>
														<td>${reservation.reservationDate}</td>
														<td>${reservation.customer.fullnameCustomer}</td>
														<td>${reservation.vehicle.nameVehicle}</td>
														<td>${reservation.driver.fullnameDriver}</td>
														<td>${reservation.driver.contactnoDriver }</td>
														<%-- <td>${reservation.rentDate}</td>
														<td>${reservation.rentTime}</td>
														<td>${reservation.rentDuration}</td> --%>
														<td>${reservation.pickupLocation}</td>
														<td><a
															href="/view-reservation?idReservation=${reservation.idReservation }	"><i
																class="fa fa-edit">View</i></a>&nbsp;&nbsp;</td>
														<%-- <td>${reservation.returnDate}</td>
														<td>${reservation.returnTime}</td>
														<td>${reservation.rentStatus}</td>
														<td>${reservation.totalPayment}</td>
														<td>${reservation.statusPayment}</td> --%>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<a href="/customer" class="btn btn-info" type="button">Back
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>

	<!-- Loading Scripts -->
	<script src="assets/admin/js/jquery.min.js"></script>
	<script src="assets/admin/js/bootstrap-select.min.js"></script>
	<script src="assets/admin/js/bootstrap.min.js"></script>
	<script src="assets/admin/js/jquery.dataTables.min.js"></script>
	<script src="assets/admin/js/dataTables.bootstrap.min.js"></script>
	<script src="assets/admin/js/Chart.min.js"></script>
	<script src="assets/admin/js/fileinput.js"></script>
	<script src="assets/admin/js/chartData.js"></script>
	<script src="assets/admin/js/main.js"></script>

</body>
</html>
