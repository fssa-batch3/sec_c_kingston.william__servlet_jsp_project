<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./assets/css/index.css" />
<title>Side Navbar</title>

</head>
<body>

	<jsp:include page="./header.jsp"></jsp:include>

	<h2>Blood Bank</h2>

	<div class="container1">
		<div class="container1_left">
			<img src="./assets/img/doantion img2.jpg" alt="img">
		</div>
		<div class="container1_right">
			<h1>
				Think of giving not as a duty, but as a <span> Privilege</span>
			</h1>
			<p>Every two seconds someone needs blood. More than 38,000 blood
				donations are needed every day. A total of 30 million blood
				components are transfused each year. The average red blood cell
				transfusion is approximately 3 pints.</p>
			<div class="donate_get_blood">
				<a href="pages/donor_registration.html">Donor Register</a> <a
					href="pages/hospital_registration.html">Hospital Register</a>
			</div>
		</div>
	</div>



	<div class="container_tips">
		<div class="tips_head">
			<h1>Tips</h1>
			<h2>
				Here are some tips to put your mind at ease during the <br>blood
				donation process
			</h2>
		</div>
		<div class="tips">
			<div>
				<h1 class="num">01</h1>
			</div>
			<div class="tip">
				<h3>The day before</h3>
				<hr class="hr">
				<ul>
					<li>Have an iron-rich diet such as beans,spinach or
						meat,poultry.</li>
					<li>Have a proper sleep of at least 8 hours.</li>
					<li>Include more liquids in your diet</li>
				</ul>
			</div>

			<div>
				<h1 class="num">02</h1>
			</div>
			<div class="tip">
				<h3>On the Donation day</h3>
				<hr class="hr">
				<ul>
					<li>Do carry your indentification forms eg.driver's license.</li>
					<li>Drink 2 cups of water before donating blood.</li>
					<li>Wear a half sleeve shirt so that you can easily roll it up
						avoid fast food before donation.</li>
				</ul>
			</div>

			<div>
				<h1 class="num">03</h1>
			</div>
			<div class="tip">
				<h3>After the donation</h3>
				<hr class="hr">
				<ul>
					<li>Reward yourself with a snack as refreshment immediately.</li>
					<li>Drink more liquids over a period of 24 hours.</li>
					<li>Remove the bandage after few hours</li>
					<li>Don't do vigorous workout & give your body rest.</li>
				</ul>
			</div>

		</div>
	</div>
</body>
</html>
