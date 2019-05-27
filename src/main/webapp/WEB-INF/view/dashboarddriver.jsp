<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" class="no-js">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Car Rental Portal | Driver Login</title>
<!-- Font awesome -->
<link rel="stylesheet" href="assets/admin/css/font-awesome.min.css">
<!-- Sandstone Bootstrap CSS -->
<link rel="stylesheet" href="assets/admin/css/bootstrap.min.css">
<!-- Bootstrap Datatables -->
<link rel="stylesheet"
	href="assets/admin/css/dataTables.bootstrap.min.css">
<!-- Bootstrap social button library -->
<link rel="stylesheet" href="assets/admin/css/bootstrap-social.css">
<!-- Bootstrap select -->
<link rel="stylesheet" href="assets/admin/css/bootstrap-select.css">
<!-- Bootstrap file input -->
<link rel="stylesheet" href="assets/admin/css/fileinput.min.css">
<!-- Awesome Bootstrap checkbox -->
<link rel="stylesheet"
	href="assets/admin/css/awesome-bootstrap-checkbox.css">
<!-- Admin Stye -->
<link rel="stylesheet" href="assets/admin/css/style.css">

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
	<div class="brand clearfix">
		<a href="/dashboard" style="font-size: 20px;">Car Rental Portal |
			Driver Panel</a> <span class="menu-btn"><i class="fa fa-bars"></i></span>
		<ul class="ts-profile-nav">
			<li class="ts-account"><a href="#"><img
					src="assets/admin/img/ts-avatar.jpg" class="ts-avatar hidden-side"
					alt=""> Account <i class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a href="change-password.php">Change Password</a></li>
					<li><a href="/logout-admin">Logout</a></li>
				</ul></li>
		</ul>
	</div>

	<div class="ts-main-content">
		<!-- leftbar -->
		<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
				<li class="ts-label">Main</li>
				<!-- 	<li><a href="/dashboarddriver"><i class="fa fa-dashboard"></i>
						Dashboard Driver</a></li> -->
				<li><a href="#"><i class="fa fa-sitemap"></i>Driver</a>
					<ul>
						<li><a href="/edit-driver">Edit Driver</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-sitemap"></i> Task Driver</a>
					<ul>
						<li><a href="/task-driver">View Task Driver</a></li>
					</ul></li>
				<!-- <li><a href="/show-customers"><i class="fa fa-users"></i>
						Customers</a></li>
				<li><a href="/show-reservation"><i class="fa fa-users"></i>
						Rental Activity</a></li> -->
				<!-- <li><a href="testimonials.php"><i class="fa fa-table"></i>
						Manage Testimonials</a></li>
				<li><a href="manage-conactusquery.php"><i
						class="fa fa-desktop""></i> Manage Conatctus Query</a></li>
				<li><a href="/show-customers"><i class="fa fa-users"></i>
						Reg Users</a></li>
				<li><a href="manage-pages.php"><i class="fa fa-files-o"></i>
						Manage Pages</a></li>
				<li><a href="update-contactinfo.php"><i
						class="fa fa-files-o"></i> Update Contact Info</a></li>
				<li><a href="manage-subscribers.php"><i class="fa fa-table"></i>
						Manage Subscribers</a></li> -->
			</ul>
		</nav>
	</div>
	<c:choose>
		<c:when test="${mode=='UPDATE_DRIVER' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Update A Driver</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">Basic Info</div>
											<div class="panel-body">
												<form method="post" class="form-horizontal"
													action="save-driver" enctype="multipart/form-data">
													<input type="hidden" name="idDriver"
														value="${driver.idDriver }" />
													<div class="form-group">
														<label class="col-sm-2 control-label">Full Name<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="fullnameDriver" value="${driver.fullnameDriver }">
														</div>
														<label class="col-sm-2 control-label">Username<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="usernameDriver" value="${driver.usernameDriver }">
														</div>

														<label class="col-sm-2 control-label">Password<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="password" class="form-control"
																name="passwordDriver" value="${driver.passwordDriver }">
															<div class="form-group">
																<div class="col-sm-8 col-sm-offset-2">
																	<button class="btn btn-default" type="reset">Cancel</button>
																	<button class="btn btn-primary" name="submit"
																		type="submit">Save changes</button>
																</div>
															</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>
	<!-- taksdriver -->

	<c:choose>
		<c:when test="${mode=='TASK_DRIVER' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Manage Drivers</h2>
								<div class="panel panel-default">
									<div class="panel-heading">Drivers Details</div>
									<div class="panel-body">
										<table id="zctb"
											class="display table table-striped table-bordered table-hover"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>Driver</th>
													<th>Customer</th>
													<th>Vehicle</th>
													<th>Check Out Date</th>
													<th>Check Out Time</th>
													<th>Rent Duration</th>
													<th>Check In Date</th>
													<th>Check In Time</th>
													<th>Pickup Location</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="reservation" items="${reservations}">
													<tr>
														<td>${reservation.driver.fullnameDriver}</td>
														<td>${reservation.customer.fullnameCustomer}</td>
														<td>${reservation.vehicle.nameVehicle}</td>
														<td>${reservation.rentDate}</td>
														<td>${reservation.rentTime}</td>
														<td>${reservation.rentDuration}</td>
														<td>${reservation.returnDate}</td>
														<td>${reservation.returnTime}</td>
														<td>${reservation.pickupLocation}</td>

													</tr>
												</c:forEach>
											</tbody>
										</table>
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