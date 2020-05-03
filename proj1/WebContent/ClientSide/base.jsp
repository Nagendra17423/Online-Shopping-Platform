<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>AdminSide</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="AdminSide/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="AdminSide/css/animate.css">

<link rel="stylesheet" href="AdminSide/css/owl.carousel.min.css">
<link rel="stylesheet" href="AdminSide/css/owl.theme.default.min.css">
<link rel="stylesheet" href="AdminSide/css/magnific-popup.css">

<link rel="stylesheet" href="AdminSide/css/aos.css">

<link rel="stylesheet" href="AdminSide/css/ionicons.min.css">

<link rel="stylesheet" href="AdminSide/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="AdminSide/css/jquery.timepicker.css">


<link rel="stylesheet" href="AdminSide/css/flaticon.css">
<link rel="stylesheet" href="AdminSide/css/icomoon.css">
<link rel="stylesheet" href="AdminSide/css/style.css">
</head>
<body>

	<div class="py-1 bg-primary">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-phone2"></span>
							</div>
							<span class="text">+ 1235 2355 98</span>
						</div>
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-paper-plane"></span>
							</div>
							<span class="text">youremail@email.com</span>
						</div>
						<div
							class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
							<span class="text">User:&nbsp; <%=session.getAttribute("name") %></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!--  nav start  -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">Vegefoods</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="ClientServlet?id=home"
						class="nav-link">Home</a></li>
					
					<li class="nav-item"><a href="ClientServlet?id=about" class="nav-link">About</a></li>
					<li class="nav-item"><a href="#products" class="nav-link">Products Category</a></li>
					
					<li class="nav-item cta cta-colored"><a href="cart.html"
						class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

				</ul>
			</div>
		</div>
	</nav>




	<!--  nav end -->

	


	<!--  footer ends  -->
	

  <script src="AdminSide/js/jquery.min.js"></script>
  <script src="AdminSide/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="AdminSide/js/popper.min.js"></script>
  <script src="AdminSide/js/bootstrap.min.js"></script>
  <script src="AdminSide/js/jquery.easing.1.3.js"></script>
  <script src="AdminSide/js/jquery.waypoints.min.js"></script>
  <script src="AdminSide/js/jquery.stellar.min.js"></script>
  <script src="AdminSide/js/owl.carousel.min.js"></script>
  <script src="AdminSide/js/jquery.magnific-popup.min.js"></script>
  <script src="AdminSide/js/aos.js"></script>
  <script src="AdminSide/js/jquery.animateNumber.min.js"></script>
  <script src="AdminSide/js/bootstrap-datepicker.js"></script>
  <script src="AdminSide/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="AdminSide/js/google-map.js"></script>
  <script src="AdminSide/js/main.js"></script>

</body>
</html>