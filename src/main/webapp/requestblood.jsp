<%@page import="com.fssa.blooddonation.model.BloodRequest"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>request blood</title>
<link rel="stylesheet" href="./assets/css/index.css" />
<link rel="stylesheet" href="./assets/css/allbloodreq.css" />
</head>
<body>
	<jsp:include page="./header.jsp"></jsp:include>
	<%
	ArrayList<BloodRequest> bloodReqDetails= new ArrayList<BloodRequest>();
	if(request.getAttribute("bloodReqDetails")!=null){
		 bloodReqDetails =(ArrayList<BloodRequest>)request.getAttribute("bloodReqDetails");
	}
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
		for(BloodRequest bloodRequest: bloodReqDetails){
		%>
		<tr>
			<td><%=bloodRequest.getName() %></td>
			<td><%=bloodRequest.getQuantity() %></td>
			<td><%=bloodRequest.getBloodtype()%></td>
			<td><%=bloodRequest.getDescription()%></td>
			<td><%=bloodRequest.getContactNo()%></td>
			<td><%=bloodRequest.getVerification()%></td>
			<td><%=bloodRequest.getStatus()%></td>
			<td><%=bloodRequest.getCloseDate()%></td>
		</tr>
		<%
		}
		%>
	</table>
	</div>
</body>
</html>