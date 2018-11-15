<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--<%@page import="sun.awt.EmbeddedFrame"%>-->
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>
	<h3>Ride details</h3>
	<%-- <c:if test="${requestScope.message !=null}">
	NOTE : ${message}
</c:if> --%>
	<c:if
		test="${requestScope.rideList !=null and
 not empty requestScope.rideList}">
		<table border="2" cellpadding="2">
			<tr>
				<td>Vehicle Registration Number</td>
				<td>Username</td>
				<td>Color</td>
				<td>Model</td>
				<td>License</td>
				<td>Source</td>
				<td>Destination</td>
				<td>Number of seats</td>
			</tr>
			<c:forEach items="${requestScope.rideList}" var="e">
				<tr>
					<td>${e.vregno}</td>
					<td>${e.uname}</td>
					<td>${e.color}</td>
					<td>${e.model}</td>
					<td>${e.license}</td>
					<td>${e.source}</td>
					<td>${e.destination}</td>
					<td>${e.seats}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>



</body>
</html>