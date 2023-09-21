<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./assets/css/signup.css" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up</title>
</head>
<body>
	<h1>Sign Up</h1>
	<form action="./SignUpServlet" method="POST">
		<label for="name">Name:</label> <input type="text" id="name"
			name="name" required><br>
		<br> <label for="email">Email:</label> <input type="email"
			id="email" name="email" required><br>
		<br> <label for="blood-group">Blood Group:</label> <select
			id="blood-group" name="blood_group">
			<option value="A+">A+</option>
			<option value="A-">A-</option>
			<option value="B+">B+</option>
			<option value="B-">B-</option>
			<option value="AB+">AB+</option>
			<option value="AB-">AB-</option>
			<option value="O+">O+</option>
			<option value="O-">O-</option>
		</select><br>
		<br> <label for="phone">Phone Number:</label> <input type="tel"
			id="phone" name="phone" required><br>
		<br> <label for="gender">Gender:</label> <input type="radio"
			id="male" name="gender" value="Male" required> <label
			for="male">Male</label> <input type="radio" id="female" name="gender"
			value="Female" required> <label for="female">Female</label><br>
		<br> <label for="password">Password:</label> <input
			type="password" id="password" name="password" required><br>
		<br> <button type="submit" >Sign Up</button>
	</form>
</body>
</html>
