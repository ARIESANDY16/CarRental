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
	<!-- Start Switcher -->
	<div class="switcher-wrapper">
		<div class="demo_changer">
			<div class="demo-icon customBgColor">
				<i class="fa fa-cog fa-spin fa-2x"></i>
			</div>
			<div class="form_holder">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="predefined_styles">
							<div class="skin-theme-switcher">
								<h4>Color</h4>
								<a href="#" data-switchcolor="red" class="styleswitch"
									style="background-color: #de302f;"> </a> <a href="#"
									data-switchcolor="orange" class="styleswitch"
									style="background-color: #f76d2b;"> </a> <a href="#"
									data-switchcolor="blue" class="styleswitch"
									style="background-color: #228dcb;"> </a> <a href="#"
									data-switchcolor="pink" class="styleswitch"
									style="background-color: #FF2761;"> </a> <a href="#"
									data-switchcolor="green" class="styleswitch"
									style="background-color: #2dcc70;"> </a> <a href="#"
									data-switchcolor="purple" class="styleswitch"
									style="background-color: #6054c2;"> </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Switcher -->

	<!--Header-->
	<div class="default-header">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-2">
					<div class="logo">
						<a href="index.php"><img src="assets/images/logo.png"
							alt="image" /></a>
					</div>
				</div>
				<div class="col-sm-9 col-md-10">
					<div class="header_info">
						<div class="header_widgets">
							<div class="circle_icon">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</div>
							<p class="uppercase_text">For Support Mail us :</p>
							<a href="mailto:info@example.com">info@example.com</a>
						</div>
						<div class="header_widgets">
							<div class="circle_icon">
								<i class="fa fa-phone" aria-hidden="true"></i>
							</div>
							<p class="uppercase_text">Service Helpline Call Us:</p>
							<a href="tel:61-1234-5678-09">+91-1234-5678-9</a>
						</div>
						<div class="social-follow">
							<ul>
								<li><a href="#"><i class="fa fa-facebook-square"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter-square"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin-square"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus-square"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="login_btn">
							<a href="#loginform" class="btn btn-xs uppercase"
								data-toggle="modal" data-dismiss="modal">Login / Register</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Navigation -->
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

								<li><a href="/edit-customer">Profile Settings</a></li>

								<li><a href="/my-reservation">My Booking</a></li>

								<li><a href="/logout-customer">Sign Out</a></li>

								<!-- <li><a href="#loginform" data-toggle="modal"
									data-dismiss="modal">Profile Settings</a></li>
								<li><a href="#loginform" data-toggle="modal"
									data-dismiss="modal">Update Password</a></li>
								<li><a href="#loginform" data-toggle="modal"
									data-dismiss="modal">My Booking</a></li>
								<li><a href="#loginform" data-toggle="modal"
									data-dismiss="modal">Post a Testimonial</a></li>
								<li><a href="#loginform" data-toggle="modal"
									data-dismiss="modal">My Testimonial</a></li>
								<li><a href="#loginform" data-toggle="modal"
									data-dismiss="modal">Sign Out</a></li> -->
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
					<li><a href="/index">Home</a></li>
					<li><a href="/about-us">About Us</a></li>
					<li><a href="/car-listing">Car Listing</a>
					<li><a href="/faqs">FAQs</a></li>
					<li><a href="/contact-us">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation end -->
	<!-- /Header -->

	<!-- Banners -->
	<section id="banner" class="banner-section">
		<div class="container">
			<div class="div_zindex">
				<div class="row">
					<div class="col-md-5 col-md-push-7">
						<div class="banner_content">
							<h1>Find the right car for you.</h1>
							<p>We have more than a thousand cars for you to choose.</p>
							<a href="#" class="btn">Read More <span class="angle_arrow"><i
									class="fa fa-angle-right" aria-hidden="true"></i></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Banners -->

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