<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link rel="stylesheet" href="./assets/css/donateblood.css" />
</head>
<body>

	<div class="container">

		<header>Donor Registration</header>
		<!-- <form> -->
		<form action="./DonorRegister" method="post">
			<div class="form first">
				<div class="details personal">

					<div class="fields">
						<div class="input-field">
							<label for="name">Full Name</label> <input type="text" id="name"
								name="name" pattern="[A-Za-z]{2,32}"
								placeholder="Enter your name" required>
						</div>

						<div class="input-field">
							<label for="number">Mobile Number</label> <input type="tel"
								id="number" title="Enter only numbers" pattern="[0-9]{10}"
								placeholder="Enter mobile number" name="number" required>
						</div>

						<div class="input-field">
							<label for="blood-group">Blood Group</label> <select
								id="blood-group" name="blood_group">
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

						<div class="input-field">
							<label for="address">Address </label> <input type="text"
								id="address" name="address" placeholder="Enter your Address"
								required>
						</div>

						<div class="input-field">
							<label for="district">District</label> <select id="district"
								name="district" required>
								<option>Select</option>
								<option>Ariyalur</option>
								<option>Chennai</option>
								<option>Coimbatore</option>
								<option>Chengalpattu</option>
								<option>Cuddalore</option>
								<option>Dharmapuri</option>
								<option>Dindigul</option>
								<option>Erode</option>
								<option>Kallakurichi</option>
								<option>Kancheepuram</option>
								<option>Karur</option>
								<option>Krishnagiri</option>
								<option>Madurai</option>
								<option>Mayiladuthurai</option>
								<option>Nagapattinam</option>
								<option>Nagercoil</option>
								<option>Namakkal</option>
								<option>Perambalur</option>
								<option>Pudukkottai</option>
								<option>Ramanathapuram</option>
								<option>Ranipet</option>
								<option>Salem</option>
								<option>Sivagangai</option>
								<option>Tenkasi</option>
								<option>Thanjavur</option>
								<option>Theni</option>
								<option>Thiruvallur</option>
								<option>Thiruvarur</option>
								<option>Thoothukudi</option>
								<option>Trichirappalli</option>
								<option>Thirunelveli</option>
								<option>Tirupathur</option>
								<option>Tiruppur</option>
								<option>Tiruvannamalai</option>
								<option>The Nilgiris</option>
								<option>Vellore</option>
								<option>Viluppuram</option>
								<option>Virudhunagar</option>
							</select>
						</div>

						<div class="input-field">
							<label for="state">State</label> <select id="state" name="state">
								<option>Select</option>
								<option>Tamil Nadu</option>
							</select>
						</div>

						<div class="input-field">
							<label for="age">Age</label> <input type="number"
								pattern="[0-9]{2}" id="age" name="age"
								placeholder="Enter your age" required>
						</div>
						<div class="input-field">
							<label for="email">Email</label> <input type="email" id="email"
								name="email" placeholder="Enter your email" required>
						</div>

						<div class="input-field">
							<label>Gender:</label> <input type="radio" id="male"
								name="gender" value="Male" required> <label for="male">Male</label>
							<input type="radio" id="female" name="gender" value="Female"
								required> <label for="female">Female</label>
						</div>
					</div>
				</div>
			</div>
			<div class="buttons">
				<a href="./index.jsp" id="back_button">Back</a>
				<button type="submit" class="submitbtn">Submit</button>
			</div>
		</form>
	</div>


</body>