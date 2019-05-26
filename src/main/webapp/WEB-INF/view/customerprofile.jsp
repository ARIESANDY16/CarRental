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
	<li><a href="/edit-profile">Profile Settings</a></li>
	<li><a href="/edit-profile">Profile Settings</a></li>
	
	<li><a href="/my-reservation">My Booking</a></li>

								<li><a href="/logout-customer">Sign Out</a></li>
<<<<<<< HEAD
=======
								
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
>>>>>>> Feature/Ray
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

	<c:choose>
		<c:when test="${mode=='MODE_UPDATE_CUSTOMER' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-customer">
					<input type="hidden" name="idCustomer"
						value="${customer.idCustomer }" />
					<div class="form-group">
						<label class="control-label col-md-3">Full Name </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullnameCustomer"
								value="${customer.fullnameCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="usernameCustomer"
								value="${customer.usernameCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control"
								name="passwordCustomer" value="${customer.passwordCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Email_Address</label>
						<div class="col-md-7">
							<input type="email" class="form-control" name="emailCustomer"
								value="${customer.emailCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="contactnoCustomer"
								value="${customer.contactnoCustomer }" />
						</div>
					</div>

					<!-- NEW UPDATE COLUMN	 -->
					<div class="form-group">
						<label class="control-label col-md-3">Gender</label> 
						<div class="col-sm-7">
						<select
							class="form-control" name="genderCustomer">
							<option>Select Gender</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Date of Birth</label>
						<div class="col-md-7">
							<input type="date" class="form-control" name="dobCustomer"
								value="${customer.dobCustomer }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="addressCustomer"
								value="${customer.addressCustomer }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">City</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="cityCustomer"
								value="${customer.cityCustomer }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Country</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="countryCustomer"
								value="${customer.countryCustomer }" />
						</div>
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>
	
		<!--Footer -->
	<div class="footer-top">
		<div class="container">
			<div class="row">

				<div class="col-md-6">
					<h6>About Us</h6>
					<ul>
						<li><a href="/about-us">About Us</a></li>
						<li><a href="/faqs">FAQs</a></li>
						<li><a href="page.php?type=privacy">Privacy</a></li>
						<li><a href="page.php?type=terms">Terms of use</a></li>
						<li><a href="/admin">Admin Login</a></li>
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
	<!-- /Footer-->

	<!--Back to top-->
	<div id="back-top" class="back-top">
		<a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a>
	</div>
	<!--/Back to top-->

<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>