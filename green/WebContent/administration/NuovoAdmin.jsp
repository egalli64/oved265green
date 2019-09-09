<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>
		<i><b>New Admin</b></i>
	</h2>
	<hr>
	<br>

	<div id='errorreg'>
		<c:if test="${(resultAdd == false)}">
			<p>This email address has already been added to our system</p>
		</c:if>
	</div>
	<br>

	<form action="/green/admins/NewAdmin">
	
	<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="firstname">First Name:</label> <input type="text" class= "form-control" id="firstname" name="firstName"
				required>
				</div>
				
			<div class="col-md-4 mb-3">
				<label for="lastname">Last Name:</label> <input type="text" class= "form-control"
				id="lastname" name="LastName" required>			
			</div>
</div>

		<div>
			  <label for="email">Email:</label>
			<input type="text" id="email" name="email" required> <br /> <br /> <label
				for="password"> Password:</label> <input type="password" id="password" name="password" required>
			<br /> <br />
		</div>
		<div>
			<button type="submit">Add</button>
		</div>

		<br />

	</form>
	<div>
		<a href="/green/administration/administration.jsp"><i>Administration Home Page</i></a>
	</div>
</body>
</html>