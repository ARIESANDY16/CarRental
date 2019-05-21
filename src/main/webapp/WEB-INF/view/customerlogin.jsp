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
	<!-- NAVBAR -->
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
				<li class="nav-item"><a class="nav-link" href="/home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle disabled" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Vehicle </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/vehicles">Avanza</a> <a
							class="dropdown-item" href="/vehicles">Mitsubishi</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/vehicles">Daihatsu</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle disabled" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Service </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/servis1">Sewa Mobil Dengan
							Supir</a> <a class="dropdown-item" href="/servis2">Sewa Mobil
							Lepas Kunci</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Contact</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">About</a></li>
				<!--  <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li> -->
			</ul>
		</div>
	</nav>
	<!--     END NAVBAR  -->

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card-group">
					<div class="card p-4">
						<c:choose>
							<c:when test="${mode=='MODE_LOGIN_CUSTOMER' }">
								<div class="card-body">
									<h1>User Login</h1>
									<hr>
									<p class="text-muted">Sign In to your account</p>
									<form class="form-horizontal" method="POST"
										action="/login-customer">
										<c:if test="${not empty error }">
											<div class="alert alert-danger">
												<c:out value="${error }"></c:out>
											</div>
										</c:if>
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text">
												</span>
											</div>
											<input class="form-control" type="text"
												name="usernameCustomer" placeholder="Username"
												value="${customer.usernameCustomer }">
										</div>
										<div class="input-group mb-4">
											<div class="input-group-prepend">
												<span class="input-group-text"><i class="icon-lock"></i>
												</span>
											</div>
											<input class="form-control" type="password"
												name="passwordCustomer" placeholder="Password"
												value="${customer.passwordCustomer}">
										</div>
										<p>
											<input type="checkbox">Remember
										</p>
										<div class="row">
											<div class="form-group ">
												<input type="submit" class="btn btn-primary" value="Login" />
											</div>
										</div>
									</form>
									<hr>
									<div class="text-center">
										<p>
											Don't have an account? <a href="/register">Signup Here</a>
										</p>
										<p>
											<a href="/forgotpassword">Forgot Password ?</a>
										</p>
									</div>
								</div>
							</c:when>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>