<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>

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
	<c:import url="Base.jsp"></c:import>
	<section id="home-section" class="hero">
	<div class="home-slider owl-carousel">
		<div class="slider-item"
			style="background-image: url(AdminSide/images/bg_1.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center"
					data-scrollax-parent="true">

					<div class="col-md-12 ftco-animate text-center">
						<h1 class="mb-2">We serve Fresh Vegestables &amp; Fruits</h1>
						<h2 class="subheading mb-4">We deliver organic vegetables
							&amp; fruits</h2>
						<p>
							<a href="#" class="btn btn-primary">View Details</a>
						</p>
					</div>

				</div>
			</div>
		</div>

		<div class="slider-item"
			style="background-image: url(AdminSide/images/bg_2.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center"
					data-scrollax-parent="true">

					<div class="col-sm-12 ftco-animate text-center">
						<h1 class="mb-2">100% Fresh &amp; Organic Foods</h1>
						<h2 class="subheading mb-4">We deliver organic vegetables
							&amp; fruits</h2>
						<p>
							<a href="#" class="btn btn-primary">View Details</a>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section">
	<div class="container">
		<div class="row no-gutters ftco-services">
			<div
				class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services mb-md-0 mb-4">
					<div
						class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
						<span class="flaticon-shipped"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Free Shipping</h3>
						<span>On order over $100</span>
					</div>
				</div>
			</div>
			<div
				class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services mb-md-0 mb-4">
					<div
						class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
						<span class="flaticon-diet"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Always Fresh</h3>
						<span>Product well package</span>
					</div>
				</div>
			</div>
			<div
				class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services mb-md-0 mb-4">
					<div
						class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
						<span class="flaticon-award"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Superior Quality</h3>
						<span>Quality Products</span>
					</div>
				</div>
			</div>
			<div
				class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
				<div class="media block-6 services mb-md-0 mb-4">
					<div
						class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
						<span class="flaticon-customer-service"></span>
					</div>
					<div class="media-body">
						<h3 class="heading">Support</h3>
						<span>24/7 Support</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section ftco-category ftco-no-pt" id="products">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-6 order-md-last align-items-stretch d-flex">
						<div
							class="category-wrap-2 ftco-animate img align-self-stretch d-flex"
							style="background-image: url(AdminSide/images/category.jpg);">
							<div class="text text-center">
								<h2>Vegetables</h2>
								<p>Protect the health of every home</p>
								<p>
									<a href="#" class="btn btn-primary">Shop now</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<a href="AdminServlet?id=product&name=Fruits">
							<div
								class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
								style="background-image: url(AdminSide/images/category-1.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0">Fruits</h2>
								</div>
							</div>
						</a> <a href="AdminServlet?id=product&name=Vegetables">
							<div
								class="category-wrap ftco-animate img d-flex align-items-end"
								style="background-image: url(AdminSide/images/category-2.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0">Vegetables</h2>
								</div>
							</div>
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<a href="AdminServlet?id=product&name=Juices">
					<div
						class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
						style="background-image: url(AdminSide/images/category-3.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0">Juices</h2>
						</div>
					</div>
				</a> 
				<a href="AdminServlet?id=product&name=Dried">
					<div class="category-wrap ftco-animate img d-flex align-items-end"
						style="background-image: url(AdminSide/images/category-4.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0">Dried</h2>
						</div>
				
			</div></a>
		</div>
	</div>
	</div>
	</section>

	<!--  footer starts -->



	<footer class="ftco-footer ftco-section">
	<div class="container">
		<div class="row">
		
			<div class="mouse">
				<a href="#" class="mouse-icon">
					<div class="mouse-wheel">
						<span class="ion-ios-arrow-up"></span>
					</div>
				</a>
			</div>
		</div>
		<div class="row mb-5">
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Vegefoods</h2>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia.</p>
					<ul
						class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
						<li class="ftco-animate"><a href="#"><span
								class="icon-twitter"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-facebook"></span></a></li>
						<li class="ftco-animate"><a href="#"><span
								class="icon-instagram"></span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4 ml-md-5">
					<h2 class="ftco-heading-2">Menu</h2>
					<ul class="list-unstyled">
						<li><a href="#" class="py-2 d-block">Shop</a></li>
						<li><a href="#" class="py-2 d-block">About</a></li>
						<li><a href="#" class="py-2 d-block">Journal</a></li>
						<li><a href="#" class="py-2 d-block">Contact Us</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Help</h2>
					<div class="d-flex">
						<ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
							<li><a href="#" class="py-2 d-block">Shipping
									Information</a></li>
							<li><a href="#" class="py-2 d-block">Returns &amp;
									Exchange</a></li>
							<li><a href="#" class="py-2 d-block">Terms &amp;
									Conditions</a></li>
							<li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
						</ul>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">FAQs</a></li>
							<li><a href="#" class="py-2 d-block">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md">
				<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Have a Questions?</h2>
					<div class="block-23 mb-3">
						<ul>
							<li><span class="icon icon-map-marker"></span><span
								class="text">203 Fake St. Mountain View, San Francisco,
									California, USA</span></li>
							<li><a href="#"><span class="icon icon-phone"></span><span
									class="text">+2 392 3929 210</span></a></li>
							<li><a href="#"><span class="icon icon-envelope"></span><span
									class="text">info@yourdomain.com</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">

				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="icon-heart color-danger" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</div>
		</div>
	</div>
	</footer>

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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="AdminSide/js/google-map.js"></script>
	<script src="AdminSide/js/main.js"></script>

</body>
</html>