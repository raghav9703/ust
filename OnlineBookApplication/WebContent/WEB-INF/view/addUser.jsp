<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<script type="text/javascript">
function validation(docName)
{
	var password = docName.registerationForm.password.value;
	if(password=="")
	{
		alert("Enter a password");
		return false;
	}
	if(password.length<4 || password.match(/[a-z]/g) == null ||password.match(/[A-Z]/g) ==null||password.match(/[0-9]/g) == null ){
		alert("Enter a Password .must contain At least ONE uppercase & lowercase character & ONE Digit & Length greater-than 5.");
		return false;
	}
	if(docName.registerationForm.mobileNumber.value.length != 10)
	{
		alert("Enter a valid mobile number");
		return false;
	}
	if(docName.registerationForm.address.value.length <= 3)
	{
		alert("Enter address. Length must be greater-than 3 ");
		return false;
	}
}
</script>




</head>
<body>

	<h3 align="center">Welcome to Registeration Page</h3>
	<hr>
	<br>
	<br>


	<form:form action="saveUser" method="POST" modelAttribute="user"
		onsubmit="return validation()" name="registerationForm">
		<table align="center" border="2">
			<tbody>
				<tr>
					<td><label>Mobile Number </label></td>
					<td><form:input path="mobileNumber" name="mobileNumber" /></td>
				</tr>

				<tr>
					<td><label>Password</label></td>
					<td><form:input path="password" type="password"
							name="password" /></td>
				</tr>

				<tr>
					<td><label>Email Address</label></td>
					<td><form:input path="emailAddress" type="emailAddress"
							name="emailAddress" /></td>
				</tr>

				<tr>
					<td><label>Address</label></td>
					<td><form:textarea path="addressLine1" rows="5" cols="30" /></td>
				</tr>

				<tr>
					<td><label>Address</label></td>
					<td><form:textarea path="addressLine2" rows="5" cols="30" /></td>
				</tr>

				<tr>
					<td><label>City</label></td>
					<td><form:input path="city" name="city" /></td>
				</tr>

				<tr>
					<td><label>Pin Code</label></td>
					<td><form:input path="pincode" name="pincode" /></td>
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