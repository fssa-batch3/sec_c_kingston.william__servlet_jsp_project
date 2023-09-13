<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./assets/css/index.css" />
<link rel="stylesheet" href="./assets/css/donateblood.css" />
<title>User Information Form</title>

</head>
<body>

	<jsp:include page="./header.jsp"></jsp:include>


	<div class="container">
		<h1>Donor Registration</h1>
		<form action="./DonorRegister" method="post">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="number">Number:</label> <input type="text" id="number"
					name="number" required>
			</div>
			<div class="form-group">
				<label for="blood-group">Blood Group:</label>
					<select id="blood-group" name="blood_group" required>
				<option value="A+">A+</option>
				<option value="A-">A-</option>
				<option value="B+">B+</option>
				<option value="B-">B-</option>
				<option value="AB+">AB+</option>
				<option value="AB-">AB-</option>
				<option value="O+">O+</option>
				<option value="O-">O-</option>
				</select>
			</div>
			<div class="form-group">
				<label for="address">Address:</label> <input type="text"
					id="address" name="address" required>
			</div>

			<div class="form-group">
				<label for="district">District:</label> <select id="district"
					name="district" required>
					<option value="Coimbatore">Coimbatore</option>
					<option value="Chennai">Chennai</option>
					<option value="Madurai">Madurai</option>
					<!-- Add more states as needed -->
				</select>
			</div>
			<div class="form-group">
				<label for="state">State:</label> <select id="state" name="state"
					required>
					<option value="Tamil Nadu">Tamil Nadu</option>
				</select>
			</div>
			<div class="form-group">
				<label for="age">Age:</label> <input type="number" id="age"
					name="age" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label>Gender:</label> <input type="radio" id="male" name="gender"
					value="Male" required> <label for="male">Male</label> <input
					type="radio" id="female" name="gender" value="Female" required>
				<label for="female">Female</label>
			</div>
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>
