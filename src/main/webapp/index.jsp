<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DONOR</title>
<link rel="stylesheet" href="./assets/css/index.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<!-- <link rel="stylesheet" href="assets/css/style.css" /> -->
<link rel="stylesheet" href="./assets/css/common.css">
</head>
<body>
	<!--navbar-->
	<jsp:include page="./header.jsp"></jsp:include>
	<main>
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
					<%
					String sessionuser = (String) request.getSession(false).getAttribute("currentuser");

							if (sessionuser == null) {
					%>


				<a href="./login.jsp">Donor Register</a>

				<a href="./login.jsp">Request Blood</a>
				
				<%
				} else {
				%>

				<a href="./donateblood.jsp">Donor Register</a>

				<a href="./bloodrequest.jsp">Request Blood</a>
				


				<%
				}
				%>
				</div>
			</div>
		</div>
		<!--2-->
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
						<li>Do carry your indentification forms eg.driver's license.
						</li>
						<li>Drink 2 cups of water before donating blood.</li>
						<li>Wear a half sleeve shirt so that you can easily roll it
							up avoid fast food before donation.</li>
					</ul>
				</div>

				<div>
					<h1 class="num">03</h1>
				</div>
				<div class="tip">
					<h3>After the donation</h3>
					<hr class="hr">
					<ul>
						<li>Reward yourself with a snack as refreshment immediately.
						</li>
						<li>Drink more liquids over a period of 24 hours.</li>
						<li>Remove the bandage after few hours</li>
						<li>Don't do vigorous workout & give your body rest.</li>
					</ul>
				</div>

			</div>
		</div>
		<!--3-->
		<div class="container2">
			<div class="container2_left">
				<img src="./assets/img/search img.jpg" alt="img">
			</div>
			<div class="container2_right">
				<h2>
					Search For The <span>Hospital</span> Near By Your Area
				</h2>
				<p>press the blood availability button to find blood available
					in the hospital.fill the input that are given then press the submit
					button to find the hospital near by your area so that we can save
					time also it helps the person life. if you want to be a one of the
					donor,register the form now and be a donor.</p>
			</div>
		</div>
		<!--4-->
		<div class="container3">
			<div class="container3_right">
				<img src="./assets/img/search img2.jpg" alt="img">
			</div>

			<div class="container3_left">
				<h2>Create the perfect Donation Experience</h2>
				<p>he gift of blood helps save lives, and the demand for blood
					and blood products is great. Every 2 seconds, someone in the India
					needs blood, and more than 50,000 units of blood are needed each
					year at donor website alone. Learn more about blood types and
					compatibility, different ways to donate and the need for lifesaving
					blood so you can make an informed decision about donation.</p>
			</div>
		</div>
		<!--5-->
		<div class="container4">
			<div class="container4_left">
				<img src="./assets/img/search img3.jpg" alt="img">
			</div>
			<div class="container4_right">
				<h2>Create the perfect Donation Experience</h2>
				<p>Our donations forms and fundraising pages provide a powerful
					tool to collect online donations. Use our form builder to create
					multi-step forms, offer payment options such as Apple Pay or
					Paypal, and customize everything from eCards to confirmation
					screens. Plus, embedding on tools like Wordpress, Squarespace, and
					Webflow couldn’t be easier.</p>
			</div>
		</div>
		<!--5-->
		<div class="container5">
			<div class="container5_right">
				<img src="./assets/img/donor.gif" alt="img">
			</div>
			<div class="container5_left">
				<h2>Create the perfect Donation Experience</h2>
				<p>Our donations forms and fundraising pages provide a powerful
					tool to collect online donations. Use our form builder to create
					multi-step forms, offer payment options such as Apple Pay or
					Paypal, and customize everything from eCards to confirmation
					screens. Plus, embedding on tools like Wordpress, Squarespace, and
					Webflow couldn’t be easier.</p>
			</div>
		</div>
		<!--6-->
		<div class="container6">
			<div class="content">
				<h2>
					<span>On average, Donor forms convert</span> 28%<br> <span>more
						donors</span>
				</h2>
			</div>
			<div class="btn">
				<a href="pages/signup.html">Get Blood</a>
			</div>
		</div>
		<!--7-->
	</main>
	<div class="container7">
		<h2>Donor makes your work easy</h2>
		<div class="cont7_images_head">
			<div class="cont7_images">
				<img src="./assets/img/img1.png" alt="img"> <img
					src="./assets/img/rating.png" alt="img">
			</div>
			<div class="cont7_images">
				<img src="./assets/img/img2.png" alt="img"> <img
					src="./assets/img/rating.png" alt="img">
			</div>
			<div class="cont7_images">
				<img src="./assets/img/img3.png" alt="img"> <img
					src="./assets/img/rating.png" alt="img">
			</div>
		</div>
		<div class="para">
			<p>
				There are no substitutes for blood, platelets or plasma—they cannot
				be manufactured.<br> Patients in need of blood or blood
				products must rely on donations from people like you.<br> Those
				who are hesitant about donating blood for the first time often find
				that<br> the donation process is easy and that saving lives is
				deeply gratifying.
			</p>
		</div>
	</div>

	<!--7-->
	<div class="container8">
		<div class="flex">
			<div class="cont8_left">
				<h2>
					Recent Updates and<br> Resources
				</h2>
				<p>Take a look at our recent updates and resources to help you
					get started.</p>
			</div>
			<div class="cont8_rightmain">
				<div class="cont8_right">
					<p>Just 1 donation can save up to 3 lives.</p>
				</div>
				<div class="cont8_right">
					<p>Type O-negative whole blood can be transfused to people with
						any blood type.</p>
				</div>
				<div class="cont8_right">
					<p>The average adult has about 10 pints of blood, but a typical
						whole-blood donation is only 1 pint.</p>
				</div>
			</div>
		</div>
	</div>
	</div>

	<footer>
		<img src="./assets/img/logo.png" alt="logo" alt="logo">
		<p>
			Donate atleast once in the year. <br> Most blood donors are
			volunteers.But you may also donate blood several weeks before having
			surgery. so that your blood is available in case you need a
			transfusion. Donating blood for yourself is called an autologous
			donation.
		</p>
		<div class="footericons">
			<!-- <img src="assets/images/logo/fb logo.png" alt="fb logo"> -->
			<img src="./assets/img/instaicon.webp" alt="insta logo"> <img
				src="./assets/img/twiticon.png" alt="twitter logo"> <img
				src="./assets/img/teleicon.png" alt="telegram logo">
			<!-- <img src="assets/images/logo/youtube logo.png" alt="youtube logo"> -->
		</div>
		<div class="footerlast">
			<p>Copyrights @2022 Developed by kingston</p>
			<div class="footernav">
				<a href="index.html">Home</a> <a
					href="pages/blood_availability.html">Blood Availability</a> <a
					href="pages/donor_availability.html">Donor Availability</a> <a
					href="pages/donor_registration.html">Registration</a>
				<!-- <a href="pages/matches.html">Matches</a> -->
			</div>
		</div>
	</footer>
</body>
</html>