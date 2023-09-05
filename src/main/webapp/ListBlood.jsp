<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import=" java.util.*" %>
<%@ page import ="com.fssa.blooddonation.model.BloodRequest" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blood Requests</title>
</head>
<body>
    <h1>Blood Requests</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Blood Type</th>
            <th>Description</th>
            <th>Contact No</th>
            <th>Request Date</th>
            <th>Verified</th>
            <th>Status</th>
            <th>Closed Date</th>
            
        </tr>
        
        <%
				List<BloodRequest> currencyList = (List<BloodRequest>) request.getAttribute("requestList");
				if (currencyList != null) {
					for (BloodRequest ele : currencyList) {
				%>
				<tr>
					<td><%=ele.getId()%></td>
					<td><%=ele.getBloodtype()%></td>
					<td><%=ele.getDescription()%></td>
					
					<td><%=ele.getContactNo()%></td>
					<td><%=ele.getReqDate()%></td>
					<td><%=ele.getVerification()%></td>
					<td><%=ele.getStatus()%></td>
					<td><%=ele.getCloseDate()%></td>
				</tr>
				<%
				}
				}
				%>
        
    </table>
</body>
</html>
