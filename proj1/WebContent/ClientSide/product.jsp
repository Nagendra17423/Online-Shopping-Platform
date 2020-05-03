<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="base.jsp"></c:import>



 <section class="ftco-section">
    	<div class="container">
		<div class="row justify-content-center mb-3 pb-3">
				
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading"><%=request.getAttribute("category") %> Products</span>
            <h2 class="mb-4">Our Products</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
          </div>
        </div>   		
    	</div>

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
    						
	    					<a href="AdminServlet?id=buy&check=<%=request.getContextPath()%>&cat=${productName}&productname=${prod.getProduct_name()}&price=${prod.getPrice()}&path=${prod.getPath()}"><button>Buy !!!!</button></a>
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