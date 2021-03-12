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

	<form:form action="forgetPassword" method="GET" modelAttribute="user">
		<table align="center" border="2">
			<tbody>

				<tr>
					<td><label>Username </label></td>
					<td><form:input path="mobileNumber" /></td>
				</tr>

				<tr>
					<td><label>Email</label></td>
					<td><form:input path="emailAddress" type="text" /></td>
				</tr>

				<tr>
					<td><label>Pin Code</label></td>
					<td><form:input path="pincode" /></td>
				</tr>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Submit"></td>
				</tr>

			</tbody>

		</table>
	</form:form>

</body>
</html>