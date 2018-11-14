<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--<%@page import="sun.awt.EmbeddedFrame"%>-->
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>
	<h3>List of Members</h3>
	<c:if test="${requestScope.message !=null}">
	NOTE : ${message}
</c:if>
	<c:if
		test="${requestScope.memberList !=null and
 not empty requestScope.memberList}">
		<table border="2" cellpadding="2">
			<tr>
				<td>Username</td>
				<td>First Name</td>
				<td>Password</td>
				<td>Contact</td>
				<td>Email</td>
			</tr>
			<c:forEach items="${requestScope.memberList}" var="e">
				<tr>
					<td>${e.uname}</td>
					<td>${e.fname}</td>
					<td>${e.password}</td>
					<td>${e.contact}</td>
					<td>${e.email}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>



</body>
</html>