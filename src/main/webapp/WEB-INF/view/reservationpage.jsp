<!DOCTYPE HTML>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>CarForYou - Responsive Car Dealer HTML5 Template</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css"
	type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
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

<!-- Fav and touch icons -->
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
<style>
.errorWrap {
	padding: 10px;
	margin: 0 0 20px 0;
	background: #fff;
	border-left: 4px solid #dd3d36;
	-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
}

.succWrap {
	padding: 10px;
	margin: 0 0 20px 0;
	background: #fff;
	border-left: 4px solid #5cb85c;
	-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
}
</style>
</head>

<body>

	<nav id="navigation_bar" class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button id="menu_slide" data-target="#navigation"
					aria-expanded="false" data-toggle="collapse"
					class="navbar-toggle collapsed" type="button">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="header_wrap">
				<div class="user_login">
					<ul>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"><i
								class="fa fa-user-circle" aria-hidden="true"></i> <i
								class="fa fa-angle-down" aria-hidden="true"></i></a>
							<ul class="dropdown-menu">
								<li><a href="/edit-profile">Profile Settings</a></li>
								<li><a href="/my-reservation">My Booking</a></li>
								<li><a href="/logout-customer">Sign Out</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="header_search">
					<div id="search_toggle">
						<i class="fa fa-search" aria-hidden="true"></i>
					</div>
					<form action="#" method="get" id="header-search-form">
						<input type="text" placeholder="Search..." class="form-control">
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
			<div class="collapse navbar-collapse" id="navigation">
				<ul class="nav navbar-nav">
					<li><a href="/customer">Home</a></li>
					<li><a href="/about-us">About Us</a></li>
					<li><a href="/car-listing">Car Listing</a></li>
					<li><a href="/faqs">FAQs</a></li>
					<li><a href="/contact-us">Contact Us</a></li>
				</ul>
			</div>
		</div>
			</nav>
			

	<c:choose>
	<c:when test="${mode=='MODE_ADD_RESERVATION' }">
			<div class="container">
				<hr>
				<h1 class="justify-content-center">Reservation</h1>
				<hr>
							<div class="row justify-content-center">
								<div class="col-md-12">
						<div class="card-group">
							<div class="card p-4">
								<div class="card-body">
								<form class="form-horizontal" method="POST"
										action="save-reservation">
										
											<!-- 					Kolom 1 -->
										<div class="row clearfix">
											<div class="col-md-4">
												<img src="/getImage/${reservation.vehicle.idVehicle}"
													width="365" height="250">
											</div>

											<div class="col-md-4">
												<label>Customer Name</label> <input class="form-control"
													type="text" name="customer.fullnameCustomer"
													value="${reservation.customer.fullnameCustomer }">
																	</div>

											<div class="col-md-4">
												<label>Vehicle Name</label> <input class="form-control"
													type="text" name="vehicle.nameVehicle"
													value="${reservation.vehicle.nameVehicle }">
											</div>

											<input type="hidden" name="idReservation" value="" />


											<div class="col-md-4">
												<label>Rent Date</label> <input class="form-control"
													type="date" name="rentDate"
													value="${reservation.rentDate }">
											</div>

											<div class="col-md-4">
												<label>Rent Time</label> <input class="form-control"
													type="time" name="rentTime"
													value="${reservation.rentTime }">
											</div>

											<input type="hidden" name="customer.idCustomer"
												value="${reservation.customer.idCustomer }"> <input
												type="hidden" name="driver.idDriver" value="1"> <input
												type="hidden" name="driver.priceDriver"
												value="${reservation.driver.priceDriver }"> <input
												type="hidden" name="vehicle.idVehicle"
												value="${reservation.vehicle.idVehicle }"> <input
												type="hidden" name="vehicle.priceVehicle"
												value="${reservation.vehicle.priceVehicle }">


											<div class="col-md-4">
												<label>Rent Duration</label> <input class="form-control"
													type="number" name="rentDuration"
													value="${reservation.rentDuration }">
											</div>

											<div class="col-md-4">
												<label>Rent Status</label> <select class="form-control"
													name="rentStatus">
													<option value="Self Drive">Self Drive</option>
													<option value="With Driver">With Driver</option>
												</select>
											</div>

											<div class="col-md-4">
												<label>Pickup Location</label> <span
													class="input-group-text"> </span> <input
													class="form-control" type="text" name="pickupLocation"
													value="${reservation.pickupLocation }">
											</div>
										</div>
										<hr>
										<div class="row clearfix">
											<div class="row col-md-6"></div>
											<div class="row col-md-6">
												<div class="form-group">
													<input type="submit" class="btn btn-block btn-primary"
														value="Send" />
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/interface.js"></script>
	<!--Switcher-->
	<script src="assets/switcher/js/switcher.js"></script>
	<!--bootstrap-slider-JS-->
	<script src="assets/js/bootstrap-slider.min.js"></script>
	<!--Slider-JS-->
	<script src="assets/js/slick.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>