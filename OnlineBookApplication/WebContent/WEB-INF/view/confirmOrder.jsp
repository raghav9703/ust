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

	
<form:form action="confirmed" method="POST"   > 


	<table border="1" width="80%" align="center">
	
		<section>
 Customer Name : <input type ="text" name= "customername" ><br><br>
Address : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<input type="text"  name= "address" > <br><br>
Phone Number : &nbsp;&nbsp;<input type="tel"  name= "phonenumber" pattern="^\d{10}$" required > 
</section>
	
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

</body>
</html>