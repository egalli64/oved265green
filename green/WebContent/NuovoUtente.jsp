<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
@import url(./css/NuovoUtente.css);
</style>

<title>New User</title>
</head>
<body>

	<h2>
		<b>Registration</b>
	</h2>

	<br>
	<div class="container-fluid">

		<nav class="navbar navbar-expand-lg  ">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only"></span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/NuovoUtente.jsp ">Sign up</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Price
							list</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About us</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/Admin.jsp">Administrators</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<div id='errorreg'>
		<c:if test="${(resultRegistration == false)}">
			<p>Your email address has already been added to our system</p>
		</c:if>
	</div>
	<br>

	<form action="/green/users/NewUser">

		<div>
			<label for="firstname">First Name:</label> <input type="text"
				id="firstname" name="firstName" required> <br /> <br /> <label
				for="lastname">Last Name:</label> <input type="text" id="lastname"
				name="LastName" required> <br /> <br /> <label for="phone">Phone
				Number:</label> <input type="text" id="phone" name="phone" required>
			<br /> <br /> <label for="email">Email:</label> <input type="text"
				id="email" name="email" required> <br /> <br /> <label
				for="birthdate"> Date of birth:</label> <input type="date"
				id="birthdate" name="birthdate" required> <br /> <br /> <label
				for="password"> Password:</label> <input type="password"
				id="password" name="password" required> <br /> <br /> <label
				for="birthplace"> Birth place:</label> <input type="text"
				id="birthplace" name="birthplace" required> <br /> <br />
			<label for="license"> Driving license:</label> <input type="text"
				id="license" name="license" required> <br /> <br /> <label
				for="expiration">Expiry of the driving licence:</label> <input
				type="date" id="expiration" name="expirationLicense" required>
			<br /> <br /> <label for="card"> Credit card:</label> <input
				type="number" id="card" name="creditCard" max="9999999999999999"
				required> <br /> <br /> <label for="cvv"> Cvv:</label> <input
				type="number" id="cvv" name="cvv" max="999" required> <br />
			<br /> <label for="expiration_c"> Credit card expiration:</label> <input
				type="date" id="expiration_c" name="expirationCard" required>
			<br /> <br />
		</div>
		<div>
			<button type="submit">Register</button>
		</div>

		<br />

	</form>
	<div>
		<a href="/green/index.jsp"><i>Home Page</i></a>
	</div>

</body>
</html>