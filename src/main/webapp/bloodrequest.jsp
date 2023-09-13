<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Request</title>
<link rel="stylesheet" href="./assets/css/index.css" />
<link rel="stylesheet" href="./assets/css/bloodreq.css">
</head>
<body>
	<jsp:include page="./header.jsp"></jsp:include>
	<h1>Blood Request</h1>
	<form action="./BloodRequestServlet" method="post">

		<label for="bloodtype">Blood Type:</label> <select id="bloodtype"
			name="bloodtype" required>
			<option value="A+">A+</option>
			<option value="A-">A-</option>
			<option value="B+">B+</option>
			<option value="B-">B-</option>
			<option value="AB+">AB+</option>
			<option value="AB-">AB-</option>
			<option value="O+">O+</option>
			<option value="O-">O-</option>
		</select><br> <br> <label for="description">Description:</label><br>
		<textarea id="description" name="description" rows="4" cols="50"
			required></textarea>
		<br> <br> <label for="ContactNo">Contact No:</label> <input
			type="text" id="ContactNo" name="contactno" required
			pattern="[0-9]{10}"
			title="Please enter a valid 10-digit phone number"><br>
			
		<br> <label for="Name">Name:</label> <input type="text" id="Name"
			name="name" required><br> <br> 
			<label for="Quantity">Quantity:</label> <input type= "text" id="Quantity"
			name="quantity"pattern="\d{1,50}" max="50" required>
			
		<br> <br> <input type="submit" value="Submit">
	</form>
</body>
</html>