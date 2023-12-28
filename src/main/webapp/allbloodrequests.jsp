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
	
	RequestService requestService = new RequestService(new BloodReqValidator(), new BloodRequestDao());
	ArrayList<BloodRequest> allBloodRequest = requestService.getAllBloodRequest();
	%>
<div class="container">
	<h2>All Blood Requests</h2> 

	<table>
		<tr>
			<th>Name</th>
			<th>Quantity (in units)</th>
			<th>Blood Group</th>
			<th>Description</th>
			<th>Contact Number</th>
			<th>Request Verification</th>
			<th>Status</th>
			<th>Closed Date</th>

		</tr>

		<%
		for (BloodRequest bloodReq : allBloodRequest) {
		%>

		<tr>
			<td><%=bloodReq.getName()%></td>
			<td><%=bloodReq.getQuantity()%></td>
			<td><%=bloodReq.getBloodtype()%></td>
			<td><%=bloodReq.getDescription()%></td>
			<td><%=bloodReq.getContactNo()%></td>
			<td><%=bloodReq.getVerification()%></td>
			<td><%=bloodReq.getStatus()%></td>
			<td><%=bloodReq.getCloseDate()!=null?bloodReq.getCloseDate():"- - -"%></td>

		</tr>


		<%
		}
		%>

	</table>
	</div>
</body>
</html>