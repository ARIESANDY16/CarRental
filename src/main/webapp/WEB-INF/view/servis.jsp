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
				<li class="nav-item active"><a class="nav-link" href="/home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
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
				<li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<!--  <li class="nav-item">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                    </li> -->
			</ul>
		</div>
	</nav>
	<c:choose>
		<c:when test="${mode=='MODE_SERVIS1' }">
			<div class="container">
				<div class="page-content entry-content">
					<div class="tb-column-inner">


						<!-- module text -->
						<div id="text" class="module module-text repeat">
							<!--insert-->

							<h2>Sewa Mobil Dengan Sopir</h2>
							<p>Kami menyediakan sewa mobil dengan sopir yang terjamin
								profesionalitas dan service serta pengalamanya. Mengantarkan
								anda kemanapun kapanpun dengan mengedepankan kenyamanan dan
								keamanan. Sopir-sopir kami telah teruji dan berpengalaman
								melayani baik event tamu kedutaan maupun tamu perusahaan baik
								dalam atau luar negeri.</p>
							<p>Berikut paket sewa mobil dengan sopir kami:</p>
							<ol>
								<li>Dalam kota mobil + sopir + BBM</li>
								<li>Dalam kota mobil + sopir + BBM + tol parkir</li>
								<li>Luar kota mobil + sopir</li>
								<li>Luar kota mobil + sopir + BBM + tol parkir</li>
								<li>Drop off luar kota mobil + sopir + BBM + tol parkir</li>
							</ol>
						</div>
						<!-- /module text -->



						<!-- module text -->
						<div id="text-5690-0-0-1"
							class="module module-text text-5690-0-0-1  repeat  ">
							<!--insert-->

							<h2>Syarat &amp; Ketentuan Sewa Mobil Dengan Sopir</h2>
							<ol>
								<li>Penggunaan paket dalam kota 12 jam pada tanggal yang
									sama.</li>
								<li>Pelunasan dilakukan H-1 / pada saat penjemputan jika
									order di hari yang sama.</li>
								<li>Pengancelan H-1 pemakaian oleh tamu, maka DP hangus.</li>
								<li>Pengancelan di hari H pemakaian, maka pembayaran yang
									sudah dilakukan akan hangus dan tidak bisa dikembalikan.</li>
								<li>Biaya over time (melebihi jam paket atau lebih dari jam
									12 malam) dikenakan biaya tambahan sebesar 10%/jam dari harga
									paket.</li>
								<li>Pemakaian dalam kota Jakarta maksimal di Bekasi,
									Cibubur, Tangerang kota.</li>
								<li>Paket drop off hanya untuk keluar Jakarta dengan 1
									tujuan.</li>
								<li>Pembayaran melalui transfer, cash atau kartu kredit.</li>
								<li>Booking fee min 30% dari harga.</li>
							</ol>
						</div>
						<!-- /module text -->
					</div>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_SERVIS2' }">
			<div id="text-5692-0-0-0"
				class="module module-text text-5692-0-0-0  repeat  ">
				<!--insert-->

				<h2>Syarat &amp; Ketentuan Lepas Kunci Bulanan :</h2>
				<ol>
					<li>BERBADAN USAHA PT</li>
					<li>FC AKTA</li>
					<li>FC SIUP</li>
					<li>FC TDP</li>
					<li>FC DOMISILI AKTIF</li>
					<li>FC NPWP</li>
					<li>FC KTP 2 PENGURUS PENANGGUNG JAWAB</li>
					<li>MINIMAL 3 HARI PEMAKAIAN</li>
					<li>PEMBAYARAN DIMUKA PADA SAAT AWAL PEMAKAIAN</li>
					<li>REKENING KORAN 3 BULAN</li>
				</ol>
				<h2>List Lepas Kunci&nbsp;:</h2>
				<ol>
					<li>TOYOTA FORTUNER VRZ 2017 / 2018</li>
					<li>TOYOTA SIENTA 2017</li>
					<li>NISSAN ELGRAND HWS 2017</li>
					<li>TOYOTA CAMRY 2.5V 2012</li>
					<li>TOYOTA NEW CAMRY 2.5V 2017</li>
					<li>TOYOTA ALPHARD G 2017 (TRANSFORMER)</li>
					<li>TOYOTA ALPHARD G 2018 (TRANSFORMER FACELIFT)</li>
					<li>TOYOTA INNOVA REBORN 2017 / 2018</li>
					<li>MITSUBISHI PAJERO DAKKAR 2018</li>
					<li>MERCEDES BENZ S400L 2017</li>
					<li>TOYOTA VOXY 2018</li>
					<li>TOYOTA HIACE 2017</li>
				</ol>
				<div></div>
				<div>
					<strong>Note : Selain list mobil diatas bisa menghubungi
						langsung untuk sewa MINIMAL 6 Bulan pemakaian.</strong>
				</div>
			</div>
		</c:when>
	</c:choose>
</body>
</html>