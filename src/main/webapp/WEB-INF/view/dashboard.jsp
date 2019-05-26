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

<title>Car Rental Portal | Admin Login</title>
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
			Admin Panel</a> <span class="menu-btn"><i class="fa fa-bars"></i></span>
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
				<li><a href="/dashboard"><i class="fa fa-dashboard"></i>
						Dashboard</a></li>
				<li><a href="#"><i class="fa fa-sitemap"></i> Vehicles</a>
					<ul>
						<li><a href="/add-vehicle">Post a Vehicle</a></li>
						<li><a href="/show-vehicles">Manage Vehicles</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-sitemap"></i> Drivers</a>
					<ul>
						<li><a href="/add-driver">Post a Driver</a></li>
						<li><a href="/show-drivers">Manage Drivers</a></li>
					</ul></li>
				<li><a href="/show-customers"><i class="fa fa-users"></i>
						Customers</a></li>
				<li><a href="/show-reservation"><i class="fa fa-users"></i>
						Rental Activity</a></li>
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

	<!-- dashboard -->
	<c:choose>
		<c:when test="${mode=='DASHBOARD_ADMIN'}">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Dashboard</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-3">
												<div class="panel panel-default">
													<div class="panel-body bk-primary text-light">
														<div class="stat-panel text-center">
															<div class="stat-panel-number h1 ">
																<h1>${customer.rows}</h1>
															</div>
															<div class="stat-panel-title text-uppercase">Reg
																Customers</div>
														</div>
													</div>
													<a href="/show-customers" class="block-anchor panel-footer">Full
														Detail <i class="fa fa-arrow-right"></i>
													</a>
												</div>
											</div>
											<div class="col-md-3">
												<div class="panel panel-default">
													<div class="panel-body bk-success text-light">
														<div class="stat-panel text-center">
															<div class="stat-panel-number h1 ">
																<h1>${vehicle.rows}</h1>
															</div>
															<div class="stat-panel-title text-uppercase">Listed
																Vehicles</div>
														</div>
													</div>
													<a href="/show-vehicles"
														class="block-anchor panel-footer text-center">Full
														Detail &nbsp; <i class="fa fa-arrow-right"></i>
													</a>
												</div>
											</div>
											<div class="col-md-3">
												<div class="panel panel-default">
													<div class="panel-body bk-warning text-light">
														<div class="stat-panel text-center">
															<div class="stat-panel-number h1 ">
																<h1>${driver.rows}</h1>
															</div>
															<div class="stat-panel-title text-uppercase">Listed
																Drivers</div>
														</div>
													</div>
													<a href="/show-drivers"
														class="block-anchor panel-footer text-center">Full
														Detail &nbsp; <i class="fa fa-arrow-right"></i>
													</a>
												</div>
											</div>
											<div class="col-md-3">
												<div class="panel panel-default">
													<div class="panel-body bk-info text-light">
														<div class="stat-panel text-center">
															<div class="stat-panel-number h1 ">
																<h1>${reservation.rows}</h1>
															</div>
															<div class="stat-panel-title text-uppercase">Total
																Reservations</div>
														</div>
													</div>
													<a href="/show-reservation"
														class="block-anchor panel-footer text-center">Full
														Detail &nbsp; <i class="fa fa-arrow-right"></i>
													</a>
												</div>
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
	<!-- /dashboard -->

	<c:choose>
		<c:when test="${mode=='ALL_CUSTOMERS' }">
			<div class="ts-main-content">
				<?php include('includes/leftbar.php');?>
				<div class="content-wrapper">
					<div class="container-fluid">

						<div class="row">
							<div class="col-md-12">

								<h2 class="page-title">Registered Users</h2>

								<!-- Zero Configuration Table -->
								<div class="panel panel-default">
									<div class="panel-heading">Reg Users</div>
									<div class="panel-body">
										<table id="zctb"
											class="display table table-striped table-bordered table-hover"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>Id</th>
													<th>Full Name</th>
													<th>UserName</th>
													<th>Email Address</th>
													<th>Mobile Number</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="customer" items="${customers }">
													<tr>
														<td>${customer.idCustomer}</td>
														<td>${customer.fullnameCustomer}</td>
														<td>${customer.usernameCustomer}</td>
														<td>${customer.emailCustomer}</td>
														<td>${customer.contactnoCustomer}</td>
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

		<c:when test="${mode=='ALL_VEHICLES' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Manage Vehicles</h2>
								<div class="panel panel-default">
									<div class="panel-heading">Vehicle Details</div>
									<div class="panel-body">
										<table id="zctb"
											class="display table table-striped table-bordered table-hover"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>Id</th>
													<th>Name</th>
													<th>Type</th>
													<th>Year</th>
													<th>capacity</th>
													<th>description</th>
													<th>price</th>
													<th>action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="vehicle" items="${vehicles }">
													<tr>
														<td>${vehicle.idVehicle}</td>
														<td>${vehicle.nameVehicle}</td>
														<td>${vehicle.typeVehicle}</td>
														<td>${vehicle.yearVehicle}</td>
														<td>${vehicle.capacityVehicle}</td>
														<td>${vehicle.descriptionVehicle}</td>
														<td>${vehicle.priceVehicle}</td>
														<td><a
															href="/edit-vehicle?idVehicle=${vehicle.idVehicle }"><i
																class="fa fa-edit"></i></a>&nbsp;&nbsp; <a
															href="/delete-vehicle?idVehicle=${vehicle.idVehicle }"
															onclick="return confirm('Do you want to delete');"><i
																class="fa fa-close"></i></a></td>
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

		<c:when test="${mode=='ADD_VEHICLE' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Post A Vehicle</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">Basic Info</div>
											<div class="panel-body">
												<form method="post" class="form-horizontal"
													action="save-vehicle" enctype="multipart/form-data">
													<input type="hidden" name="idVehicle"
														value="${vehicle.idVehicle }" />
													<div class="form-group">
														<label class="col-sm-2 control-label">Name Vehicle<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="nameVehicle" value="${vehicle.nameVehicle }">
														</div>
														<label class="col-sm-2 control-label">Type<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="typeVehicle" value="${vehicle.typeVehicle }">
														</div>

														<label class="col-sm-2 control-label">Year<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="yearVehicle" value="${vehicle.yearVehicle }">
														</div>
														<label class="col-sm-2 control-label">Capacity<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="capacityVehicle"
																value="${vehicle.capacityVehicle }">
														</div>
														<label class="col-sm-2 control-label">Description<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="descriptionVehicle"
																value="${vehicle.descriptionVehicle }">
														</div>
														<label class="col-sm-2 control-label">Price<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="priceVehicle" value="${vehicle.priceVehicle }">
														</div>
														<label class="col-sm-2 control-label">Image<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="file" class="form-control" name="file"
																value="${vehicle.imageVehicle }">
														</div>
													</div>
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

		<c:when test="${mode=='UPDATE_VEHICLE' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Update A Vehicle</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">Basic Info</div>
											<div class="panel-body">
												<form method="post" class="form-horizontal"
													action="save-vehicle" enctype="multipart/form-data">
													<input type="hidden" name="idVehicle"
														value="${vehicle.idVehicle }" />
													<div class="form-group">
														<label class="col-sm-2 control-label">Name Vehicle<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="nameVehicle" value="${vehicle.nameVehicle }">
														</div>
														<label class="col-sm-2 control-label">Type<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="typeVehicle" value="${vehicle.typeVehicle }">
														</div>

														<label class="col-sm-2 control-label">Year<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="yearVehicle" value="${vehicle.yearVehicle }">
														</div>
														<label class="col-sm-2 control-label">Capacity<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="capacityVehicle"
																value="${vehicle.capacityVehicle }">
														</div>
														<label class="col-sm-2 control-label">Description<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="descriptionVehicle"
																value="${vehicle.descriptionVehicle }">
														</div>
														<label class="col-sm-2 control-label">Price<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="priceVehicle" value="${vehicle.priceVehicle }">
														</div>
														<label class="col-sm-2 control-label">Image<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="file" class="form-control" name="file"
																value="${vehicle.imageVehicle }">
														</div>
													</div>
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

		<c:when test="${mode=='ALL_DRIVERS' }">
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
													<th>Id</th>
													<th>Full Name</th>
													<th>Status</th>
													<th>action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="driver" items="${drivers }">
													<tr>
														<td>${driver.idDriver}</td>
														<td>${driver.fullnameDriver}</td>
														<td>${driver.statusDriver}</td>
														<td><a
															href="/edit-driver-admin?idDriver=${driver.idDriver }"><i
																class="fa fa-edit"></i></a>&nbsp;&nbsp; <a
															href="/delete-driver?idDriver=${driver.idDriver }"
															onclick="return confirm('Do you want to delete');"><i
																class="fa fa-close"></i></a></td>
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

		<c:when test="${mode=='ADD_DRIVER' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Post A Driver</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">Basic Info</div>
											<div class="panel-body">
												<form method="post" class="form-horizontal"
													action="save-driver-admin">
													<input type="hidden" name="idDriver"
														value="${driver.idDriver }" />
													<div class="form-group">
														<label class="col-sm-2 control-label">Full Name<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" name="fullnameDriver"
																class="form-control" value="${driver.fullnameDriver }">
														</div>
														<label class="col-sm-2 control-label">Price Driver<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="priceDriver" value="${driver.priceDriver }"
																required>
														</div>
														<label class="col-sm-2 control-label">Username<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="usernameDriver" value="${driver.usernameDriver }">
														</div>
														<label class="col-sm-2 control-label">Status
															Driver<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<select class="selectpicker" name="statusDriver">
																<option value="">Select</option>
																<option value="Standby">Standby</option>
																<option value="On Job">On Job</option>
															</select>
														</div>
														<label class="col-sm-2 control-label">Password<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="passwordDriver" value="${driver.passwordDriver }">
														</div>
													</div>
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

		<c:when test="${mode=='UPDATE_DRIVER_ADMIN' }">
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
													action="save-driver-admin">
													<input type="hidden" name="idDriver"
														value="${driver.idDriver }" />
													<div class="form-group">
														<label class="col-sm-2 control-label">Full Name<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" name="fullnameDriver"
																readonly="readonly" class="form-control"
																value="${driver.fullnameDriver }">
														</div>
														<label class="col-sm-2 control-label">Price Driver<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																name="priceDriver" value="${driver.priceDriver }"
																required>
														</div>
														<label class="col-sm-2 control-label">Username<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="text" class="form-control"
																readonly="readonly" name="usernameDriver"
																value="${driver.usernameDriver }">
														</div>
														<label class="col-sm-2 control-label">Status
															Driver<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<select class="selectpicker" name="statusDriver">
																<option value="">Select</option>
																<option value="Standby">Standby</option>
																<option value="On Job">On Job</option>
															</select>
														</div>
														<label class="col-sm-2 control-label">Password<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input type="password" class="form-control"
																readonly="readonly" name="passwordDriver"
																value="${driver.passwordDriver }">
														</div>
													</div>
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

		<c:when test="${mode=='ALL_RESERVATION' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Manage Reservation</h2>
								<div class="panel panel-default">
									<div class="panel-heading">Reservation Details</div>
									<div class="panel-body">
										<table id="zctb"
											class="display table table-striped table-bordered table-hover"
											cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>Id</th>
													<th>Customer</th>
													<th>Vehicle</th>
													<th>Price Vehicle</th>
													<th>Driver</th>
													<th>Price Driver</th>
													<th>Check Out Date</th>
													<th>Check Out Time</th>
													<th>Rent Duration</th>
													<th>Pickup Location</th>
													<th>Check In Date</th>
													<th>Check In Time</th>
													<th>Rent Status</th>
													<th>Total Payment</th>
													<th>Status Payment</th>
													<th>action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="reservation" items="${reservations }">
													<tr>
														<td>${reservation.idReservation}</td>
														<td>${reservation.customer.fullnameCustomer}</td>
														<td>${reservation.vehicle.nameVehicle}</td>
														<td>${reservation.vehicle.priceVehicle}</td>
														<td>${reservation.driver.fullnameDriver}</td>
														<td>${reservation.driver.priceDriver}</td>
														<td>${reservation.rentDate}</td>
														<td>${reservation.rentTime}</td>
														<td>${reservation.rentDuration}</td>
														<td>${reservation.pickupLocation}</td>
														<td>${reservation.returnDate}</td>
														<td>${reservation.returnTime}</td>
														<td>${reservation.rentStatus}</td>
														<td>${reservation.totalPayment}</td>
														<td>${reservation.statusPayment}</td>

														<td><a
															href="/edit-reservation?idReservation=${reservation.idReservation }"><i
																class="fa fa-edit"></i></a></td>
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

		<c:when test="${mode=='MODE_UPDATE_RESERVATION' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">Update A Reservation</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">Basic Info</div>
											<div class="panel-body">
												<form method="post" class="form-horizontal"
													action="save-reservation-admin">
													<input type="hidden" name="idReservation"
														value="${reservation.idReservation }" />
													<div class="form-group">
														<label class="col-sm-2 control-label">Name
															Customer<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="customer.fullnameCustomer" readonly="readonly"
																value="${reservation.customer.fullnameCustomer }">
															<input type="hidden" name="customer.idCustomer"
																value="${reservation.customer.idCustomer }">
														</div>
														<label class="col-sm-2 control-label">Name Vehicle<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="vehicle.nameVehicle" readonly="readonly"
																value="${reservation.vehicle.nameVehicle }"> <input
																type="hidden" name="vehicle.idVehicle"
																value="${reservation.vehicle.idVehicle }"> <input
																type="hidden" name="vehicle.priceVehicle"
																value="${reservation.vehicle.priceVehicle }">
														</div>
														<label class="col-sm-2 control-label">Check Out
															Date<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="date" name="rentDate"
																readonly="readonly" value="${reservation.rentDate }">
														</div>
														<label class="col-sm-2 control-label">Check Out
															Time<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="time" name="rentTime"
																readonly="readonly" value="${reservation.rentTime }">
														</div>
														<label class="col-sm-2 control-label">Check In
															Date<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="date" name="returnDate"
																value="${reservation.returnDate }">
														</div>
														<label class="col-sm-2 control-label">Check In
															Time<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="time" name="returnTime"
																value="${reservation.returnTime }">
														</div>
														<label class="col-sm-2 control-label">Rent Status<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="rentStatus"
																readonly="readonly" value="${reservation.rentStatus }">
														</div>
														<label class="col-sm-2 control-label">Duration<span
															style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="number"
																name="rentDuration" readonly="readonly"
																value="${reservation.rentDuration }">
														</div>
														<label class="col-sm-2 control-label">ID Driver<span
															style="color: red">*</span></label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="driver"
																value="${reservation.driver.idDriver }">
														</div>
														<label class="col-sm-2 control-label">Pickup
															Location<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="pickupLocation"
																value="${reservation.pickupLocation }">
														</div>
														<label class="col-sm-2 control-label">Status
															Payment<span style="color: red">*</span>
														</label>
														<div class="col-sm-4">
															<select class="selectpicker" name="statusDriver">
																<option value="">Select</option>
																<option value="Pending">Pending</option>
																<option value="Success">Success</option>
															</select>
														</div>
													</div>
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