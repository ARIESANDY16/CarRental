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
                        <a class="nav-link" href="/show-vehicles">Vehicle</a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link" href="/show-customers">All Customer</a>
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
		
		<c:when test="${mode=='MODE_UPDATE' }">
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
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_ADD_VEHICLE' }">
			<div class="container text-center">
				<h3>Vehicle</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-vehicle">
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
						<label class="control-label col-md-3">Image</label>
						<div class="col-md-7">
							<input type="file" class="form-control" name="imageVehicle"
								value="${vehicle.imageVehicle }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Image</label>
						<div class="col-md-7">
							<input type="file" accept="image/*" class="form-control" name="imageProduct"
								value="${vehicle.imageProduct }" />
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
				<form class="form-horizontal" method="POST" action="save-vehicle">
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
						<label class="control-label col-md-3">Image</label>
						<div class="col-md-7">
							<input type="file" class="form-control" name="imageVehicle"
								value="${vehicle.imageVehicle }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Image</label>
						<div class="col-md-7">
							<input type="file" accept="image/*" class="form-control" name="imageProduct"
								value="${vehicle.imageProduct }" />
						</div>
					</div>

					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="updatevehicle" />
					</div>
				</form>
			</div>
		</c:when>
	
	
	
	
		<c:when test="${mode=='ALL_VEHICLES_1' }">
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
								<th>image</th>
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
									<td>${vehicle.imageVehicle}</td>
									
									<td>${vehicle.imageProduct}</td>
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
	
	
	</c:choose>
				
			
</body>
</html>