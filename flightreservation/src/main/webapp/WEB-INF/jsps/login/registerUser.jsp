<html>
<head>
<title>untitled document</title>
<link href="static/css/login.css" type="text/css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style type="text/css">
header {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url('static/image/flight2.jpg');
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
					<li><a href="#">RESERVATION</a></li>
					<li><a href="#">HOW TO BOOK</a></li>
					<li><a href="#">CHECK MORE</a></li>
					<li><a href="loginPage">log in</a></li>


				</ul>
		</nav>
		<div class="signin">
			<form action="registerUser" method="post">
				<h2 style="color: white">Registration</h2><br><br>
				<input name="firstName" placeholder="First Name" type="text"><br>
				<input name="lastName" placeholder="Last Name"  type="text"><br>
				<input name="email" placeholder="E-Mail Address" type="text"><br>
				<input name="password" placeholder="Password" type="password"><br>
				<input name="confirm_password" placeholder="confirmPassword" type="password">
				
				<br><br> <button class="btn btn-danger text-white btn-lg"><b>Register</b></button><br> <br>
				
				
				<br> Don't have account?<a href="loginPage"
					style="font-family: 'play', sans-serif;">&nbsp;Sign In</a>
			</form>
			${msg}
		</div>
	</header>
</body>
</html>
