
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
							<input type="password" class="form-control" name="passwordCustomer"
								value="${customer.passwordCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Email_Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="emailCustomer"
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
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>
				</c:choose>
</body>
</html>