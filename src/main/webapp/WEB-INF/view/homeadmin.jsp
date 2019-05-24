<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
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
            <a class="navbar-brand" href="#">Admin Page</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/register">Add Customer <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/addvehicle">Add Vehicle</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="/add-driver">Add Driver</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/show-vehicles">Vehicle</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="/show-drivers">Driver</a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link" href="/show-customers">Customer</a>
                    </li>
                   <!--    <li class="nav-item">
                        <a class="nav-link" href="/addreservation">Add Reservation</a>
                    </li> -->
                       <li class="nav-item">
                        <a class="nav-link" href="/show-reservation">Rental Activity</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="/logout-admin">Logout</a>
                    </li>
                      
                   <!--  <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li> -->
                </ul>
                <!-- <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form> -->
            </div>
        </nav>
<!--     END NAVBAR  -->
			
			
			

			
			
			<c:choose>
			<c:when test="${mode=='ALL_CUSTOMERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Customers</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>UserName</th>
								<th>Email Address</th>
								<th>Mobile Number</th>
								<th>Delete</th>
								<th>Edit</th>
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
									<td><a
										href="/delete-customer?idCustomer=${customer.idCustomer }"><button>delete</button></a></td>
									<td><a href="/edit-customer?idCustomer=${customer.idCustomer }"><button>edit</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		
		<c:when test="${mode=='MODE_ADD_VEHICLE' }">
			<div class="container text-center">
				<h3>Vehicle</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-vehicle" enctype="multipart/form-data">
					<input type="hidden" name="idVehicle"
						value="${vehicle.idVehicle }" />

					<div class="form-group">
						<label class="control-label col-md-3">Name Vehicle </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="nameVehicle"
								value="${vehicle.nameVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Type</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="typeVehicle"
								value="${vehicle.typeVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Year</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="yearVehicle"
								value="${vehicle.yearVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Capacity</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="capacityVehicle"
								value="${vehicle.capacityVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="descriptionVehicle"
								value="${vehicle.descriptionVehicle }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Price</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="priceVehicle"
								value="${vehicle.priceVehicle }" />
						</div>
					</div>
					
						<div class="form-group">
						<label class="control-label col-md-3">Image</label>
						<div class="col-md-7">
							<input type="file" class="form-control" name="file"
								value="${vehicle.imageVehicle }" />
						</div>
					</div>	

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="addvehicle" />
					</div>
				</form>
			</div>
		</c:when>
	
	
	<c:when test="${mode=='MODE_UPDATE_VEHICLE' }">
			<div class="container text-center">
				<h3>Update Vehicle</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-vehicle" enctype="multipart/form-data">
					<input type="hidden" name="idVehicle"
						value="${vehicle.idVehicle }" />

					<div class="form-group">
						<label class="control-label col-md-3">Name Vehicle </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="nameVehicle"
								value="${vehicle.nameVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Type</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="typeVehicle"
								value="${vehicle.typeVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Year</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="yearVehicle"
								value="${vehicle.yearVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Capacity</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="capacityVehicle"
								value="${vehicle.capacityVehicle }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Description</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="descriptionVehicle"
								value="${vehicle.descriptionVehicle }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Price</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="priceVehicle"
								value="${vehicle.priceVehicle }" />
						</div>
					</div>
						<div class="form-group">
						<label class="control-label col-md-3">Image</label>
						<div class="col-md-7">
							<input type="file" class="form-control" name="file"
								value="${vehicle.imageVehicle }" />
						</div>
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="updatevehicle" />
					</div>
				</form>
			</div>
		</c:when>
	
		<c:when test="${mode=='ALL_VEHICLES_ADMIN' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Vehicles</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Type</th>
								<th>Year</th>
								<th>capacity</th>
								<th>description</th>
								<th>price</th>
								<th>image</th>
								<th>Delete</th>
								<th>Edit</th>
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
									<td>${vehicle.imageName}</td>
									<td><a
										href="/delete-vehicle?idVehicle=${vehicle.idVehicle }"><button>delete</button></a></td>
									<td><a href="/edit-vehicle?idVehicle=${vehicle.idVehicle }"><button>update</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_ADD_DRIVER' }">
			<div class="container text-center">
				<h3>Add Driver</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-driver-admin">
					<input type="hidden" name="idDriver"
						value="${driver.idDriver }" />

					<div class="form-group">
						<label class="control-label col-md-3">Full Name </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullnameDriver"
								value="${driver.fullnameDriver }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="usernameDriver"
								value="${driver.usernameDriver }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="passwordDriver"
								value="${driver.passwordDriver }" />
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-md-3">Price Driver</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="priceDriver"
								value="${driver.priceDriver }" />
						</div>
					</div>
						<label>Status Driver</label>
						<select name="statusDriver">
											<option value="Standby">Standby</option>
											<option value="On Job">On Job</option>
										</select>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>
	
	
	<c:when test="${mode=='UPDATE_DRIVER_ADMIN' }">
			<div class="container text-center">
				<h3>Add Driver</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-driver-admin">
					<input type="hidden" name="idDriver"
						value="${driver.idDriver }" />

					<div class="form-group">
						<label class="control-label col-md-3">Full Name </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullnameDriver"
								value="${driver.fullnameDriver }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="usernameDriver"
								value="${driver.usernameDriver }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="passwordDriver"
								value="${driver.passwordDriver }" />
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-md-3">Price Driver</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="priceDriver"
								value="${driver.priceDriver }" />
						</div>
					</div>
					<label>Status Driver</label> <select name="statusDriver">
						<option value="Standby">Standby</option>
						<option value="On Job">On Job</option>
					</select>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>
	
	<c:when test="${mode=='ALL_DRIVERS'}">
			<div class="container text-center" id="tasksDiv">
				<h3>All Drivers</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Full Name</th>
								<th>Status</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="driver" items="${drivers }">
								<tr>
									<td>${driver.idDriver}</td>
									<td>${driver.fullnameDriver}</td>
									<td>${driver.statusDriver}</td>
									<td><a
										href="/delete-driver-admin?idDriver=${driver.idDriver }"><button>delete</button></a></td>
									<td><a href="/edit-driver-admin?idDriver=${driver.idDriver }"><button>edit</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
	<c:when test="${mode=='ALL_RESERVATION'}">
			<div class="container text-center" id="tasksDiv">
				<h3>Rental Activity</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
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
								<th>Delete</th>
								<th>Edit</th>
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
									<td>${reservation.rentTime}</td>
									<td>${reservation.returnTime}</td>
									<td>${reservation.totalPayment}</td>
									<td>${reservation.statusPayment}</td>
									<td><a
										href="/delete-reservation?idReservation=${reservation.idReservation }"><button>delete</button></a></td>
									<td><a href="/edit-reservation?idReservation=${reservation.idReservation }"><button>update</button></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		
			<c:when test="${mode=='MODE_UPDATE_RESERVATION' }">
			<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card-group">
					<div class="card p-4">
						<div class="card-body">
							<h1>Reservation</h1>
							<hr>
							<form class="form-horizontal" method="POST"
								action="save-reservation-admin">
								<input type="hidden" name="idReservation"
									value="${reservation.idReservation }" />
										<label>Name Customer</label>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
								
									<input class="form-control" type="text" name="customer.fullnameCustomer" readonly="readonly"
										value="${reservation.customer.fullnameCustomer }">
										<input type="hidden" name="customer.idCustomer" value="${reservation.customer.idCustomer }">
								</div>
									<label>Name Vehicle</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="vehicle.nameVehicle" readonly="readonly"
										value="${reservation.vehicle.nameVehicle }">
									<input type="hidden" name="vehicle.idVehicle" value="${reservation.vehicle.idVehicle }">
									<input type="hidden" name="vehicle.priceVehicle" value="${reservation.vehicle.priceVehicle }">
								</div>
								
									<label>ID Driver</label>
									<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="driver"
										value="${reservation.driver.idDriver }">
								</div>	
					<%-- 			<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="driver.idDriver"
										value="${reservation.driver.idDriver }">
									<input type="hidden" name="driver.priceDriver" value="${reservation.driver.priceDriver }">
								</div> --%>
								<label>Check Out Date</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="date" name="rentDate"  readonly="readonly"
										value="${reservation.rentDate }">
								</div>
								<label>Check Out Time</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="time" name="rentTime"  readonly="readonly"
										value="${reservation.rentTime }">
								</div>
								
								<label>Duration</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="number" name="rentDuration"  readonly="readonly"
										value="${reservation.rentDuration }">
								</div>
										<label>Pickup Location</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="pickupLocation" 
										value="${reservation.pickupLocation }">
								</div>
								<label>Check In Date</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="date" name="returnDate" 
										value="${reservation.returnDate }">
								</div>
								<label>Check In Time</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="time" name="returnTime" 
										value="${reservation.returnTime }">
								</div>
								<label>Rent Status</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="rentStatus"  readonly="readonly"
										value="${reservation.rentStatus }">
										
								</div>
							<label>Status Payment</label>
										<select name="statusPayment">
											<option value="Pending">Pending</option>
											<option value="Success">Success</option>
										</select>	
								<div class="row">
									<div class="form-group ">
										<input type="submit" class="btn btn-block btn-primary"
											value="Update Reservation" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:when>
		
		
	</c:choose>
				
			
</body>
</html>