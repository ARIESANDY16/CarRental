<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en" class="no-js">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Car Rental Portal | Detail Reservation</title>
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
	<!--REPORT CUTOMERS -->
	<c:choose>
		<c:when test="${mode=='DETAIL_RESERVATION'}">
			<div class="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<h2 class="page-title">View My Reservation</h2>
							<div class="row">
								<div class="col-md-12">
									<div class="panel panel-default">
										<div class="panel-heading">ID RESERVATION :
											${reservation.idReservation }</div>
										<div class="panel-body">
											<form method="post" class="form-horizontal"
												action="save-return-vehicle">
												<input type="hidden" name="idReservation"
													value="${reservation.idReservation }" />
												<div class="form-group">
													<label class="col-sm-2 control-label">Reservation
														Date</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="customer.fullnameCustomer" readonly="readonly"
															value="${reservation.reservationDate}">
													</div>
													<label class="col-sm-2 control-label">Status
														Payment </label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="statusPayment" readonly="readonly"
															value="${reservation.statusPayment }">
													</div>
													<label class="col-sm-2 control-label"> SIN Customer
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="customer.identitynumberCustomer"
															readonly="readonly"
															value="${reservation.customer.identitynumberCustomer }">
													</div>
													<label class="col-sm-2 control-label">Rent Car Time
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text" name="rentTime"
															readonly="readonly" value="${reservation.rentTime }">
													</div>
													<label class="col-sm-2 control-label"> Customer </label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="customer.fullnameCustomer" readonly="readonly"
															value="${reservation.customer.fullnameCustomer }">
														<input type="hidden" name="customer.idCustomer"
															value="${reservation.customer.idCustomer }">
													</div>
													<label class="col-sm-2 control-label">Rent Car Date</label>
													<div class="col-sm-4">
														<input class="form-control" type="text" name="rentDate"
															readonly="readonly"
															value="<fmt:formatDate value="${reservation.rentDate}" pattern="yyyy-MM-dd" />" />
													</div>
													<label class="col-sm-2 control-label">Car</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="vehicle.nameVehicle" readonly="readonly"
															value="${reservation.vehicle.nameVehicle }"> <input
															type="hidden" name="vehicle.idVehicle"
															value="${reservation.vehicle.idVehicle }">
													</div>
													<label class="col-sm-2 control-label">Price
														Car/Hour </label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="vehicle.priceVehicle" readonly="readonly"
															value="${reservation.vehicle.priceVehicle }">
													</div>
													<label class="col-sm-2 control-label">With/No
														Driver </label>
													<div class="col-sm-4">
														<input class="form-control" type="text" name="rentStatus"
															readonly="readonly" value="${reservation.rentStatus }">
													</div>
													<label class="col-sm-2 control-label">Price
														Driver/Hour </label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="vehicle.priceDriver" readonly="readonly"
															value="${reservation.driver.priceDriver }">
													</div>
													<label class="col-sm-2 control-label">Driver</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="driver.fullnameDriver" readonly="readonly"
															value="${reservation.driver.fullnameDriver }"> <input
															type="hidden" name="driver.idDriver"
															value="${reservation.driver.idDriver }">

													</div>
													<label class="col-sm-2 control-label">Pickup
														Location </label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="pickupLocation" readonly="readonly"
															value="${reservation.pickupLocation }">
													</div>
													<label class="col-sm-2 control-label">Return Status
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="returnStatus" readonly="readonly"
															value="${reservation.returnStatus }">
													</div>
													<label class="col-sm-2 control-label">Rent Duration
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="rentDuration" readonly="readonly"
															value="${reservation.rentDuration }">
													</div>
													<label class="col-sm-2 control-label">Return Car
														Date</label>
													<div class="col-sm-4">
														<input class="form-control" type="text" name="returnDate"
															readonly="readonly"
															value="<fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd" />" />
													</div>
													<label class="col-sm-2 control-label">Return Car
														Time </label>
													<div class="col-sm-4">
														<input class="form-control" type="text" name="returnTime"
															readonly="readonly" value="${reservation.returnTime }">
													</div>
													<label class="col-sm-2 control-label">Late Duration
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="lateDuration" readonly="readonly"
															value="${reservation.lateDuration }">
													</div>
													<label class="col-sm-2 control-label">Late Payment
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text" name="latePayment"
															readonly="readonly" value="${reservation.latePayment }">
													</div>
													<label class="col-sm-2 control-label">Total Payment
													</label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="totalAllpayment" readonly="readonly"
															value="${reservation.totalAllpayment }">
													</div>
													<label class="col-sm-2 control-label">Total All
														Payment </label>
													<div class="col-sm-4">
														<input class="form-control" type="text"
															name="totalAllpayment" readonly="readonly"
															value="${reservation.totalAllpayment }">
													</div>
												</div>
												<div class="form-group">
													<div class="col-sm-8 col-sm-offset-2">
														<!-- <button class="btn btn-default" type="reset">Cancel</button>
															<button class="btn btn-primary" name="submit"
																type="submit">Save changes</button> -->
														<a href="/my-reservation" class="btn btn-info"
															type="button">Back</a>
														<button class="btn btn-primary" type="button"
															onclick="window.print()">Print</button>
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
		</c:when>

		<c:when test="${mode=='TRANSACTION' }">
			<div class="content-wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<h2 class="page-title">Report Transaction</h2>
							<div class="panel panel-default">
								<div class="panel-heading">Reporting Details</div>
								<div class="panel-body">
									<table id="zctb"
										class="display table table-striped table-bordered table-hover"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Id</th>
												<th>Reservation Date</th>
												<th>Customer</th>
												<th>Total</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="reservation" items="${reservations }">
												<tr>
													<td>${reservation.idReservation}</td>
													<td>${reservation.reservationDate}</td>
													<td>${reservation.customer.fullnameCustomer}</td>
													<td>${reservation.totalAllpayment}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<a href="/dashboard" class="btn btn-info" type="button">Back</a>
									<button class="btn btn-primary" type="button"
																onclick="window.print()">Print</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='TRANSACTION_SUCCESS' }">
			<div class="ts-main-content">
				<div class="content-wrapper">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<h2 class="page-title">View Transaction</h2>
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">ID RESERVATION :
												${reservation.idReservation }</div>
											<div class="panel-body">
												<form method="post" class="form-horizontal"
													action="save-return-vehicle">
													<input type="hidden" name="idReservation"
														value="${reservation.idReservation }" />
													<div class="form-group">
														<label class="col-sm-2 control-label"> Customer </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="customer.fullnameCustomer" readonly="readonly"
																value="${reservation.customer.fullnameCustomer }">
															<input type="hidden" name="customer.idCustomer"
																value="${reservation.customer.idCustomer }">
														</div>
														<label class="col-sm-2 control-label"> SIN
															Customer </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="customer.identitynumberCustomer"
																readonly="readonly"
																value="${reservation.customer.identitynumberCustomer }">
														</div>
														<label class="col-sm-2 control-label">Car</label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="vehicle.nameVehicle" readonly="readonly"
																value="${reservation.vehicle.nameVehicle }"> <input
																type="hidden" name="vehicle.idVehicle"
																value="${reservation.vehicle.idVehicle }">
														</div>
														<label class="col-sm-2 control-label">Pickup
															Location </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="pickupLocation" readonly="readonly"
																value="${reservation.pickupLocation }">
														</div>
														<label class="col-sm-2 control-label">Rent Car
															Date</label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="rentDate"
																readonly="readonly"
																value="<fmt:formatDate value="${reservation.rentDate}" pattern="yyyy-MM-dd" />" />
														</div>
														<label class="col-sm-2 control-label">Rent Car
															Time </label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="rentTime"
																readonly="readonly" value="${reservation.rentTime }">
														</div>
														<label class="col-sm-2 control-label">Return Car
															Date</label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="returnDate"
																readonly="readonly"
																value="<fmt:formatDate value="${reservation.returnDate}" pattern="yyyy-MM-dd" />" />
														</div>
														<label class="col-sm-2 control-label">Return Car
															Time </label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="returnTime"
																readonly="readonly" value="${reservation.returnTime }">
														</div>
														<label class="col-sm-2 control-label">Price
															Car/Hour </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="vehicle.priceVehicle" readonly="readonly"
																value="${reservation.vehicle.priceVehicle }">
														</div>
														<label class="col-sm-2 control-label">With/No
															Driver </label>
														<div class="col-sm-4">
															<input class="form-control" type="text" name="rentStatus"
																readonly="readonly" value="${reservation.rentStatus }">
														</div>
														<label class="col-sm-2 control-label">Price
															Driver/Hour </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="vehicle.priceDriver" readonly="readonly"
																value="${reservation.driver.priceDriver }">
														</div>
														<label class="col-sm-2 control-label">Driver</label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="driver.fullnameDriver" readonly="readonly"
																value="${reservation.driver.fullnameDriver }"> <input
																type="hidden" name="driver.idDriver"
																value="${reservation.driver.idDriver }">

														</div>
														<label class="col-sm-2 control-label">Total
															Payment </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="totalAllpayment" readonly="readonly"
																value="${reservation.totalAllpayment }">
														</div>
														<label class="col-sm-2 control-label">Rent
															Duration </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="rentDuration" readonly="readonly"
																value="${reservation.rentDuration }">
														</div>
														<label class="col-sm-2 control-label">Late Payment
														</label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="latePayment" readonly="readonly"
																value="${reservation.latePayment }">
														</div>
														<label class="col-sm-2 control-label">Late
															Duration </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="lateDuration" readonly="readonly"
																value="${reservation.lateDuration }">
														</div>
														<label class="col-sm-2 control-label">Total All
															Payment </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="totalAllpayment" readonly="readonly"
																value="${reservation.totalAllpayment }">
														</div>
														<label class="col-sm-2 control-label">Return
															Status </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="returnStatus" readonly="readonly"
																value="${reservation.returnStatus }">
														</div>
														<label class="col-sm-2 control-label">Status
															Payment </label>
														<div class="col-sm-4">
															<input class="form-control" type="text"
																name="statusPayment" readonly="readonly"
																value="${reservation.statusPayment }">
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-8 col-sm-offset-2">
															<a href="/transaction" class="btn btn-info" type="button">Back</a>
															<button class="btn btn-primary" type="button"
																onclick="window.print()">Print</button>
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