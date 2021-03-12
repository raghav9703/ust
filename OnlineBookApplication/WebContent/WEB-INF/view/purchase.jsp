<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<table border="1" width="22%" align="center">

		<tr>
			<td>Book Name</td>
			<td>${book.bookName}</td>
		</tr>

		<tr>
			<td>Author</td>
			<td>${book.author}</td>
		</tr>

		<tr>
			<td>Price</td>
			<td>${book.price}</td>
		</tr>

		<tr>
			<td>Quantity</td>
			<td><input type="text" name="quantity" /></td>

		</tr>

		<c:url var="confirmPurchase" value="/application/confirmOrder">
			<c:param name="bookId" value="${book.bookId}"></c:param>
		</c:url>

		<tr>
			<td><a href="${confirmPurchase}"><input type="button"
					value="Purchase"></a></td>
			<td><input type="button" value="Cancel"
				onclick="window.location.href='list';  return false;" /></td>
		</tr>


	</table>

</body>
</html>