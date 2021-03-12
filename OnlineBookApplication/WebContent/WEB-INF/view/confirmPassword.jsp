<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<script type="text/javascript">
function validation()
{
	
	if(document.registerationForm.password1.value.equals(document.registerationForm.password2.value))
	{
		
		return true;
	}
	else{
		alert("Please match passwords");
		return false;
	}
}
</script>

</head>
<body>
	welcome

	<form:form action="changePassword" method="POST" modelAttribute="user">
		<table align="center" border="2">
			<tbody>

				<tr>
					<td><label>Id: </label></td>
					<td><form:input path="mobileNumber" value="${id}" /></td>
				</tr>

				<tr>
					<td><label>Password </label></td>
					<td><form:input path="password" type="password"
							name="password1" /></td>
				</tr>

				<tr>
					<td><label>Confirm Password</label></td>
					<td><form:input path="password" type="password"
							name="password2" /></td>
				</tr>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Change Password"></td>
				</tr>

			</tbody>

		</table>
	</form:form>

</body>
</html>