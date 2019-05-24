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
            <a class="navbar-brand" href="#">Home Driver</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                     <li class="nav-item">
                        <a class="nav-link" href="/edit-driver">Edit Data</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/task-driver">Task</a>
                    </li>
                     <li class="nav-item">
                        <a class="nav-link" href="/logout-driver">Logout</a>
                    </li>   
                </ul>
            </div>
        </nav>					
<%-- <h7>id driver :	${driver.idDriver}</h7><br>
<h7>fullname driver :${driver.fullnameDriver}	</h7><br>
<h7>username driver :${driver.usernameDriver}	</h7><br>
<h7>password driver :${driver.passwordDriver}	</h7><br>
<h7>price driver :${driver.priceDriver}	</h7><br> --%>
	<c:choose>
<c:when test="${mode=='UPDATE_DRIVER' }">

			<div class="container text-center">
				<h3>Add Driver</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-driver">
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


					<%-- <div class="form-group">
						<label class="control-label col-md-3">Price Driver</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="priceDriver"
								value="${driver.priceDriver }" />
						</div>
					</div>
 --%>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		
		</c:when>
		
		
		
		<c:when test="${mode=='TASK_DRIVER'}">
			<div class="container text-center" id="tasksDiv">
				<h3>Driver Task</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
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
		</c:when>
			</c:choose>



</body>
</html>