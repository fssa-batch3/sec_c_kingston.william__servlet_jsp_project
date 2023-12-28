
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.fssa.blooddonation.model.*"%>
<%@ page import="com.fssa.blooddonation.enums.*"%>
<%@page import="com.fssa.blooddonation.Dao.UserDao"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DONOR</title>
<link rel="stylesheet" href="./assets/css/donorprofile.css" />
<link rel="stylesheet" href="./assets/css/index.css" />

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="../assets/css/common.css">
</head>
<body>
	<%
	String email = (String) request.getSession(false).getAttribute("currentuser");
	System.out.println(email + "locate");
	User user = UserDao.getUserByEmail(email);
	%>


	<jsp:include page="./header.jsp"></jsp:include>
	<div class="cont1">
		<div class="cont1_left">
			<img src="./assets/img/profile_image.jpg" alt="img">
		</div>
		<div class="cont1_right">
			<h2>
				<span class="orange">P</span>rofile
			</h2>
			<form action="<%=request.getContextPath()%>/logout" method="get"> 
			 <button value="submit" class="Logoutbtn">logout</button>
				</form>
			<div class="details">
				<div class="detail">
					<p>Full name</p>
					<p id="full_name" full_name="name"><%=user.getName() %></p>
				</div>

				<div class="detail">
					<p>Email id</p>
					<p id="email_id" email_id="email"><%=user.getEmail() %></p>
				</div>
				<div class="detail">
					<p>Gender</p>
					<p id="gender" gender="gender"><%=user.getGender() %></p>
				</div>
				<div class="detail">
					<p>Phone number</p>
					<p id="ph_no" phone_number="phonenumber"><%=user.getPhoneNo() %></p>
				</div>

				<div class="detail">
					<p>Blood group</p>
					<p id="blood_group" blood_group=bloodgroup><%=user.getBloodGroup() %></p>
				</div>
				<div class="detail">
					<p>
						<span class="red">In-Active</span>/<span class="green">Active</span>
					</p>
					<input type="checkbox" id="status" disabled> <label
						for="status">Toggle</label>
				</div>
			</div>
			<img src="./assets/img/save_button.png" alt="img" id="save_button"
				class="not_view"> <img src="./assets/img/edit_button.jpg"
				alt="img" id="edit_button" class="view">
		</div>
	</div>
	
	
	
</body>
</html>
