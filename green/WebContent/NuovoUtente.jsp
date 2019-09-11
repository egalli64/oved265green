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
@import url(/green/css/NuovoUtente.css);
</style>

<title>New User</title>
</head>
<body>



	<div class="container-fluid">

		<nav class="navbar navbar-expand-lg  ">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="/green/index.jsp">Home
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
	<h2>
		<b><i>Registration</i></b>
	</h2>
	<form action="/green/users/NewUser">
	<!-- <form class="needs-validation" novalidate> -->

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="firstname">First Name:</label> <input type="text"
					class="form-control" id="firstname" name="firstName" required>

			</div>
			<div class="col-md-4 mb-3">
				<label for="lastname">Last Name:</label> <input type="text"
					class="form-control" id="lastname" name="LastName" required>

			</div>
			<div class="col-md-4 mb-3">
				<label for="phone">Phone Number:</label> <input type="text"
					class="form-control" id="phone" name="phone" required>



			</div>
		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="email">Email:</label> <input type="text"
					class="form-control" id="email" name="email" required>

			</div>
			<div class="col-md-4 mb-3">
				<label for="birthdate"> Date of birth:</label> <input type="date"
					class="form-control" id="birthdate" name="birthdate" required>
			</div>
			<div class="col-md-4 mb-3">
				<label
				for="birthplace"> Birth place:</label> <input type="text" class="form-control"
				id="birthplace" name="birthplace" required>
			</div>



		</div>
		
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="password"> Password:</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>

			<div class="col-md-4 mb-3">
				<label for="license"> Driving license:</label> <input type="text" class="form-control"
				id="license" name="license" required>
			</div>
			
<div class="col-md-4 mb-3">
				<label
				for="expiration">Expiry of the driving licence:</label> <input
				type="date" class="form-control" id="expiration" name="expirationLicense" required>
			</div>


		</div>
		
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="card"> Credit card:</label> <input
				type="number" class="form-control" id="card" name="creditCard" max="9999999999999999"
				required>
			</div>

			<div class="col-md-4 mb-3">
				<label for="cvv"> Cvv:</label> <input
				type="number" class="form-control" id="cvv" name="cvv" max="999" required>
			</div>
			
<div class="col-md-4 mb-3">
				<label for="expiration_c"> Credit card expiration:</label> <input
				type="date" class="form-control" id="expiration_c" name="expirationCard" required>
			</div>


		</div>
		
		<div>
			<button type="submit">Register</button>
		</div>
		
		
		
	</form>
	
	
	
	
	
	
	

		
	

</body>
</html>