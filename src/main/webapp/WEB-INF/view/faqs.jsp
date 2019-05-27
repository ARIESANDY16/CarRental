<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Car Rental Portal | Page details</title>
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

	<section class="page-header aboutus_page">
		<div class="container">
			<div class="page-header_wrap">
				<div class="page-heading">
					<h1>
						FAQS
					</h1>
				</div>
				<ul class="coustom-breadcrumb">
					<li><a href="#">Home</a></li>
					<li>
						FAQS
					</li>
				</ul>
			</div>
		</div>
		<!-- Dark Overlay-->
		<div class="dark-overlay"></div>
	</section>
	<section class="about_us section-padding">
		<div class="container">
			<div class="section-header text-center">


				<h2>
					<?php   echo htmlentities($result->PageName); ?>
				</h2>
				<p>
					<?php  echo $result->detail; ?>
				</p>
			</div>
			<?php } }?>
		</div>
	</section>
	<!-- /About-us-->





	<!--Footer -->
	<div class="footer-top">
		<div class="container">
			<div class="row">

				<div class="col-md-6">
					<h6>FAQS</h6>
					<ul>
						<li><a href="/about-us">About Us</a></li>
						<li><a href="/faqs">FAQs</a></li>
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
	<!-- /Footer-->

	<!--Back to top-->
	<div id="back-top" class="back-top">
		<a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a>
	</div>
	<!--/Back to top-->

	<!--Login-Form -->
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
	<!--/Login-Form -->

	<!--Register-Form -->
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

	<!--/Register-Form -->

	<!--Forgot-password-Form -->
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
	<!--/Forgot-password-Form -->

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

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/about-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Jun 2017 07:26:12 GMT -->
</html>