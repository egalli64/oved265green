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

	<form action="/green/admins/EditUser" method="post">
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<input type="hidden" class="form-control" id="userId" name="id" value="${user.id}">
			</div>
		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="firstname">First Name:</label> <input type="text" class="form-control"
					id="firstname" name="firstName" value="${user.name}">
			</div>
			<div class="col-md-4 mb-3">
				<label for="lastname">Last Name:</label> <input type="text" class="form-control" id="lastname"
					name="LastName" value="${user.lastName}">
			</div>
			<div class="col-md-4 mb-3">
				<label for="phone">Phone Number:</label> <input type="text" class="form-control" id="phone"
					name="phone" value="${user.phoneNumber}">
			</div>
		</div>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="email">Email:</label> <input type="text" class="form-control" id="email"
					name="email" value="${user.mail}">
			</div>
			<div class="col-md-4 mb-3">
				<label for="birthdate"> Date of birth:</label> <input type="date" class="form-control"
					id="birthdate" name="birthdate" value="${user.dateOfBirth}">
			</div>
			<div class="col-md-4 mb-3">
				<label for="birthplace"> Birth place:</label> <input type="text" class="form-control"
					id="birthplace" name="birthplace" value="${user.placeOfbirth}">
			</div>
		</div>
		<div class="col-md-4 mb-3">
			<label for="license"> Driving license:</label> <input type="text" class="form-control"
				id="license" name="license" value="${user.drivingLicense}">
		</div>
		<div class="col-md-4 mb-3">
			<label for="expiration">Expiry of the driving licence:</label> <input type="date"
				class="form-control" id="expiration" name="expirationLicense"
				value="${user.expiringDateDrivingLicense}">
		</div>
		<div>
			<button type="submit">Confirm</button>
		</div>



	</form>











</body>
</html>