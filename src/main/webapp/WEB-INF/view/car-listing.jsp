<!DOCTYPE HTML>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Car Rental Portal | Car Listing</title>
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
	<!-- /Header -->

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
					<li><a href="page.php?type=faqs">FAQs</a></li>
					<li><a href="/contact-us">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navigation end -->

	<!--Page Header-->
	<section class="page-header listing_page">
		<div class="container">
			<div class="page-header_wrap">
				<div class="page-heading">
					<h1>Car Listing</h1>
				</div>
				<ul class="coustom-breadcrumb">
					<li><a href="#">Home</a></li>
					<li>Car Listing</li>
				</ul>
			</div>
		</div>
		<!-- Dark Overlay-->
		<div class="dark-overlay"></div>
	</section>
	<!-- /Page Header-->

	<!--Listing-->
	<c:choose>
		<c:when test="${mode=='ALL_VEHICLES' }">
			<div class="container text-center" id="tasksDiv">

				<div class="table-responsive">
					<table class="table table-striped table-bordered">

						<tbody>
							<c:forEach var="vehicle" items="${vehicles }">
								<tr>
									<td><img src="/getImage/${vehicle.idVehicle}" width="300"
										height="200"></td>
									<td><strong>${vehicle.nameVehicle} </strong><br>
										Harga : Rp. ${vehicle.priceVehicle},- / jam <br> + Driver
										: Rp. 10.000,- / jam Type: ${vehicle.typeVehicle} <br>
										Tahun : ${vehicle.yearVehicle} <br> Kapasitas :
										${vehicle.capacityVehicle} orang <br> Deskripsi :
										${vehicle.descriptionVehicle}<br></td>
									<td><a
										href="/addreservation?idVehicle=${vehicle.idVehicle }"
										class="btn btn-xs uppercase" data-toggle="modal"
										data-dismiss="modal"
										onclick ="return confirm('you have to login') href='/login-customer';">Reservation</a></td>
									<!-- <td><a href="#reservationform"
										class="btn btn-xs uppercase" data-toggle="modal"
										data-dismiss="modal">Reservation</a></td> -->
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
	</c:choose>

	<!--/Listing-->

	<!--Reservation-->
	<div class="modal fade" id="reservationform">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title">Reservation</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="login_wrap">
							<div class="col-md-12 col-sm-6">
								<form method="post" action="/save-reservation">
									<input type="hidden" name="idReservation"
										value="${reservation.idReservation }" />

									<div class="form-group">
										<input class="form-control" type="text" name="customer"
											placeholder="Customer Name"
											value="${reservation.customer.idCustomer }">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" name="vehicle"
											placeholder="Vehicle Name" value="${param.idVehicle}">
									</div>
									<div class="form-group">
										<input class="form-control" type="Date" name="rentDate"
											placeholder="Rent Date" value="${reservation.rentDate }">
									</div>
									<div class="form-group">
										<input class="form-control" type="time" name="rentTime"
											placeholder="Rent Time" value="${reservation.rentTime }">
									</div>
									<div class="form-group">
										<input class="form-control" type="number" name="rentDuration"
											placeholder="Rent Duration"
											value="${reservation.rentDuration }">
									</div>
									<div class="form-group select">
										<select class="form-control" name="fueltype">
											<option>Select Status</option>
											<option value="self Driver">Self Driver</option>
											<option value="with Driver">With Driver</option>
										</select>
									</div>
									<hr>
									<hr>
									<div class="form-group">
										<input type="submit" name="login" value="Send"
											class="btn btn-block">
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/Reservation-->

	<!--Footer -->
	<div class="footer-top">
		<div class="container">
			<div class="row">

				<div class="col-md-6">
					<h6>About Us</h6>
					<ul>
						<li><a href="page.php?type=aboutus">About Us</a></li>
						<li><a href="page.php?type=faqs">FAQs</a></li>
						<li><a href="page.php?type=privacy">Privacy</a></li>
						<li><a href="page.php?type=terms">Terms of use</a></li>
						<li><a href="admin/">Admin Login</a></li>
					</ul>
				</div>

				<div class="col-md-3 col-sm-6">
					<h6>Subscribe Newsletter</h6>
					<div class="newsletter-form">
						<form method="post">
							<div class="form-group">
								<input type="email" name="subscriberemail"
									class="form-control newsletter-input" required
									placeholder="Enter Email Address" />
							</div>
							<button type="submit" name="emailsubscibe" class="btn btn-block">
								Subscribe <span class="angle_arrow"><i
									class="fa fa-angle-right" aria-hidden="true"></i></span>
							</button>
						</form>
						<p class="subscribed-text">*We send great deals and latest
							auto news to our subscribed users very week.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-push-6 text-right">
					<div class="footer_widget">
						<p>Connect with Us:</p>
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
				</div>
				<div class="col-md-6 col-md-pull-6">
					<p class="copy-right">Copyright &copy; 2017 Car Rental Portal.
						All Rights Reserved</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /Footer -->

	<!-- Back to top -->
	<div id="back-top" class="back-top">
		<a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a>
	</div>
	<!-- /Back to top -->

	<!-- Login-Form -->
	<div class="modal fade" id="loginform">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title">Login</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="login_wrap">
							<div class="col-md-12 col-sm-6">
								<form method="post">
									<div class="form-group">
										<input type="email" class="form-control" name="email"
											placeholder="Email address*">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" name="password"
											placeholder="Password*">
									</div>
									<div class="form-group checkbox">
										<input type="checkbox" id="remember">

									</div>
									<div class="form-group">
										<input type="submit" name="login" value="Login"
											class="btn btn-block">
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<p>
						Don't have an account? <a href="#signupform" data-toggle="modal"
							data-dismiss="modal">Signup Here</a>
					</p>
					<p>
						<a href="#forgotpassword" data-toggle="modal" data-dismiss="modal">Forgot
							Password ?</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- /Login-Form -->

	<!-- Register-Form -->
	<div class="modal fade" id="signupform">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title">Sign Up</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="signup_wrap">
							<div class="col-md-12 col-sm-6">
								<form method="post" name="signup" onSubmit="return valid();">
									<div class="form-group">
										<input type="text" class="form-control" name="fullname"
											placeholder="Full Name" required="required">
									</div>
									<div class="form-group">
										<input type="text" class="form-control" name="mobileno"
											placeholder="Mobile Number" maxlength="10"
											required="required">
									</div>
									<div class="form-group">
										<input type="email" class="form-control" name="emailid"
											id="emailid" onBlur="checkAvailability()"
											placeholder="Email Address" required="required"> <span
											id="user-availability-status" style="font-size: 12px;"></span>
									</div>
									<div class="form-group">
										<input type="password" class="form-control" name="password"
											placeholder="Password" required="required">
									</div>
									<div class="form-group">
										<input type="password" class="form-control"
											name="confirmpassword" placeholder="Confirm Password"
											required="required">
									</div>
									<div class="form-group checkbox">
										<input type="checkbox" id="terms_agree" required="required"
											checked=""> <label for="terms_agree">I Agree
											with <a href="#">Terms and Conditions</a>
										</label>
									</div>
									<div class="form-group">
										<input type="submit" value="Sign Up" name="signup" id="submit"
											class="btn btn-block">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<p>
						Already got an account? <a href="#loginform" data-toggle="modal"
							data-dismiss="modal">Login Here</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- /Register-Form -->

	<!-- Forgot-password-Form -->
	<div class="modal fade" id="forgotpassword">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title">Password Recovery</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="forgotpassword_wrap">
							<div class="col-md-12">
								<form name="chngpwd" method="post" onSubmit="return valid();">
									<div class="form-group">
										<input type="email" name="email" class="form-control"
											placeholder="Your Email address*" required="">
									</div>
									<div class="form-group">
										<input type="text" name="mobile" class="form-control"
											placeholder="Your Reg. Mobile*" required="">
									</div>
									<div class="form-group">
										<input type="password" name="newpassword" class="form-control"
											placeholder="New Password*" required="">
									</div>
									<div class="form-group">
										<input type="password" name="confirmpassword"
											class="form-control" placeholder="Confirm Password*"
											required="">
									</div>
									<div class="form-group">
										<input type="submit" value="Reset My Password" name="update"
											class="btn btn-block">
									</div>
								</form>
								<div class="text-center">
									<p class="gray_text">For security reasons we don't store
										your password. Your password will be reset and a new one will
										be send.</p>
									<p>
										<a href="#loginform" data-toggle="modal" data-dismiss="modal"><i
											class="fa fa-angle-double-left" aria-hidden="true"></i> Back
											to Login</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /Forgot-password-Form -->


</body>
</html>