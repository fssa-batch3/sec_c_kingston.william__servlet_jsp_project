<%@page import="com.fssa.blooddonation.service.*"%>
<%@page import="com.fssa.blooddonation.model.*"%>
<%@page import="com.fssa.blooddonation.validator.*"%>
<%@page import="com.fssa.blooddonation.Dao.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Requests</title>
<link rel="stylesheet" href="./assets/css/index.css" />
<link rel="stylesheet" href="./assets/css/allbloodreq.css" />
</head>
<body>
	<jsp:include page="./header.jsp"></jsp:include>
	<%
	DonorRequestService donorRequestService = new DonorRequestService(new DonorValidator(), new DonorRegisterDao());
	ArrayList<DonorRegister> allDonor = donorRequestService.getAllDonorRequests();
	%>
	<div class="container">
		<h2>All Blood Requests</h2>

		<table>
			<tr>
				<th>Donor Name</th>
				<th>Mobile Number</th>
				<th>Blood Group</th>
				<th>Address</th>
				<th>District</th>
				<th>State</th>
				<th>Age</th>
				<th>Email</th>
				<th>Gender</th>
			</tr>

			<%
			for (DonorRegister donor : allDonor) {
			%>

			<tr>
				<td><%=donor.getName()%></td>
				<td><%=donor.getMobileNo()%></td>
				<td><%=donor.getBloodtype()%></td>
				<td><%=donor.getAddress()%></td>
				<td><%=donor.getDistrict()%></td>
				<td><%=donor.getState()%></td>
				<td><%=donor.getAge()%></td>
				<td><%=donor.getEmailId()%></td>
				<td><%=donor.getGender()%></td>
			</tr>


			<%
			}
			%>

		</table>
	</div>
</body>
</html>