<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contacts</title>
</head>
<body>
	<h2>All Contact</h2>
	<table>
	<tr>
		<th>FirstName</th>
		<th>lastName</th>
		<th>email</th>
		<th>mobile</th>
		<th>source</th>
		<th>Billing</th>
	</tr>
	<c:forEach var="contact" items="${contacts}" >
	 <tr>
	 	<td><a href="contactInfo?id=${contact.id}">${contact.firstName}</a></td>
	 	<td>${contact.lastName}</td>
	 	<td>${contact.email}</td>
	 	<td>${contact.mobile}</td>
	 	<td>${contact.source}</td>
	 	<td> <a href="billingForm?contactId=${contact.id}">Billing</a></td>
	 </tr>
	   </c:forEach>
	</table>

</body>
</html>