<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	



<!-- 
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-3 ftco-animate">
				
				<div class="card h-100">
								<div class="card-body">
									<h4 class="card-title">
									
									
</h4>
									
									
									<p class="card-text">
									Product:<c:out value="${prod.getProduct_name()}" />
									Price:<c:out value="${prod.getPrice()}" />
									</p>
									
								</div>
									
									<div class="card-footer">
									<small class="text-muted"> <a
										href="AdminServlet?id=edit&cid=${category.getId()}&p=${p}&ptitle=${p.getTitle()}"
										class="btn btn-primary">Edit</a>
										 &nbsp;&nbsp;
										  <a
										href="AdminServlet?id=delete&pid=${p.getId()}&ptitle=${p.getTitle()}"
										class="btn btn-warning">Delete</a>
										 &nbsp;&nbsp; 
										 <a
										href="AdminServlet?id=showPolicyHolders&pid=${p.getId()}&ptitle=${p.getTitle()}"
										class="btn btn-danger">Policy holders</a> &nbsp;&nbsp;
									</small>
								</div>
					 
					
						
						
					
				</div>
			</div>
		</div>
	</div>
	
	 -->
	 
	 
	 <section class="ftco-section">
    	<div class="container">
		<div class="row justify-content-center mb-3 pb-3">
				
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading"><%=request.getAttribute("productName") %> Products</span>
            <h2 class="mb-4">Our Products</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>   		
    	</div>
    	
    	
    		<a
		href="AdminServlet?id=Add&cat=<%=request.getAttribute("productName")%>">ADD
		!!</a>

<br><br><br>

    	<div class="container">
    		<div class="row">
    		<c:forEach items="${product}" var="prod"> 
    			<div class="col-md-6 col-lg-3 ftco-animate">
    			
    				<div class="product">
    					<a href="#" class="img-prod">
    					<img class="img-fluid"
						src="<%=request.getContextPath()%>/upload/<c:out value="${prod.getPath() }" />"
						alt="Colorlib Template">
    					</a>
    					
    					<p class="card-text">
									Product:<c:out value="${prod.getProduct_name()}" />
									<br>
									Price:<c:out value="${prod.getPrice()}" />
									</p>
    						
	    					<a href="AdminServlet?id=update&cat=${productName}&productname=${prod.getProduct_name()}&price=${prod.getPrice()}&path=${prod.getPath()}"><button>Update !!!!</button></a>
    				<a href="AdminServlet?id=delete&cat=${productName}&name=${prod.getProduct_name()}"><button>Delete X</button></a>
    					</div>
    				</div>
    				
    				
    					
    					</c:forEach>
    			</div>
    			</div>
    			</section>
   


	
	
	
	
	
	
	
	
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