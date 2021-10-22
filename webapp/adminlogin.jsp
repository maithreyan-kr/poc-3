<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<form action="home.html" method="post">
<button class="btn">home</button></form>
<div class="container"><div class="title"><b>Admin Login</b></div>
	<br/>
	<form action="logincon1" method="post">
	<div class="user-cred">
	<div class="input-box"><span class="cred">Admin Name  : </span><input type="text" name="userName" placeholder="admin name" required></div><br/>
	<div class="input-box"><span class="cred">Password   : </span><input type="password" name="Password" placeholder="enter password" required></div><br/>
	<br/><br/>
	</div>
	<div class="button"><input type="submit" value="Login">
	</div>
</form>

</body>
</html>