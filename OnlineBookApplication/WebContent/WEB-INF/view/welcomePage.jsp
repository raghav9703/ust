<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1" width="80%" align="center">
		<tr>
			<th>Book Name</th>
			<th>Author</th>
			<th>Price</th>

		</tr>

		<c:forEach var="tempUser" items="${books}">

			<tr>
				<c:url var="purchaseBook" value="/application/purchase">
					<c:param name="bookId" value="${tempUser.bookId}"></c:param>
				</c:url>
			<tr>
				<td><a href="${purchaseBook}">${tempUser.bookName}</a></td>
				<td>${tempUser.author}</td>
				<td>${tempUser.price}</td>
			</tr>

		</c:forEach>

	</table>

</body>
</html>