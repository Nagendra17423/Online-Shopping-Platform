<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<title>Login V9</title>
	
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="WEB-INF/AdminSide/images_login/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/vendor_login/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/fonts_login/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/fonts_login/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/vendor_login/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="WAdminSide/vendor_login/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/vendor_login/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/vendor_login/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="AdminSide/vendor_login/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="AdminSide/css_login/util.css">
	<link rel="stylesheet" type="text/css" href="AdminSide/css_login/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('AdminSide/images_login/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form class="login100-form validate-form" action="ClientServlet" method="post">
				<span class="login100-form-title p-b-37">
					Client Sign In
				</span>
				<font color="red"><%=request.getAttribute("msg") %></font>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
					<input class="input100" type="text" name="name" placeholder="username or email">
					<span class="focus-input100"></span>
				</div>
<input type="hidden" name="id" value="login">
				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="password" placeholder="password">
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">
						Sign In
					</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						Or login with
					</span>
				</div>

				<div class="flex-c p-b-112">
					<a href="#" class="login100-social-item">
						<i class="fa fa-facebook-f"></i>
					</a>

					<a href="#" class="login100-social-item">
						<img src="AdminSide/images_login/icons/icon-google.png" alt="GOOGLE">
					</a>
				</div>

				<div class="text-center">
					<a href="#" class="txt2 hov1">
						Sign Up
					</a>
				</div>
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="AdminSide/vendor_login/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="AdminSide/vendor_login/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="AdminSide/vendor_login/bootstrap/js/popper.js"></script>
	<script src="AdminSide/vendor_login/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="AdminSide/vendor_login/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="AdminSide/vendor_login/daterangepicker/moment.min.js"></script>
	<script src="AdminSide/vendor_login/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="AdminSide/vendor_login/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="AdminSide/js_login/main.js"></script>

</body>
</html>