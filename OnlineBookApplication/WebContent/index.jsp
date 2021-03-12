<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<input type="button" value="Add Book"
		onclick="window.location.href='application/addBook';  return false;" />
	<input type="button" value="Add User"
		onclick="window.location.href='application/addUser';  return false;" />
	<input type="button" value="Login"
		onclick="window.location.href='application/login';  return false;" />
	<input type="button" value="Forget Password"
		onclick="window.location.href='application/forgetPass';  return false;" />

	<hr>

	<%-- <% response.sendRedirect("application/list"); %> --%>

</body>
</html>
