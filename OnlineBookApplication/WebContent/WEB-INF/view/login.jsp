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
	if(document.contact_form.mobileNumber.value=="")
		{
			alert("Please enter your Mobile Number");
			return false;
		}
	if(document.contact_form.password.value=="")
	{
		alert("Please enter your password");
		return false;
	}	
}
</script>

</head>
<body>
	<h1 align="center">Welcome to Login Page</h1>
	<hr>
	<br>
	<br>
	<h3 align="right">
		<input type="button" value="Register"
			onclick="window.location.href='addUser';  return false;" />
	</h3>

	<form:form action="loginUser" method="POST" modelAttribute="user" onsubmit="return validation()" name="contact_form">
		<table align="center" border="2">
			<tbody>

				<tr>
					<td><label>Username </label></td>
					<td><form:input path="mobileNumber" /></td>
				</tr>

				<tr>
					<td><label>Password</label></td>
					<td><form:input path="password" type="password" /></td>
				</tr>

				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Login"></td>
				</tr>

			</tbody>

		</table>
	</form:form>
	${error}

</body>
</html>