<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<title>userRowEditer</title>
</head>
<body>


	<form action="">

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="firstname">First Name:</label> <input type="text" class="form-control"
					id="firstname" name="firstName">

			</div>
			<div class="col-md-4 mb-3">
				<label for="lastname">Last Name:</label> <input type="text" class="form-control" id="lastname"
					name="LastName">

			</div>
			<div class="col-md-4 mb-3">
				<label for="phone">Phone Number:</label> <input type="text" class="form-control" id="phone"
					name="phone">



			</div>
		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="email">Email:</label> <input type="text" class="form-control" id="email"
					name="email">

			</div>
			<div class="col-md-4 mb-3">
				<label for="birthdate"> Date of birth:</label> <input type="date" class="form-control"
					id="birthdate" name="birthdate">
			</div>
			<div class="col-md-4 mb-3">
				<label for="birthplace"> Birth place:</label> <input type="text" class="form-control"
					id="birthplace" name="birthplace">
			</div>
		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="password"> Password:</label> <input type="password" class="form-control"
					id="password" name="password">
			</div>

			<div class="col-md-4 mb-3">
				<label for="license"> Driving license:</label> <input type="text" class="form-control"
					id="license" name="license">
			</div>

			<div class="col-md-4 mb-3">
				<label for="expiration">Expiry of the driving licence:</label> <input type="date"
					class="form-control" id="expiration" name="expirationLicense">
			</div>


		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="card"> Credit card:</label> <input type="number" class="form-control" id="card"
					name="creditCard" max="9999999999999999">
			</div>

			<div class="col-md-4 mb-3">
				<label for="cvv"> Cvv:</label> <input type="number" class="form-control" id="cvv" name="cvv"
					max="999">
			</div>

			<div class="col-md-4 mb-3">
				<label for="expiration_c"> Credit card expiration:</label> <input type="date"
					class="form-control" id="expiration_c" name="expirationCard">
			</div>


		</div>

		<div>
			<button type="submit">Register</button>
		</div>



	</form>











</body>
</html>