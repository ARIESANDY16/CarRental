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
				<li class="nav-item"><a class="nav-link" href="/home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Vehicle </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/vehicles">Avanza</a> <a
							class="dropdown-item" href="/vehicles">Mitsubishi</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/vehicles">Daihatsu</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
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
	<c:choose>
	<c:when test="${mode=='ALL_VEHICLES' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Vehicles</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
						</thead>
						<tbody>
							<c:forEach var="vehicle" items="${vehicles }">
								<tr>
									<td>${vehicle.imageVehicle}</td>
									<td><strong>${vehicle.nameVehicle} </strong><br>
									Harga : Rp. ${vehicle.priceVehicle},- / jam <br>
									+ Driver : Rp. 10.000,- / jam
									Type: ${vehicle.typeVehicle} <br> 
									Tahun : ${vehicle.yearVehicle} <br> 
									Kapasitas : ${vehicle.capacityVehicle} orang <br>
									Deskripsi : ${vehicle.descriptionVehicle}<br>
									</td>
										<td><a
										href="/addreservation"><button>Reservation</button></a></td>
									<!-- <td><button>Reservation</button></td> -->
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