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
		<h1>User Information Form</h1>
		<form action="#" method="post">
			<div class="form-group">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="number">Number:</label> <input type="number" id="number"
					name="number" required>
			</div>
			<div class="form-group">
				<label for="blood-group">Blood Group:</label> <input type="text"
					id="blood-group" name="blood-group" required>
			</div>
			<div class="form-group">
				<label for="address">Address:</label> <input type="text"
					id="address" name="address" required>
			</div>
			<div class="form-group">
				<label for="state">State:</label> <select id="state" name="state"
					required>
					<option value="state1">State 1</option>
					<option value="state2">State 2</option>
					<option value="state3">State 3</option>
					<!-- Add more states as needed -->
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
					value="male" required> <label for="male">Male</label> <input
					type="radio" id="female" name="gender" value="female" required>
				<label for="female">Female</label>
			</div>
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>
