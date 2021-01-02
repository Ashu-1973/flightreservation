<html>
<head>
<title>untitled document</title>
<link href="static/css/login.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url('static/image/flight1.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100vh;
}
</style>


</head>
<body>
	<header>
		<nav>
			<div class="row clearfix">

				<ul class="main-nav animated slideInDown">
					<li><a href="#">Reservation</a></li>
					<li><a href="#">how to book</a></li>
					<li><a href="#">check more</a></li>
					<li><a href="showReg">Register</a></li>


				</ul>
		</nav>
		<div class="signin">
			<form action="login" method="post">
				<h2 style="color: white">Log In Here</h2><br><br>
				<input type="text" name="email" placeholder="Username" required><br><br>
				<input type="password" name="password" placeholder="password"
					required><br>
				<br> <button class="btn btn-danger text-white btn-lg"><b>LOG IN</b></button><br> <br><br><br>
				<div id="container">
					<a href="re.html" style="margin-right: 0px; font-size: 16px; font-family: Tahoma, Geneva, sans-serif;">Reset Password</a> 
						<a href="forgot" style="margin-right: 0px; font-size: 16px; font-family: Tahoma, Geneva, sans-serif;">Forgot Password</a>
				</div>
				<br>
				<br>
				
				<br> Don't have account?<a href="showReg"
					style="font-family: 'play', sans-serif;">&nbsp;Sign up</a>
			</form>
			${msg}
		</div>
	</header>
</body>
</html>
