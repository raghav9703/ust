<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	welcome
	<%-- 
<form:form action="confirmed" method="POST" modelAttribute="order"  > 
<form:hidden path="orderId"/>
<form:hidden path="bookId" value="${book.bookId}" />

		Customer Name <form:input path="customerName" /><br>
		Address<form:input path="address" /><br>
		Phone Number<form:input path="phoneNumber" /><br>

	<table border="1" width="80%" align="center">
	
		<tr>
			<th>Book Name</th>
			<th>Author</th>
			<th>Price</th>
			<th>Quantity</th>
		</tr>
		
		<tr>
			<td>${book.bookName}</td>
			<td>${book.author}</td>
			<td>${book.price}</td>
		</tr>
	</table>
	<input type="button" Value="Confirm"/>
	</form:form>
	<input type="button" value="Cancel" onclick="window.location.href='list';  return false;" />
 --%>
</body>
</html>