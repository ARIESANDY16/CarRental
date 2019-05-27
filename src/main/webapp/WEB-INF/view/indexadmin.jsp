<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" class="no-js">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Car Rental Portal | Admin Login</title>
<link rel="stylesheet" href="assets/admin/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/admin/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/admin/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="assets/admin/css/bootstrap-social.css">
<link rel="stylesheet" href="assets/admin/css/bootstrap-select.css">
<link rel="stylesheet" href="assets/admin/css/fileinput.min.css">
<link rel="stylesheet"
	href="assets/admin/css/awesome-bootstrap-checkbox.css">
<link rel="stylesheet" href="assets/admin/css/style.css">
</head>
<body>
	<!-- login -->
	<c:choose>
		<c:when test="${mode=='MODE_LOGIN_ADMIN' }">
			<div class="login-page bk-img"
				style="background-image: url(assets/admin/img/login-bg.jpg);">
				<div class="form-content">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<h1 class="text-center text-bold text-light mt-4x">Sign in</h1>
								<div class="well row pt-2x pb-3x bk-light">
									<div class="col-md-8 col-md-offset-2">
										<form method="post" action="/login-admin">
											<c:if test="${not empty error }">
												<div class="alert alert-danger">
													<c:out value="${error }"></c:out>
												</div>
											</c:if>
											<label for="" class="text-uppercase text-sm">Your
												Username </label> <input type="text" class="form-control"
												name="usernameAdmin" value="${admin.usernameAdmin }" /> <label
												for="" class="text-uppercase text-sm">Password</label> <input
												type="password" class="form-control" name="passwordAdmin"
												value="${admin.passwordAdmin }" />

											<button class="btn btn-primary btn-block" href="/dashboard" name="login"
												type="submit">LOGIN</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>
	<!-- /login -->
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