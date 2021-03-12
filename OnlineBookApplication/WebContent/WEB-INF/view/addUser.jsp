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
	if(document.contact_form.emailAddress.value=="")
	{
		alert("Please enter your emailAddress");
		return false;
	}
	if(document.contact_form.addressLine1.value=="")
	{
		alert("Please enter your addressLine1");
		return false;
	}
	if(document.contact_form.addressLine2.value=="")
	{
		alert("Please enter your addressLine2");
		return false;
	}
if(document.contact_form.pincode.value=="")
{
	alert("Please enter your pincode");
	return false;
}
	
}


function Password()
{
   
if ( /^[A-Za-z0-9]{5,9}/.test(document.getElementById("password").value))
   {
           document.getElementById("msg5").innerHTML=' ';
document.getElementById("msg1").style.backgroundColor='#e3e3e3';

}
else
{
alert("Invalid password!--should contain characters of length 5-9");

}}


</script>




</head>
<body>

	<h3 align="center">Welcome to Registeration Page</h3>
	<hr>
	<br>
	<br>


	<form:form action="saveUser" method="POST" modelAttribute="user" onsubmit="return validation()" name="contact_form">
		<table align="center" border="2">
			<tbody>
				<tr>
					<td><label>Mobile Number </label></td>
					<td><form:input path="mobileNumber" name="mobileNumber" /></td>
				</tr>

				<tr>
					<td><label>Password</label></td>
					<td><form:input path="password" type="password"
							name="password" onchange="Password()" /></td>
							<span id="msg1"></span>
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