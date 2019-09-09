<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
@import url(/green/css/Admin.css);
</style>
<title>Admin</title>
</head>
<body>
	<div class="jumbotron card card-image" style="background-image: url(/green/pic/audi.jpg);">
		<div class="text-white text-center py-5 px-4">
			<div>
				<h2>
					<i><b>Admin Login</b></i>
				</h2>

				<div id='errorlogin'>
					<c:if test="${logError}">
						<p>User names or password not valid. Try again</p>
					</c:if>
				</div>

				<form action="/green/admins/AdminLogIn" method="post">

					<div>

						<label for="firstname">First Name:</label> <input type="text" id="firstname" name="firstname">

						<br> <br> <label for="lastname">Last Name:</label> <input type="text" id="lastname"
							name="lastname"> <br> <br> <label for="password">Password:</label> <input
							type="password" id="password" name="password"> <br> <br>

					</div>
					<div>
						<button type="submit">Login</button>
					</div>


					<div>
						<a href="/green/index.jsp"><i>Home Page</i></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>