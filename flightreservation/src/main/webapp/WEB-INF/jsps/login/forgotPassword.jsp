<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="updatepassword" method="post">
	 Enter Registered email :<input type="text" name="email" placeholder="Username" required>
	 Enter Registered LastName :<input name="lastName" placeholder="Last Name" type="text">
	<input type="submit" value="update">
	</form>
	${msg} 
</body>
</html>