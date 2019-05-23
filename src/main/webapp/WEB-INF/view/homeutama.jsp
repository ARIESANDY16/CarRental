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
				<li class="nav-item active"><a class="nav-link" href="/home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/vehicles">Vehicle</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Service </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/servis1">Sewa Mobil Dengan
							Supir</a> <a class="dropdown-item" href="/servis2">Sewa Mobil
							Lepas Kunci</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<!--  <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li> -->
			</ul>
			<div class="dropdown">
				<button class="btn btn-success dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					<i class="fas fa-user-circle"></i>
				</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="/login">Login</a> <a
						class="dropdown-item" href="/register">Register</a>
				</div>
			</div>

			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search" />
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">
					Search</button>
			</form>
		</div>
	</nav>
	<!--     END NAVBAR  -->


	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/isema.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/banner2-puasa-2019.png" class="d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/Indivara-VALUE_FINAL.png" class="d-block w-100"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<!-- END CAROUSEL -->
	<div class="container box">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<i class="fas fa-boxes"></i>
				<h3>Solutions Indivara</h3>
				<p>to deliver cost-effective enterprise solutions that will
					fulfill clients’ current needs and flexibility to support their
					long term business requirements as they grow.</p>
				<a href="Details.html" class="btn btn-primary">Details</a>
			</div>
			<div class="col-md-3 col-sm-6">
				<i class="fas fa-cloud"></i>
				<h3>Community and Loyalty Platforms</h3>
				<p>Our cross-channel approaches include building loyal and
					engaging digital communities for your brands and combining right
					mix of digital content creation and analytics.</p>
				<a href="Details.html" class="btn btn-primary">Details</a>
			</div>
			<div class="col-md-3 col-sm-6">
				<i class="fas fa-money-check-alt"></i>
				<h3>Payment</h3>
				<p>Indivara Payment Solutions platforms are designed to
					accommodate any e-payment methods. Our platforms are built by
					adopting flexibility law which embrace the best user experience in
					the customers side.</p>
				<a href="Details.html" class="btn btn-primary">Details</a>
			</div>
			<div class="col-md-3 col-sm-6">
				<i class="fas fa-plane"></i>
				<h3>Corporate Travel Management</h3>
				<p>Indivara have experiences in supporting many travel and
					transportation companies to become successfully adapting digital
					transformation era.</p>
				<a href="Details.html" class="btn btn-primary">Details</a>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h4>About Us</h4>
					<hr />
					<p>Indivara Group is one of the largest technology investment
						holding company in ASEAN which focuses on consulting/software
						development and platform businesses.</p>
				</div>
				<div class="col-md-6">
					<h4>Contact Us</h4>
					<hr />
					<p>PT. INDIVARA SEJAHTERA SUKSES MAKMUR. Address : Kirana
						Boutique Office Jalan Kirana Avenue Blok G3 No. 1-2 Kelapa Gading
						- Jakarta Utara 14240 Phone: +62 21 22455773 Fax: +62 21 45854126
						Email: info@indivaragroup.com</p>
				</div>
			</div>
		</div>
	</div>

	<div class="copyright">
		<i class="fab fa-twitter"></i> <i class="fab fa-facebook-square"></i>
		<i class="fab fa-linkedin"></i>
		<p>Copyright@2019 Indivara, All rights reserved</p>
	</div>



</body>
</html>