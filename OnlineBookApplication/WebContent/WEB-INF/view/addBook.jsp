<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>




</head>
<body>


	<h3 align="center">Add book</h3>
	<hr>
	<br>
	<br>

	<form:form action="saveBook" method="POST" modelAttribute="book">
		<form:hidden path="bookId" />
		<table align="center" border="2">
			<tbody>
				<tr>
					<td><label>Book Name</label></td>
					<td><form:input path="bookName" name="bookName" /></td>
				</tr>

				<tr>
					<td><label>Author</label></td>
					<td><form:input path="author" name="author" /></td>
				</tr>

				<tr>
					<td><label>Price</label></td>
					<td><form:input path="price" name="price" /></td>
				</tr>


				<tr>
					<td><input type="reset" value="reset"></td>
					<td><input type="submit" value="Save"></td>
				</tr>

			</tbody>
		</table>
	</form:form>






</body>
</html>