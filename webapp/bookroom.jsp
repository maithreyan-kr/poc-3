<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>room booking</title>
<link rel="stylesheet" href="book.css">
</head>
<body>

<form action="home.html" method="post">
<button class="btn">home</button></form>
	<div class="container">
		<div class="container-time">
			<h2 class="heading">Food Timings at MiGhTy</h2>
			<h3 class="heading-days">Monday-Friday</h3>
			<p>7am - 11:30am (Break-fast)</p>
			<p>12pm - 3:30pm (Lunch)</p>
			<p> 5pm - 11pm (Dinner)</p>
			
			<h3 class="heading-days">Saturday and Sunday</h3>
			<p>9am - 11:30am (Break-fast)</p>
			<p>1pm - 3:30pm (Lunch)</p>
			<p>6:30pm - 11:30pm(Dinner)</p>
			
			<hr>
			
			<h4 class="heading-phone">call us : (044) 2456 2456</h4>
		
		</div>
	<div class = "container-form">
		<form action="bookconnect.jsp" method="post">
			<h2 class="heading heading-yellow">Book Your Room</h2>
			
			<div class="form-field">
				<p>your name</p>
				<input type="text" name="yname" placeholder="enter your name" required>
			</div>
			<div class="form-field">
				<p>phone number</p>
				<input type="text" name="phnum" placeholder="enter your ph. number" required>
			</div>
			<div class="form-field">
				<p>check-in date</p>
				<input type="date" name="cid" placeholder="" required>
			</div>
			<div class="form-field">
				<p>check-out date</p>
				<input type="date" name="cod"placeholder="" required>
			</div>
			<div class="form-field">
				<p>select room type</p>
				<select name="select" id="#" required>
					<option value="-">-</option>
					<option value="1">Super</option>
					<option value="2">Ultra</option>
					<option value="3">Deluxe</option>
					<option value="4">Premium</option>
					<option value="5">Posh</option>
				</select>
			</div>
			<div class="form-field">
				<p>number of guests</p>
				<select name="select1" id="#" required>
					<option value="-">-</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="5">6</option>
					<option value="5">7</option>
					<option value="5">8</option>
					<option value="5">9</option>
				</select>
			</div>
			
			
			<button class="button">Submit</button>
		</form>
		
	</div>
	</div>

</body>
</html>